; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth_ethtool.c_uec_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth_ethtool.c_uec_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32 }
%struct.ucc_geth_private = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.ucc_geth_info*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ucc_geth_info = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Please re-open the interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @uec_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uec_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.ucc_geth_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucc_geth_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ucc_geth_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ucc_geth_private* %9, %struct.ucc_geth_private** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %5, align 8
  %14 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %13, i32 0, i32 2
  %15 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %14, align 8
  %16 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %15, i32 0, i32 3
  store i32 %12, i32* %16, align 4
  %17 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %5, align 8
  %21 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %20, i32 0, i32 2
  %22 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %21, align 8
  %23 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 4
  %24 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %5, align 8
  %25 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i64 @netif_running(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netdev_info(%struct.net_device* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  br label %72

38:                                               ; preds = %2
  %39 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %5, align 8
  %40 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %39, i32 0, i32 2
  %41 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %40, align 8
  store %struct.ucc_geth_info* %41, %struct.ucc_geth_info** %7, align 8
  %42 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %7, align 8
  %43 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %7, align 8
  %46 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %7, align 8
  %49 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %7, align 8
  %52 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %7, align 8
  %55 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %5, align 8
  %58 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %5, align 8
  %64 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %5, align 8
  %68 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = call i32 @init_flow_control_params(i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32* %62, i32* %66, i32* %70)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %38, %37
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.ucc_geth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @init_flow_control_params(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
