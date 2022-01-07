; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_set_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_set_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpni_link_cfg = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"dpni_get_link_cfg() failed\0A\00", align 1
@DPNI_LINK_OPT_PAUSE = common dso_local global i32 0, align 4
@DPNI_LINK_OPT_ASYM_PAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"dpni_set_link_cfg() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*)* @set_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pause(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dpni_link_cfg, align 4
  %6 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  %7 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %8 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = bitcast %struct.dpni_link_cfg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %15 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %18 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dpni_get_link_cfg(i32 %16, i32 0, i32 %19, %struct.dpni_link_cfg* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %56

27:                                               ; preds = %1
  %28 = load i32, i32* @DPNI_LINK_OPT_PAUSE, align 4
  %29 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @DPNI_LINK_OPT_ASYM_PAUSE, align 4
  %33 = xor i32 %32, -1
  %34 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %38 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %41 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dpni_set_link_cfg(i32 %39, i32 0, i32 %42, %struct.dpni_link_cfg* %5)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %56

50:                                               ; preds = %27
  %51 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %54 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %46, %23
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dpni_get_link_cfg(i32, i32, i32, %struct.dpni_link_cfg*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @dpni_set_link_cfg(i32, i32, i32, %struct.dpni_link_cfg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
