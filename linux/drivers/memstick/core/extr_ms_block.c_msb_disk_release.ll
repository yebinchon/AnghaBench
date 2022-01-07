; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_disk_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_disk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.msb_data* }
%struct.msb_data = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"block device release\00", align 1
@msb_disk_lock = common dso_local global i32 0, align 4
@msb_disk_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @msb_disk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_disk_release(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.msb_data*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %4 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %5 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i32 0, i32 0
  %6 = load %struct.msb_data*, %struct.msb_data** %5, align 8
  store %struct.msb_data* %6, %struct.msb_data** %3, align 8
  %7 = call i32 @dbg_verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @mutex_lock(i32* @msb_disk_lock)
  %9 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %10 = icmp ne %struct.msb_data* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %13 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %18 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %23 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %28 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %27, i32 0, i32 0
  store %struct.msb_data* null, %struct.msb_data** %28, align 8
  %29 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %30 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @idr_remove(i32* @msb_disk_idr, i32 %31)
  %33 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %34 = call i32 @put_disk(%struct.gendisk* %33)
  %35 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %36 = call i32 @kfree(%struct.msb_data* %35)
  br label %37

37:                                               ; preds = %26, %21
  br label %38

38:                                               ; preds = %37, %1
  %39 = call i32 @mutex_unlock(i32* @msb_disk_lock)
  ret i32 0
}

declare dso_local i32 @dbg_verbose(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.msb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
