; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.enetc_pf = type { i32 }

@ENETC_ERR_VLAN_ISOL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i64)* @enetc_pf_set_vf_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_pf_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.enetc_ndev_priv*, align 8
  %13 = alloca %struct.enetc_pf*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.enetc_ndev_priv* %15, %struct.enetc_ndev_priv** %12, align 8
  %16 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %12, align 8
  %17 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call %struct.enetc_pf* @enetc_si_priv(%struct.TYPE_2__* %18)
  store %struct.enetc_pf* %19, %struct.enetc_pf** %13, align 8
  %20 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %12, align 8
  %21 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ENETC_ERR_VLAN_ISOL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %58

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.enetc_pf*, %struct.enetc_pf** %13, align 8
  %34 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %58

40:                                               ; preds = %31
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* @ETH_P_8021Q, align 4
  %43 = call i64 @htons(i32 %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EPROTONOSUPPORT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %58

48:                                               ; preds = %40
  %49 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %12, align 8
  %50 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @enetc_set_isol_vlan(i32* %52, i32 %54, i32 %55, i32 %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %48, %45, %37, %28
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.enetc_pf* @enetc_si_priv(%struct.TYPE_2__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @enetc_set_isol_vlan(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
