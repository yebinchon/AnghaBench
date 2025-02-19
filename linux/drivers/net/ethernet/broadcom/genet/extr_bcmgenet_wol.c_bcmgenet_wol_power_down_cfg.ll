; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet_wol.c_bcmgenet_wol_power_down_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet_wol.c_bcmgenet_wol_power_down_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@GENET_POWER_WOL_MAGIC = common dso_local global i32 0, align 4
@wol = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unsupported mode: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UMAC_CMD = common dso_local global i32 0, align 4
@CMD_RX_EN = common dso_local global i32 0, align 4
@UMAC_MPD_CTRL = common dso_local global i32 0, align 4
@MPD_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"MPD WOL-ready status set after %d msec\0A\00", align 1
@CMD_CRC_FWD = common dso_local global i32 0, align 4
@GENET_HAS_EXT = common dso_local global i32 0, align 4
@EXT_EXT_PWR_MGMT = common dso_local global i32 0, align 4
@EXT_ENERGY_DET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcmgenet_wol_power_down_cfg(%struct.bcmgenet_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcmgenet_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %10 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GENET_POWER_WOL_MAGIC, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %17 = load i32, i32* @wol, align 4
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @netif_err(%struct.bcmgenet_priv* %16, i32 %17, %struct.net_device* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %105

23:                                               ; preds = %2
  %24 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %25 = load i32, i32* @UMAC_CMD, align 4
  %26 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @CMD_RX_EN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @UMAC_CMD, align 4
  %34 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %31, i32 %32, i32 %33)
  %35 = call i32 @mdelay(i32 10)
  %36 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %37 = load i32, i32* @UMAC_MPD_CTRL, align 4
  %38 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @MPD_EN, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @UMAC_MPD_CTRL, align 4
  %45 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %42, i32 %43, i32 %44)
  %46 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %47 = call i32 @bcmgenet_poll_wol_status(%struct.bcmgenet_priv* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %23
  %51 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %52 = load i32, i32* @UMAC_MPD_CTRL, align 4
  %53 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @MPD_EN, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @UMAC_MPD_CTRL, align 4
  %61 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %105

63:                                               ; preds = %23
  %64 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %65 = load i32, i32* @wol, align 4
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @netif_dbg(%struct.bcmgenet_priv* %64, i32 %65, %struct.net_device* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %70 = load i32, i32* @UMAC_CMD, align 4
  %71 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %73 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load i32, i32* @CMD_CRC_FWD, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @CMD_RX_EN, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @UMAC_CMD, align 4
  %83 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %80, i32 %81, i32 %82)
  %84 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %85 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @GENET_HAS_EXT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %63
  %93 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %94 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %95 = call i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv* %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* @EXT_ENERGY_DET_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %103 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %92, %63
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %50, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @netif_err(%struct.bcmgenet_priv*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @bcmgenet_poll_wol_status(%struct.bcmgenet_priv*) #1

declare dso_local i32 @netif_dbg(%struct.bcmgenet_priv*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
