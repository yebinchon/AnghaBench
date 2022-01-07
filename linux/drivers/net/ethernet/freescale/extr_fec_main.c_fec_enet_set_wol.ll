; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.fec_enet_private = type { i32, i64* }

@FEC_WOL_HAS_MAGIC_PACKET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@FEC_WOL_FLAG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @fec_enet_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %6, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FEC_WOL_HAS_MAGIC_PACKET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WAKE_MAGIC, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %18
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @WAKE_MAGIC, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @device_set_wakeup_enable(i32* %31, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = call i64 @device_may_wakeup(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %29
  %43 = load i32, i32* @FEC_WOL_FLAG_ENABLE, align 4
  %44 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %45 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %49 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %42
  %55 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %56 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @enable_irq_wake(i64 %59)
  br label %61

61:                                               ; preds = %54, %42
  br label %83

62:                                               ; preds = %29
  %63 = load i32, i32* @FEC_WOL_FLAG_ENABLE, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %66 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %70 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %62
  %76 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %77 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @disable_irq_wake(i64 %80)
  br label %82

82:                                               ; preds = %75, %62
  br label %83

83:                                               ; preds = %82, %61
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %26, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i64 @device_may_wakeup(i32*) #1

declare dso_local i32 @enable_irq_wake(i64) #1

declare dso_local i32 @disable_irq_wake(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
