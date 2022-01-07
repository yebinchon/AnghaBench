; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_intr_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_intr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i64, i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"interrupt test\0A\00", align 1
@I40E_PFINT_DYN_CTL0 = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_INTENA_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_ITR_INDX_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @i40e_intr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_intr_test(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.i40e_netdev_priv* %9, %struct.i40e_netdev_priv** %5, align 8
  %10 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %11 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %6, align 8
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %19 = load i32, i32* @hw, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netif_info(%struct.i40e_pf* %18, i32 %19, %struct.net_device* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 1
  %24 = load i32, i32* @I40E_PFINT_DYN_CTL0, align 4
  %25 = load i32, i32* @I40E_PFINT_DYN_CTL0_INTENA_MASK, align 4
  %26 = load i32, i32* @I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @I40E_PFINT_DYN_CTL0_ITR_INDX_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @wr32(i32* %23, i32 %24, i32 %33)
  %35 = call i32 @usleep_range(i32 1000, i32 2000)
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %38 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  ret i32 %44
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.i40e_pf*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
