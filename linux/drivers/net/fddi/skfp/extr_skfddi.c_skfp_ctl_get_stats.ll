; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_ctl_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_ctl_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32 }
%struct.net_device = type { i32 }
%struct.s_smc = type { %struct.TYPE_25__, %struct.TYPE_23__*, %struct.TYPE_19__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_28__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_34__*, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_27__, %struct.TYPE_26__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32* }

@FDDI_K_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @skfp_ctl_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @skfp_ctl_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s_smc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.s_smc* @netdev_priv(%struct.net_device* %4)
  store %struct.s_smc* %5, %struct.s_smc** %3, align 8
  %6 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %7 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 4660, i32* %11, align 4
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 22136, i32* %17, align 4
  %18 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = bitcast %struct.TYPE_24__* %20 to %struct.net_device_stats*
  ret %struct.net_device_stats* %21
}

declare dso_local %struct.s_smc* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
