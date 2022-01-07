; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_nfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_nfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gfar_private = type { i32, i32, i32 }

@GFAR_RESETTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i32 0, align 4
@MAX_FILER_IDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @gfar_set_nfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_set_nfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %8)
  store %struct.gfar_private* %9, %struct.gfar_private** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @GFAR_RESETTING, align 4
  %11 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %12 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %20 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %67 [
    i32 128, label %25
    i32 129, label %29
    i32 130, label %60
  ]

25:                                               ; preds = %18
  %26 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %27 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %28 = call i32 @gfar_set_hash_opts(%struct.gfar_private* %26, %struct.ethtool_rxnfc* %27)
  store i32 %28, i32* %7, align 4
  br label %70

29:                                               ; preds = %18
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RX_CLS_FLOW_DISC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %42 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %36, %29
  %46 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MAX_FILER_IDX, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45, %36
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %70

55:                                               ; preds = %45
  %56 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %57 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %57, i32 0, i32 1
  %59 = call i32 @gfar_add_cls(%struct.gfar_private* %56, %struct.TYPE_2__* %58)
  store i32 %59, i32* %7, align 4
  br label %70

60:                                               ; preds = %18
  %61 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %62 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gfar_del_cls(%struct.gfar_private* %61, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %70

67:                                               ; preds = %18
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %60, %55, %52, %25
  %71 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %72 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfar_set_hash_opts(%struct.gfar_private*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @gfar_add_cls(%struct.gfar_private*, %struct.TYPE_2__*) #1

declare dso_local i32 @gfar_del_cls(%struct.gfar_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
