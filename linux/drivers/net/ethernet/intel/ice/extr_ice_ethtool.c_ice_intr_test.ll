; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_intr_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_intr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ice_pf* }
%struct.ice_pf = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"interrupt test\0A\00", align 1
@GLINT_DYN_CTL_SW_ITR_INDX_M = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_INTENA_MSK_M = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_SWINT_TRIG_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ice_intr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_intr_test(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ice_netdev_priv*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ice_netdev_priv* %7, %struct.ice_netdev_priv** %3, align 8
  %8 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ice_pf*, %struct.ice_pf** %11, align 8
  store %struct.ice_pf* %12, %struct.ice_pf** %4, align 8
  %13 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netdev_info(%struct.net_device* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %19 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %18, i32 0, i32 2
  %20 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %21 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @GLINT_DYN_CTL(i32 %22)
  %24 = load i32, i32* @GLINT_DYN_CTL_SW_ITR_INDX_M, align 4
  %25 = load i32, i32* @GLINT_DYN_CTL_INTENA_MSK_M, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @GLINT_DYN_CTL_SWINT_TRIG_M, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @wr32(i32* %19, i32 %23, i32 %28)
  %30 = call i32 @usleep_range(i32 1000, i32 2000)
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %33 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local i32 @GLINT_DYN_CTL(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
