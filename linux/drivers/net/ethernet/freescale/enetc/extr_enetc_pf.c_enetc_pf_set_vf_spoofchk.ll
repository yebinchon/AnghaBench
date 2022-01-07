; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_set_vf_spoofchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_set_vf_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_pf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENETC_PSICFGR0_ASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @enetc_pf_set_vf_spoofchk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_pf_set_vf_spoofchk(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.enetc_ndev_priv*, align 8
  %9 = alloca %struct.enetc_pf*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
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
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %3
  %26 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %27 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @ENETC_PSICFGR0(i32 %31)
  %33 = call i32 @enetc_port_rd(i32* %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @ENETC_PSICFGR0_ASE, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @ENETC_PSICFGR0_ASE, align 4
  br label %43

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %37, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %47 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @ENETC_PSICFGR0(i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @enetc_port_wr(i32* %49, i32 %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %43, %22
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.enetc_pf* @enetc_si_priv(%struct.TYPE_2__*) #1

declare dso_local i32 @enetc_port_rd(i32*, i32) #1

declare dso_local i32 @ENETC_PSICFGR0(i32) #1

declare dso_local i32 @enetc_port_wr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
