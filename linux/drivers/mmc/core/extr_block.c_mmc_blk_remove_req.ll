; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_remove_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_remove_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_blk_data = type { i32, %struct.TYPE_6__, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.mmc_card* }
%struct.mmc_card = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@GENHD_FL_UP = common dso_local global i32 0, align 4
@MMC_BLK_DATA_AREA_BOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_blk_data*)* @mmc_blk_remove_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_remove_req(%struct.mmc_blk_data* %0) #0 {
  %2 = alloca %struct.mmc_blk_data*, align 8
  %3 = alloca %struct.mmc_card*, align 8
  store %struct.mmc_blk_data* %0, %struct.mmc_blk_data** %2, align 8
  %4 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %5 = icmp ne %struct.mmc_blk_data* %4, null
  br i1 %5, label %6, label %58

6:                                                ; preds = %1
  %7 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  store %struct.mmc_card* %10, %struct.mmc_card** %3, align 8
  %11 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %12 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GENHD_FL_UP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %6
  %20 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %21 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i32 @disk_to_dev(%struct.TYPE_7__* %22)
  %24 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %25 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %24, i32 0, i32 4
  %26 = call i32 @device_remove_file(i32 %23, i32* %25)
  %27 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %28 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MMC_BLK_DATA_AREA_BOOT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %19
  %34 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %41 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @disk_to_dev(%struct.TYPE_7__* %42)
  %44 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %45 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %44, i32 0, i32 3
  %46 = call i32 @device_remove_file(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %39, %33, %19
  %48 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %49 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @del_gendisk(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %47, %6
  %53 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %54 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %53, i32 0, i32 1
  %55 = call i32 @mmc_cleanup_queue(%struct.TYPE_6__* %54)
  %56 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %57 = call i32 @mmc_blk_put(%struct.mmc_blk_data* %56)
  br label %58

58:                                               ; preds = %52, %1
  ret void
}

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @disk_to_dev(%struct.TYPE_7__*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_7__*) #1

declare dso_local i32 @mmc_cleanup_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @mmc_blk_put(%struct.mmc_blk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
