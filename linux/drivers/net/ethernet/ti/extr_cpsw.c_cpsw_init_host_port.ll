; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_init_host_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_init_host_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { %struct.TYPE_8__*, i32, %struct.cpsw_common* }
%struct.TYPE_8__ = type { i32 }
%struct.cpsw_common = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"cpsw\00", align 1
@HOST_PORT_NUM = common dso_local global i32 0, align 4
@ALE_VLAN_AWARE = common dso_local global i32 0, align 4
@CPSW_ALE_VLAN_AWARE = common dso_local global i32 0, align 4
@CPSW_VLAN_AWARE = common dso_local global i32 0, align 4
@CPSW_RX_VLAN_ENCAP = common dso_local global i32 0, align 4
@CPSW_FIFO_DUAL_MAC_MODE = common dso_local global i32 0, align 4
@CPSW_FIFO_NORMAL_MODE = common dso_local global i32 0, align 4
@CPDMA_TX_PRIORITY_MAP = common dso_local global i32 0, align 4
@ALE_PORT_STATE = common dso_local global i32 0, align 4
@ALE_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@ALE_PORT_HOST = common dso_local global i32 0, align 4
@ALE_MCAST_FWD_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_priv*)* @cpsw_init_host_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_init_host_port(%struct.cpsw_priv* %0) #0 {
  %2 = alloca %struct.cpsw_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpsw_common*, align 8
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %2, align 8
  %6 = load %struct.cpsw_priv*, %struct.cpsw_priv** %2, align 8
  %7 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %6, i32 0, i32 2
  %8 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  store %struct.cpsw_common* %8, %struct.cpsw_common** %5, align 8
  %9 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %10 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = call i32 @soft_reset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %15 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @cpsw_ale_start(i32 %16)
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %19 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HOST_PORT_NUM, align 4
  %22 = load i32, i32* @ALE_VLAN_AWARE, align 4
  %23 = load i32, i32* @CPSW_ALE_VLAN_AWARE, align 4
  %24 = call i32 @cpsw_ale_control_set(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @readl(i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @CPSW_VLAN_AWARE, align 4
  %31 = load i32, i32* @CPSW_RX_VLAN_ENCAP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %37 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @writel(i32 %35, i32* %39)
  %41 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %42 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i32, i32* @CPSW_FIFO_DUAL_MAC_MODE, align 4
  br label %50

48:                                               ; preds = %1
  %49 = load i32, i32* @CPSW_FIFO_NORMAL_MODE, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %54 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = call i32 @writel(i32 %52, i32* %56)
  %58 = load i32, i32* @CPDMA_TX_PRIORITY_MAP, align 4
  %59 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %60 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = call i32 @writel_relaxed(i32 %58, i32* %62)
  %64 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %65 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @writel_relaxed(i32 0, i32* %67)
  %69 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %70 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @HOST_PORT_NUM, align 4
  %73 = load i32, i32* @ALE_PORT_STATE, align 4
  %74 = load i32, i32* @ALE_PORT_STATE_FORWARD, align 4
  %75 = call i32 @cpsw_ale_control_set(i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %77 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %50
  %82 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %83 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.cpsw_priv*, %struct.cpsw_priv** %2, align 8
  %86 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @HOST_PORT_NUM, align 4
  %89 = call i32 @cpsw_ale_add_ucast(i32 %84, i32 %87, i32 %88, i32 0, i32 0)
  %90 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %91 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.cpsw_priv*, %struct.cpsw_priv** %2, align 8
  %94 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ALE_PORT_HOST, align 4
  %99 = load i32, i32* @ALE_MCAST_FWD_2, align 4
  %100 = call i32 @cpsw_ale_add_mcast(i32 %92, i32 %97, i32 %98, i32 0, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %81, %50
  ret void
}

declare dso_local i32 @soft_reset(i8*, i32*) #1

declare dso_local i32 @cpsw_ale_start(i32) #1

declare dso_local i32 @cpsw_ale_control_set(i32, i32, i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i32 @cpsw_ale_add_ucast(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_ale_add_mcast(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
