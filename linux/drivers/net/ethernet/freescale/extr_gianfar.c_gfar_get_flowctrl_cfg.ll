; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_get_flowctrl_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_get_flowctrl_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { i64, i64, i32, %struct.net_device* }
%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i64, i64, i32 }

@MACCFG1_TX_FLOW = common dso_local global i32 0, align 4
@MACCFG1_RX_FLOW = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_private*)* @gfar_get_flowctrl_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_get_flowctrl_cfg(%struct.gfar_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfar_private* %0, %struct.gfar_private** %3, align 8
  %10 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %11 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %10, i32 0, i32 3
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.phy_device*, %struct.phy_device** %14, align 8
  store %struct.phy_device* %15, %struct.phy_device** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %90

22:                                               ; preds = %1
  %23 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %24 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %22
  %28 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %29 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @MACCFG1_TX_FLOW, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %38 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @MACCFG1_RX_FLOW, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %88

46:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %47 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @LPA_PAUSE_CAP, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @linkmode_adv_to_lcl_adv_t(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @mii_resolve_flowctrl_fdx(i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @FLOW_CTRL_TX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load i32, i32* @MACCFG1_TX_FLOW, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %62
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @FLOW_CTRL_RX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @MACCFG1_RX_FLOW, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %78
  br label %88

88:                                               ; preds = %87, %45
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %20
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @linkmode_adv_to_lcl_adv_t(i32) #1

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
