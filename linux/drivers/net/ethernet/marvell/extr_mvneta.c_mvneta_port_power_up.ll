; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_port_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_port_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }

@MVNETA_UNIT_INTR_CAUSE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_QSGMII = common dso_local global i32 0, align 4
@MVNETA_SERDES_CFG = common dso_local global i32 0, align 4
@MVNETA_QSGMII_SERDES_PROTO = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@MVNETA_SGMII_SERDES_PROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_port*, i32)* @mvneta_port_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_port_power_up(%struct.mvneta_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvneta_port*, align 8
  %5 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %7 = load i32, i32* @MVNETA_UNIT_INTR_CAUSE, align 4
  %8 = call i32 @mvreg_write(%struct.mvneta_port* %6, i32 %7, i32 0)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PHY_INTERFACE_MODE_QSGMII, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %14 = load i32, i32* @MVNETA_SERDES_CFG, align 4
  %15 = load i32, i32* @MVNETA_QSGMII_SERDES_PROTO, align 4
  %16 = call i32 @mvreg_write(%struct.mvneta_port* %13, i32 %14, i32 %15)
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @phy_interface_mode_is_8023z(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %17
  %26 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %27 = load i32, i32* @MVNETA_SERDES_CFG, align 4
  %28 = load i32, i32* @MVNETA_SGMII_SERDES_PROTO, align 4
  %29 = call i32 @mvreg_write(%struct.mvneta_port* %26, i32 %27, i32 %28)
  br label %38

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @phy_interface_mode_is_rgmii(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %25
  br label %39

39:                                               ; preds = %38, %12
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i32) #1

declare dso_local i32 @phy_interface_mode_is_rgmii(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
