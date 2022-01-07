; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_del_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_del_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.flow_cls_offload = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_fl_payload = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.nfp_port = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"invalid entry: cannot remove flow that does not exist\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_TYPE_FLOW_DEL = common dso_local global i32 0, align 4
@nfp_flower_table_params = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, %struct.flow_cls_offload*)* @nfp_flower_del_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_del_offload(%struct.nfp_app* %0, %struct.net_device* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca %struct.nfp_flower_priv*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nfp_fl_payload*, align 8
  %11 = alloca %struct.nfp_port*, align 8
  %12 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %13 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %14 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %13, i32 0, i32 0
  %15 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %14, align 8
  store %struct.nfp_flower_priv* %15, %struct.nfp_flower_priv** %8, align 8
  store %struct.netlink_ext_ack* null, %struct.netlink_ext_ack** %9, align 8
  store %struct.nfp_port* null, %struct.nfp_port** %11, align 8
  %16 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %17 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %18, align 8
  store %struct.netlink_ext_ack* %19, %struct.netlink_ext_ack** %9, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i64 @nfp_netdev_is_nfp_repr(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %24)
  store %struct.nfp_port* %25, %struct.nfp_port** %11, align 8
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %28 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %29 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = call %struct.nfp_fl_payload* @nfp_flower_search_fl_table(%struct.nfp_app* %27, i32 %30, %struct.net_device* %31)
  store %struct.nfp_fl_payload* %32, %struct.nfp_fl_payload** %10, align 8
  %33 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %34 = icmp ne %struct.nfp_fl_payload* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %37 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %115

40:                                               ; preds = %26
  %41 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %42 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %43 = call i32 @nfp_modify_flow_metadata(%struct.nfp_app* %41, %struct.nfp_fl_payload* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %80

47:                                               ; preds = %40
  %48 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %49 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %54 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %55 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @nfp_tunnel_del_ipv4_off(%struct.nfp_app* %53, i64 %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %60 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %80

64:                                               ; preds = %58
  %65 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %66 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %72 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %73 = call i32 @nfp_flower_xmit_pre_tun_del_flow(%struct.nfp_app* %71, %struct.nfp_fl_payload* %72)
  store i32 %73, i32* %12, align 4
  br label %79

74:                                               ; preds = %64
  %75 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %76 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %77 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_FLOW_DEL, align 4
  %78 = call i32 @nfp_flower_xmit_flow(%struct.nfp_app* %75, %struct.nfp_fl_payload* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %74, %70
  br label %80

80:                                               ; preds = %79, %63, %46
  %81 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %82 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %83 = call i32 @nfp_flower_del_linked_merge_flows(%struct.nfp_app* %81, %struct.nfp_fl_payload* %82)
  %84 = load %struct.nfp_port*, %struct.nfp_port** %11, align 8
  %85 = icmp ne %struct.nfp_port* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.nfp_port*, %struct.nfp_port** %11, align 8
  %88 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %80
  %92 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %93 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @kfree(i32 %94)
  %96 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %97 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @kfree(i32 %98)
  %100 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %101 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @kfree(i32 %102)
  %104 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %105 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %104, i32 0, i32 0
  %106 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %107 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %106, i32 0, i32 0
  %108 = load i32, i32* @nfp_flower_table_params, align 4
  %109 = call i32 @rhashtable_remove_fast(i32* %105, i32* %107, i32 %108)
  %110 = call i32 @WARN_ON_ONCE(i32 %109)
  %111 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %112 = load i32, i32* @rcu, align 4
  %113 = call i32 @kfree_rcu(%struct.nfp_fl_payload* %111, i32 %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %91, %35
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device*) #1

declare dso_local %struct.nfp_fl_payload* @nfp_flower_search_fl_table(%struct.nfp_app*, i32, %struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nfp_modify_flow_metadata(%struct.nfp_app*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @nfp_tunnel_del_ipv4_off(%struct.nfp_app*, i64) #1

declare dso_local i32 @nfp_flower_xmit_pre_tun_del_flow(%struct.nfp_app*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @nfp_flower_xmit_flow(%struct.nfp_app*, %struct.nfp_fl_payload*, i32) #1

declare dso_local i32 @nfp_flower_del_linked_merge_flows(%struct.nfp_app*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.nfp_fl_payload*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
