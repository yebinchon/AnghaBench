; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i64, i32, i32, i32 }
%struct.mmc_blk_data = type { i64, i64 }

@MMC_TYPE_SD_COMBO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*)* @mmc_blk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_remove(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca %struct.mmc_blk_data*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 2
  %6 = call %struct.mmc_blk_data* @dev_get_drvdata(i32* %5)
  store %struct.mmc_blk_data* %6, %struct.mmc_blk_data** %3, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %8 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %9 = call i32 @mmc_blk_remove_debugfs(%struct.mmc_card* %7, %struct.mmc_blk_data* %8)
  %10 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %11 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %12 = call i32 @mmc_blk_remove_parts(%struct.mmc_card* %10, %struct.mmc_blk_data* %11)
  %13 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 2
  %15 = call i32 @pm_runtime_get_sync(i32* %14)
  %16 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %25 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mmc_claim_host(i32 %26)
  %28 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %29 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @mmc_blk_part_switch(%struct.mmc_card* %28, i64 %31)
  %33 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %34 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mmc_release_host(i32 %35)
  br label %37

37:                                               ; preds = %23, %1
  %38 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %39 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %45 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %44, i32 0, i32 2
  %46 = call i32 @pm_runtime_disable(i32* %45)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %49 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %48, i32 0, i32 2
  %50 = call i32 @pm_runtime_put_noidle(i32* %49)
  %51 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %52 = call i32 @mmc_blk_remove_req(%struct.mmc_blk_data* %51)
  %53 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %54 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %53, i32 0, i32 2
  %55 = call i32 @dev_set_drvdata(i32* %54, i32* null)
  %56 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %57 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @destroy_workqueue(i32 %58)
  ret void
}

declare dso_local %struct.mmc_blk_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mmc_blk_remove_debugfs(%struct.mmc_card*, %struct.mmc_blk_data*) #1

declare dso_local i32 @mmc_blk_remove_parts(%struct.mmc_card*, %struct.mmc_blk_data*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @mmc_claim_host(i32) #1

declare dso_local i32 @mmc_blk_part_switch(%struct.mmc_card*, i64) #1

declare dso_local i32 @mmc_release_host(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @mmc_blk_remove_req(%struct.mmc_blk_data*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
