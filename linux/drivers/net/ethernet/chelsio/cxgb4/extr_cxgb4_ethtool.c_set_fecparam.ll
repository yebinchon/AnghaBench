; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_fecparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_fecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i32 }
%struct.port_info = type { i32, %struct.TYPE_2__*, %struct.link_config }
%struct.TYPE_2__ = type { i32 }
%struct.link_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @set_fecparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_fecparam(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_fecparam*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.link_config*, align 8
  %7 = alloca %struct.link_config, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.port_info* @netdev_priv(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %5, align 8
  %11 = load %struct.port_info*, %struct.port_info** %5, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 2
  store %struct.link_config* %12, %struct.link_config** %6, align 8
  %13 = load %struct.link_config*, %struct.link_config** %6, align 8
  %14 = bitcast %struct.link_config* %7 to i8*
  %15 = bitcast %struct.link_config* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @eth_to_cc_fec(i32 %18)
  %20 = load %struct.link_config*, %struct.link_config** %6, align 8
  %21 = getelementptr inbounds %struct.link_config, %struct.link_config* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.port_info*, %struct.port_info** %5, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.port_info*, %struct.port_info** %5, align 8
  %26 = getelementptr inbounds %struct.port_info, %struct.port_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.port_info*, %struct.port_info** %5, align 8
  %31 = getelementptr inbounds %struct.port_info, %struct.port_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.link_config*, %struct.link_config** %6, align 8
  %34 = call i32 @t4_link_l1cfg(%struct.TYPE_2__* %24, i32 %29, i32 %32, %struct.link_config* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.link_config*, %struct.link_config** %6, align 8
  %39 = bitcast %struct.link_config* %38 to i8*
  %40 = bitcast %struct.link_config* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  br label %41

41:                                               ; preds = %37, %2
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @eth_to_cc_fec(i32) #1

declare dso_local i32 @t4_link_l1cfg(%struct.TYPE_2__*, i32, i32, %struct.link_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
