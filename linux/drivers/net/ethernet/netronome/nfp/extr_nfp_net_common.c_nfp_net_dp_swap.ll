; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_dp_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_dp_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.nfp_net_dp }
%struct.nfp_net_dp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*, %struct.nfp_net_dp*)* @nfp_net_dp_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_dp_swap(%struct.nfp_net* %0, %struct.nfp_net_dp* %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca %struct.nfp_net_dp*, align 8
  %5 = alloca %struct.nfp_net_dp, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store %struct.nfp_net_dp* %1, %struct.nfp_net_dp** %4, align 8
  %6 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %7 = bitcast %struct.nfp_net_dp* %5 to i8*
  %8 = bitcast %struct.nfp_net_dp* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %10 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %11 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %10, i32 0, i32 0
  %12 = bitcast %struct.nfp_net_dp* %9 to i8*
  %13 = bitcast %struct.nfp_net_dp* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 0
  %16 = bitcast %struct.nfp_net_dp* %15 to i8*
  %17 = bitcast %struct.nfp_net_dp* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %21 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %26 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @netif_is_rxfh_configured(%struct.TYPE_2__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %33 = call i32 @nfp_net_rss_init_itbl(%struct.nfp_net* %32)
  br label %34

34:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @netif_is_rxfh_configured(%struct.TYPE_2__*) #2

declare dso_local i32 @nfp_net_rss_init_itbl(%struct.nfp_net*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
