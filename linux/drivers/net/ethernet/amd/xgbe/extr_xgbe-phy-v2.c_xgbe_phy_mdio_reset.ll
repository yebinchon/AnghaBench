; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i64, i64 }

@XGBE_CONN_TYPE_MDIO = common dso_local global i64 0, align 8
@XGBE_MDIO_RESET_I2C_GPIO = common dso_local global i64 0, align 8
@XGBE_MDIO_RESET_INT_GPIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_mdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_mdio_reset(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_phy_data*, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %7, align 8
  store %struct.xgbe_phy_data* %8, %struct.xgbe_phy_data** %4, align 8
  %9 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %10 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XGBE_CONN_TYPE_MDIO, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %17 = call i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %45

22:                                               ; preds = %15
  %23 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %24 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XGBE_MDIO_RESET_I2C_GPIO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %30 = call i32 @xgbe_phy_i2c_mdio_reset(%struct.xgbe_prv_data* %29)
  store i32 %30, i32* %5, align 4
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %33 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XGBE_MDIO_RESET_INT_GPIO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %39 = call i32 @xgbe_phy_int_mdio_reset(%struct.xgbe_prv_data* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %31
  br label %41

41:                                               ; preds = %40, %28
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %43 = call i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data* %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %20, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_i2c_mdio_reset(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_int_mdio_reset(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
