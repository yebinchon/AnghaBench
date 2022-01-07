; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_emac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_emac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sh_eth_private = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@ECSR = common dso_local global i32 0, align 4
@ECSIPR = common dso_local global i32 0, align 4
@ECSR_ICD = common dso_local global i32 0, align 4
@ECSR_MPD = common dso_local global i32 0, align 4
@ECSR_LCHNG = common dso_local global i32 0, align 4
@PSR = common dso_local global i32 0, align 4
@PHY_ST_LINK = common dso_local global i32 0, align 4
@EESIPR = common dso_local global i32 0, align 4
@EESIPR_ECIIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sh_eth_emac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_emac_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sh_eth_private* %7, %struct.sh_eth_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @ECSR, align 4
  %10 = call i32 @sh_eth_read(%struct.net_device* %8, i32 %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @ECSIPR, align 4
  %13 = call i32 @sh_eth_read(%struct.net_device* %11, i32 %12)
  %14 = and i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ECSR, align 4
  %18 = call i32 @sh_eth_write(%struct.net_device* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ECSR_ICD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ECSR_MPD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %36 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @pm_wakeup_event(i32* %38, i32 0)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ECSR_LCHNG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %40
  %46 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %47 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %54 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %45
  br label %93

58:                                               ; preds = %52
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i32, i32* @PSR, align 4
  %61 = call i32 @sh_eth_read(%struct.net_device* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %63 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = xor i32 %67, -1
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @PHY_ST_LINK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call i32 @sh_eth_rcv_snd_disable(%struct.net_device* %75)
  br label %92

77:                                               ; preds = %69
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i32, i32* @EESIPR, align 4
  %80 = load i32, i32* @EESIPR_ECIIP, align 4
  %81 = call i32 @sh_eth_modify(%struct.net_device* %78, i32 %79, i32 %80, i32 0)
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load i32, i32* @ECSR, align 4
  %84 = call i32 @sh_eth_modify(%struct.net_device* %82, i32 %83, i32 0, i32 0)
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = load i32, i32* @EESIPR, align 4
  %87 = load i32, i32* @EESIPR_ECIIP, align 4
  %88 = load i32, i32* @EESIPR_ECIIP, align 4
  %89 = call i32 @sh_eth_modify(%struct.net_device* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 @sh_eth_rcv_snd_enable(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %77, %74
  br label %93

93:                                               ; preds = %57, %92, %40
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sh_eth_read(%struct.net_device*, i32) #1

declare dso_local i32 @sh_eth_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @pm_wakeup_event(i32*, i32) #1

declare dso_local i32 @sh_eth_rcv_snd_disable(%struct.net_device*) #1

declare dso_local i32 @sh_eth_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @sh_eth_rcv_snd_enable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
