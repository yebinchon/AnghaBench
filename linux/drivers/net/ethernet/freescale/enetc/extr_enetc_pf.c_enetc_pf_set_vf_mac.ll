; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_pf = type { i32, %struct.enetc_vf_state* }
%struct.enetc_vf_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENETC_VF_FLAG_PF_SET_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @enetc_pf_set_vf_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_pf_set_vf_mac(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.enetc_ndev_priv*, align 8
  %9 = alloca %struct.enetc_pf*, align 8
  %10 = alloca %struct.enetc_vf_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.enetc_ndev_priv* %12, %struct.enetc_ndev_priv** %8, align 8
  %13 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %14 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call %struct.enetc_pf* @enetc_si_priv(%struct.TYPE_2__* %15)
  store %struct.enetc_pf* %16, %struct.enetc_pf** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.enetc_pf*, %struct.enetc_pf** %9, align 8
  %19 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @is_valid_ether_addr(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EADDRNOTAVAIL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %52

32:                                               ; preds = %25
  %33 = load %struct.enetc_pf*, %struct.enetc_pf** %9, align 8
  %34 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %33, i32 0, i32 1
  %35 = load %struct.enetc_vf_state*, %struct.enetc_vf_state** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.enetc_vf_state, %struct.enetc_vf_state* %35, i64 %37
  store %struct.enetc_vf_state* %38, %struct.enetc_vf_state** %10, align 8
  %39 = load i32, i32* @ENETC_VF_FLAG_PF_SET_MAC, align 4
  %40 = load %struct.enetc_vf_state*, %struct.enetc_vf_state** %10, align 8
  %41 = getelementptr inbounds %struct.enetc_vf_state, %struct.enetc_vf_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %45 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @enetc_pf_set_primary_mac_addr(i32* %47, i32 %49, i32* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %32, %29, %22
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.enetc_pf* @enetc_si_priv(%struct.TYPE_2__*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @enetc_pf_set_primary_mac_addr(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
