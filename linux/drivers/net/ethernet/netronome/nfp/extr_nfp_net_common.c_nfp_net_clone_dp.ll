; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_clone_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_clone_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i64, i64, i32*, i32*, i64 }
%struct.nfp_net = type { %struct.nfp_net_dp }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_net_dp* @nfp_net_clone_dp(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net_dp*, align 8
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca %struct.nfp_net_dp*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.nfp_net_dp* @kmalloc(i32 40, i32 %5)
  store %struct.nfp_net_dp* %6, %struct.nfp_net_dp** %4, align 8
  %7 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %8 = icmp ne %struct.nfp_net_dp* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.nfp_net_dp* null, %struct.nfp_net_dp** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %12 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %12, i32 0, i32 0
  %14 = bitcast %struct.nfp_net_dp* %11 to i8*
  %15 = bitcast %struct.nfp_net_dp* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 40, i1 false)
  %16 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %17 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %23 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %25 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  store %struct.nfp_net_dp* %26, %struct.nfp_net_dp** %2, align 8
  br label %27

27:                                               ; preds = %10, %9
  %28 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  ret %struct.nfp_net_dp* %28
}

declare dso_local %struct.nfp_net_dp* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
