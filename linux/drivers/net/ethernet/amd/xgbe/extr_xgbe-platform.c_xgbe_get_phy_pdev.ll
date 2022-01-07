; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-platform.c_xgbe_get_phy_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-platform.c_xgbe_get_phy_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xgbe_prv_data = type { %struct.platform_device*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (%struct.xgbe_prv_data*)* @xgbe_get_phy_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @xgbe_get_phy_pdev(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @get_device(i32 %11)
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 0
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %3, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = call %struct.platform_device* @xgbe_of_get_phy_pdev(%struct.xgbe_prv_data* %17)
  store %struct.platform_device* %18, %struct.platform_device** %3, align 8
  br label %19

19:                                               ; preds = %16, %8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  ret %struct.platform_device* %20
}

declare dso_local i32 @get_device(i32) #1

declare dso_local %struct.platform_device* @xgbe_of_get_phy_pdev(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
