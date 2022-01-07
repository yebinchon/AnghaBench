; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_set_delay_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_set_delay_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ravb_private = type { i64 }

@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@APSR_DM_RDM = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@ravb_delay_mode_quirk_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [126 x i8] c"phy-mode %s requires TX clock internal delay mode which is not supported by this hardware revision. Please update device tree\00", align 1
@APSR_DM_TDM = common dso_local global i32 0, align 4
@APSR = common dso_local global i32 0, align 4
@APSR_DM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ravb_set_delay_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ravb_set_delay_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ravb_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ravb_private* %6, %struct.ravb_private** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %8 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %14 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @APSR_DM_RDM, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %24 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %30 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @ravb_delay_mode_quirk_match, align 4
  %36 = call i32 @soc_device_match(i32 %35)
  %37 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %38 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @phy_modes(i64 %39)
  %41 = call i32 @WARN(i32 %36, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @APSR_DM_TDM, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %34
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i32, i32* @APSR, align 4
  %51 = load i32, i32* @APSR_DM, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @ravb_modify(%struct.net_device* %49, i32 %50, i32 %51, i32 %52)
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @soc_device_match(i32) #1

declare dso_local i32 @phy_modes(i64) #1

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
