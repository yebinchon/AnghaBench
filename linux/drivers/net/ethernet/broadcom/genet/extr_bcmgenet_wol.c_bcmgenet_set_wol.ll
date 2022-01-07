; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet_wol.c_bcmgenet_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet_wol.c_bcmgenet_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32* }
%struct.bcmgenet_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UMAC_MPD_CTRL = common dso_local global i32 0, align 4
@UMAC_MPD_PW_MS = common dso_local global i32 0, align 4
@UMAC_MPD_PW_LS = common dso_local global i32 0, align 4
@MPD_PW_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcmgenet_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.bcmgenet_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcmgenet_priv* %10, %struct.bcmgenet_priv** %6, align 8
  %11 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %12 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call i32 @device_can_wakeup(%struct.device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %114

21:                                               ; preds = %2
  %22 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WAKE_MAGIC, align 4
  %26 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %114

34:                                               ; preds = %21
  %35 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %36 = load i32, i32* @UMAC_MPD_CTRL, align 4
  %37 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %34
  %45 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %46 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = call i32 @get_unaligned_be16(i32* %49)
  %51 = load i32, i32* @UMAC_MPD_PW_MS, align 4
  %52 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %45, i32 %50, i32 %51)
  %53 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %54 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = call i32 @get_unaligned_be32(i32* %57)
  %59 = load i32, i32* @UMAC_MPD_PW_LS, align 4
  %60 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %53, i32 %58, i32 %59)
  %61 = load i32, i32* @MPD_PW_EN, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %69

64:                                               ; preds = %34
  %65 = load i32, i32* @MPD_PW_EN, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %64, %44
  %70 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @UMAC_MPD_CTRL, align 4
  %73 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %70, i32 %71, i32 %72)
  %74 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %69
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = call i32 @device_set_wakeup_enable(%struct.device* %79, i32 1)
  %81 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %82 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %87 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @enable_irq_wake(i32 %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %92 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %108

93:                                               ; preds = %69
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = call i32 @device_set_wakeup_enable(%struct.device* %94, i32 0)
  %96 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %97 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %102 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @disable_irq_wake(i32 %103)
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %107 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %90
  %109 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %113 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %31, %18
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_can_wakeup(%struct.device*) #1

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @device_set_wakeup_enable(%struct.device*, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
