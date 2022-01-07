; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_get_nfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_get_nfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }
%struct.gfar_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @gfar_get_nfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_get_nfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gfar_private*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %9)
  store %struct.gfar_private* %10, %struct.gfar_private** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %36 [
    i32 128, label %14
    i32 130, label %20
    i32 129, label %27
    i32 131, label %31
  ]

14:                                               ; preds = %3
  %15 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %16 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %22 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %39

27:                                               ; preds = %3
  %28 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %30 = call i32 @gfar_get_cls(%struct.gfar_private* %28, %struct.ethtool_rxnfc* %29)
  store i32 %30, i32* %8, align 4
  br label %39

31:                                               ; preds = %3
  %32 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @gfar_get_cls_all(%struct.gfar_private* %32, %struct.ethtool_rxnfc* %33, i32* %34)
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %31, %27, %20, %14
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gfar_get_cls(%struct.gfar_private*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @gfar_get_cls_all(%struct.gfar_private*, %struct.ethtool_rxnfc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
