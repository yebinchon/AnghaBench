; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.mmc_blk_data = type { i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@block_mutex = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @mmc_blk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_blk_data*, align 8
  %6 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mmc_blk_data* @mmc_blk_get(i32 %9)
  store %struct.mmc_blk_data* %10, %struct.mmc_blk_data** %5, align 8
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = call i32 @mutex_lock(i32* @block_mutex)
  %14 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %15 = icmp ne %struct.mmc_blk_data* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.block_device*, %struct.block_device** %3, align 8
  %23 = call i32 @check_disk_change(%struct.block_device* %22)
  br label %24

24:                                               ; preds = %21, %16
  store i32 0, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FMODE_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %31 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %36 = call i32 @mmc_blk_put(%struct.mmc_blk_data* %35)
  %37 = load i32, i32* @EROFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %29, %24
  br label %40

40:                                               ; preds = %39, %2
  %41 = call i32 @mutex_unlock(i32* @block_mutex)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local %struct.mmc_blk_data* @mmc_blk_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @check_disk_change(%struct.block_device*) #1

declare dso_local i32 @mmc_blk_put(%struct.mmc_blk_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
