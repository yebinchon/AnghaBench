; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.net_device = type { i32 }
%struct.flow_cls_offload = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_fl_payload = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"invalid entry: cannot dump stats for flow that does not exist\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, %struct.flow_cls_offload*)* @nfp_flower_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_get_stats(%struct.nfp_app* %0, %struct.net_device* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca %struct.nfp_flower_priv*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nfp_fl_payload*, align 8
  %11 = alloca i64, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %12 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %12, i32 0, i32 0
  %14 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  store %struct.nfp_flower_priv* %14, %struct.nfp_flower_priv** %8, align 8
  store %struct.netlink_ext_ack* null, %struct.netlink_ext_ack** %9, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %16 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  store %struct.netlink_ext_ack* %18, %struct.netlink_ext_ack** %9, align 8
  %19 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %20 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %21 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.nfp_fl_payload* @nfp_flower_search_fl_table(%struct.nfp_app* %19, i32 %22, %struct.net_device* %23)
  store %struct.nfp_fl_payload* %24, %struct.nfp_fl_payload** %10, align 8
  %25 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %26 = icmp ne %struct.nfp_fl_payload* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %29 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %28, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %89

32:                                               ; preds = %3
  %33 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %34 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @be32_to_cpu(i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %39 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %42 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %41, i32 0, i32 0
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %32
  %46 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %47 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %10, align 8
  %48 = call i32 @nfp_flower_update_merge_stats(%struct.nfp_app* %46, %struct.nfp_fl_payload* %47)
  br label %49

49:                                               ; preds = %45, %32
  %50 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %51 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %50, i32 0, i32 0
  %52 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %53 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %60 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %67 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @flow_stats_update(i32* %51, i64 %58, i64 %65, i32 %72)
  %74 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %75 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %81 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %87 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_bh(i32* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %49, %27
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.nfp_fl_payload* @nfp_flower_search_fl_table(%struct.nfp_app*, i32, %struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @nfp_flower_update_merge_stats(%struct.nfp_app*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @flow_stats_update(i32*, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
