; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_dcb_sw_dflt_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_dcb_sw_dflt_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { %struct.TYPE_12__*, %struct.ice_hw }
%struct.TYPE_12__ = type { i32 }
%struct.ice_hw = type { %struct.TYPE_10__, %struct.ice_port_info* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ice_port_info = type { %struct.ice_dcbx_cfg }
%struct.ice_dcbx_cfg = type { i32, %struct.TYPE_11__*, %struct.TYPE_8__, %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32*, i32*, i32 }
%struct.ice_aqc_port_ets_elem = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_IEEE_TSA_ETS = common dso_local global i32 0, align 4
@ICE_APP_SEL_ETHTYPE = common dso_local global i32 0, align 4
@ICE_APP_PROT_ID_FCOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*, i32)* @ice_dcb_sw_dflt_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_dcb_sw_dflt_cfg(%struct.ice_pf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_aqc_port_ets_elem, align 4
  %7 = alloca %struct.ice_dcbx_cfg*, align 8
  %8 = alloca %struct.ice_port_info*, align 8
  %9 = alloca %struct.ice_hw*, align 8
  %10 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast %struct.ice_aqc_port_ets_elem* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %13 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %12, i32 0, i32 1
  store %struct.ice_hw* %13, %struct.ice_hw** %9, align 8
  %14 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %15 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %14, i32 0, i32 1
  %16 = load %struct.ice_port_info*, %struct.ice_port_info** %15, align 8
  store %struct.ice_port_info* %16, %struct.ice_port_info** %8, align 8
  %17 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %18 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ice_dcbx_cfg* @devm_kzalloc(i32* %20, i32 64, i32 %21)
  store %struct.ice_dcbx_cfg* %22, %struct.ice_dcbx_cfg** %7, align 8
  %23 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %24 = call i32 @memset(%struct.ice_dcbx_cfg* %23, i32 0, i32 64)
  %25 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %26 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %25, i32 0, i32 0
  %27 = call i32 @memset(%struct.ice_dcbx_cfg* %26, i32 0, i32 64)
  %28 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %29 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %32 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %37 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 8
  %39 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %40 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 100, i32* %43, align 4
  %44 = load i32, i32* @ICE_IEEE_TSA_ETS, align 4
  %45 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %46 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %44, i32* %49, align 4
  %50 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %51 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %50, i32 0, i32 3
  %52 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %53 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %52, i32 0, i32 4
  %54 = call i32 @memcpy(%struct.TYPE_13__* %51, %struct.TYPE_14__* %53, i32 8)
  %55 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %56 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %59 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %62 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %67 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %70 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* @ICE_APP_SEL_ETHTYPE, align 4
  %72 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %73 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 %71, i32* %76, align 4
  %77 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %78 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 3, i32* %81, align 4
  %82 = load i32, i32* @ICE_APP_PROT_ID_FCOE, align 4
  %83 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %84 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  %88 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %89 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @ice_pf_dcb_cfg(%struct.ice_pf* %88, %struct.ice_dcbx_cfg* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %93 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %7, align 8
  %97 = call i32 @devm_kfree(i32* %95, %struct.ice_dcbx_cfg* %96)
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %2
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %105

102:                                              ; preds = %2
  %103 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %104 = call i32 @ice_query_port_ets(%struct.ice_port_info* %103, %struct.ice_aqc_port_ets_elem* %6, i32 4, i32* null)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %100
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ice_dcbx_cfg* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @memset(%struct.ice_dcbx_cfg*, i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @ice_pf_dcb_cfg(%struct.ice_pf*, %struct.ice_dcbx_cfg*, i32) #2

declare dso_local i32 @devm_kfree(i32*, %struct.ice_dcbx_cfg*) #2

declare dso_local i32 @ice_query_port_ets(%struct.ice_port_info*, %struct.ice_aqc_port_ets_elem*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
