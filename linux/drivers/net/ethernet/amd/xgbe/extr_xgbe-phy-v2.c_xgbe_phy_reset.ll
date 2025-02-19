; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_reset(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_phy_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 0
  %9 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %8, align 8
  store %struct.xgbe_phy_data* %9, %struct.xgbe_phy_data** %4, align 8
  %10 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %11 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = call i32 @xgbe_phy_power_off(%struct.xgbe_prv_data* %13)
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @xgbe_phy_set_mode(%struct.xgbe_prv_data* %15, i32 %16)
  %18 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %19 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %25 = call i32 @xgbe_phy_mdio_reset(%struct.xgbe_prv_data* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %35

30:                                               ; preds = %23
  %31 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %32 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @phy_init_hw(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %28, %22
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @xgbe_phy_power_off(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_set_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_mdio_reset(%struct.xgbe_prv_data*) #1

declare dso_local i32 @phy_init_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
