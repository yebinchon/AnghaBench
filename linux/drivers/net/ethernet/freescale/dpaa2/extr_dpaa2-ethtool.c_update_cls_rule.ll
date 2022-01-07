; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_update_cls_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_update_cls_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32 }
%struct.dpaa2_eth_priv = type { i64, %struct.dpaa2_eth_cls_rule*, i32 }
%struct.dpaa2_eth_cls_rule = type { i32, %struct.ethtool_rx_flow_spec }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rx_flow_spec*, i32)* @update_cls_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_cls_rule(%struct.net_device* %0, %struct.ethtool_rx_flow_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpaa2_eth_priv*, align 8
  %9 = alloca %struct.dpaa2_eth_cls_rule*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rx_flow_spec* %1, %struct.ethtool_rx_flow_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.dpaa2_eth_priv* %12, %struct.dpaa2_eth_priv** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %16 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %85

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %25 = call i32 @dpaa2_eth_fs_count(%struct.dpaa2_eth_priv* %24)
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %85

30:                                               ; preds = %22
  %31 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %32 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %31, i32 0, i32 1
  %33 = load %struct.dpaa2_eth_cls_rule*, %struct.dpaa2_eth_cls_rule** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dpaa2_eth_cls_rule, %struct.dpaa2_eth_cls_rule* %33, i64 %35
  store %struct.dpaa2_eth_cls_rule* %36, %struct.dpaa2_eth_cls_rule** %9, align 8
  %37 = load %struct.dpaa2_eth_cls_rule*, %struct.dpaa2_eth_cls_rule** %9, align 8
  %38 = getelementptr inbounds %struct.dpaa2_eth_cls_rule, %struct.dpaa2_eth_cls_rule* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %30
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load %struct.dpaa2_eth_cls_rule*, %struct.dpaa2_eth_cls_rule** %9, align 8
  %44 = getelementptr inbounds %struct.dpaa2_eth_cls_rule, %struct.dpaa2_eth_cls_rule* %43, i32 0, i32 1
  %45 = call i32 @do_cls_rule(%struct.net_device* %42, %struct.ethtool_rx_flow_spec* %44, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %85

50:                                               ; preds = %41
  %51 = load %struct.dpaa2_eth_cls_rule*, %struct.dpaa2_eth_cls_rule** %9, align 8
  %52 = getelementptr inbounds %struct.dpaa2_eth_cls_rule, %struct.dpaa2_eth_cls_rule* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %54 = call i32 @dpaa2_eth_fs_mask_enabled(%struct.dpaa2_eth_priv* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %58 = call i32 @num_rules(%struct.dpaa2_eth_priv* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %62 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %56, %50
  br label %64

64:                                               ; preds = %63, %30
  %65 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %66 = icmp ne %struct.ethtool_rx_flow_spec* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %85

69:                                               ; preds = %64
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %72 = call i32 @do_cls_rule(%struct.net_device* %70, %struct.ethtool_rx_flow_spec* %71, i32 1)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %85

77:                                               ; preds = %69
  %78 = load %struct.dpaa2_eth_cls_rule*, %struct.dpaa2_eth_cls_rule** %9, align 8
  %79 = getelementptr inbounds %struct.dpaa2_eth_cls_rule, %struct.dpaa2_eth_cls_rule* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.dpaa2_eth_cls_rule*, %struct.dpaa2_eth_cls_rule** %9, align 8
  %81 = getelementptr inbounds %struct.dpaa2_eth_cls_rule, %struct.dpaa2_eth_cls_rule* %80, i32 0, i32 1
  %82 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %83 = bitcast %struct.ethtool_rx_flow_spec* %81 to i8*
  %84 = bitcast %struct.ethtool_rx_flow_spec* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %77, %75, %67, %48, %27, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dpaa2_eth_fs_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @do_cls_rule(%struct.net_device*, %struct.ethtool_rx_flow_spec*, i32) #1

declare dso_local i32 @dpaa2_eth_fs_mask_enabled(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @num_rules(%struct.dpaa2_eth_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
