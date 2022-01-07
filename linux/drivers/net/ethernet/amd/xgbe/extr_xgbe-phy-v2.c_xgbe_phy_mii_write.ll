; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_mii_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.xgbe_prv_data* }
%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32 }

@XGBE_CONN_TYPE_SFP = common dso_local global i32 0, align 4
@XGBE_CONN_TYPE_MDIO = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @xgbe_phy_mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_mii_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xgbe_prv_data*, align 8
  %11 = alloca %struct.xgbe_phy_data*, align 8
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 0
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %14, align 8
  store %struct.xgbe_prv_data* %15, %struct.xgbe_prv_data** %10, align 8
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %10, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 0
  %18 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %17, align 8
  store %struct.xgbe_phy_data* %18, %struct.xgbe_phy_data** %11, align 8
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %10, align 8
  %20 = call i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %4
  %26 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %11, align 8
  %27 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @XGBE_CONN_TYPE_SFP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @xgbe_phy_i2c_mii_write(%struct.xgbe_prv_data* %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  br label %53

36:                                               ; preds = %25
  %37 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %11, align 8
  %38 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XGBE_CONN_TYPE_MDIO, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @xgbe_phy_mdio_mii_write(%struct.xgbe_prv_data* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  br label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @ENOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %31
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %10, align 8
  %55 = call i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data* %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %23
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_i2c_mii_write(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @xgbe_phy_mdio_mii_write(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
