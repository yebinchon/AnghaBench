; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_disk_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_disk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.mspro_block_data* }
%struct.mspro_block_data = type { i64 }

@MSPRO_BLOCK_PART_SHIFT = common dso_local global i32 0, align 4
@mspro_block_disk_lock = common dso_local global i32 0, align 4
@mspro_block_disk_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*)* @mspro_block_disk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mspro_block_disk_release(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.mspro_block_data*, align 8
  %4 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %5 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %6 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i32 0, i32 0
  %7 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  store %struct.mspro_block_data* %7, %struct.mspro_block_data** %3, align 8
  %8 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %9 = call i32 @disk_devt(%struct.gendisk* %8)
  %10 = call i32 @MINOR(i32 %9)
  %11 = load i32, i32* @MSPRO_BLOCK_PART_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = call i32 @mutex_lock(i32* @mspro_block_disk_lock)
  %14 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %15 = icmp ne %struct.mspro_block_data* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %18 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %23 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %28 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %33 = call i32 @kfree(%struct.mspro_block_data* %32)
  %34 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %35 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %34, i32 0, i32 0
  store %struct.mspro_block_data* null, %struct.mspro_block_data** %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @idr_remove(i32* @mspro_block_disk_idr, i32 %36)
  %38 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %39 = call i32 @put_disk(%struct.gendisk* %38)
  br label %40

40:                                               ; preds = %31, %26
  br label %41

41:                                               ; preds = %40, %1
  %42 = call i32 @mutex_unlock(i32* @mspro_block_disk_lock)
  ret void
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @disk_devt(%struct.gendisk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.mspro_block_data*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
