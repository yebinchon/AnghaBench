; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_decap_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_decap_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_tc_info* }
%struct.bnxt_tc_info = type { i32, i32 }
%struct.bnxt_tc_flow = type { i32, %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bnxt_tc_flow_node = type { %struct.bnxt_tc_tunnel_node* }
%struct.bnxt_tc_tunnel_node = type { i64, %struct.bnxt_tc_l2_key }
%struct.bnxt_tc_l2_key = type { i32, i32, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INVALID_TUNNEL_HANDLE = common dso_local global i64 0, align 8
@BNXT_TC_FLOW_FLAGS_TUNL_ETH_ADDRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow_node*, i64*)* @bnxt_tc_get_decap_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_get_decap_handle(%struct.bnxt* %0, %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow_node* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_tc_flow*, align 8
  %8 = alloca %struct.bnxt_tc_flow_node*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ip_tunnel_key*, align 8
  %11 = alloca %struct.bnxt_tc_info*, align 8
  %12 = alloca %struct.bnxt_tc_l2_key, align 8
  %13 = alloca %struct.bnxt_tc_tunnel_node*, align 8
  %14 = alloca %struct.ip_tunnel_key, align 8
  %15 = alloca %struct.bnxt_tc_l2_key*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow** %7, align 8
  store %struct.bnxt_tc_flow_node* %2, %struct.bnxt_tc_flow_node** %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %19 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %18, i32 0, i32 1
  store %struct.ip_tunnel_key* %19, %struct.ip_tunnel_key** %10, align 8
  %20 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 0
  %22 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %21, align 8
  store %struct.bnxt_tc_info* %22, %struct.bnxt_tc_info** %11, align 8
  %23 = bitcast %struct.bnxt_tc_l2_key* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  %24 = bitcast %struct.ip_tunnel_key* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 32, i1 false)
  %25 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %10, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %28 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %11, align 8
  %29 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %28, i32 0, i32 1
  %30 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %11, align 8
  %31 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %30, i32 0, i32 0
  %32 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %10, align 8
  %33 = call %struct.bnxt_tc_tunnel_node* @bnxt_tc_get_tunnel_node(%struct.bnxt* %27, i32* %29, i32* %31, %struct.ip_tunnel_key* %32)
  store %struct.bnxt_tc_tunnel_node* %33, %struct.bnxt_tc_tunnel_node** %13, align 8
  %34 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %13, align 8
  %35 = icmp ne %struct.bnxt_tc_tunnel_node* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %140

39:                                               ; preds = %4
  %40 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %13, align 8
  %41 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %8, align 8
  %42 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %41, i32 0, i32 0
  store %struct.bnxt_tc_tunnel_node* %40, %struct.bnxt_tc_tunnel_node** %42, align 8
  %43 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %13, align 8
  %44 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @INVALID_TUNNEL_HANDLE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %120

49:                                               ; preds = %39
  %50 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %51 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %14, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %60 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %14, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %65 = call i32 @bnxt_tc_resolve_tunnel_hdrs(%struct.bnxt* %64, %struct.ip_tunnel_key* %14, %struct.bnxt_tc_l2_key* %12)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  br label %129

69:                                               ; preds = %49
  %70 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %13, align 8
  %71 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %70, i32 0, i32 1
  store %struct.bnxt_tc_l2_key* %71, %struct.bnxt_tc_l2_key** %15, align 8
  %72 = load %struct.bnxt_tc_l2_key*, %struct.bnxt_tc_l2_key** %15, align 8
  %73 = getelementptr inbounds %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key* %12, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ether_addr_copy(i32 %74, i32 %76)
  %78 = getelementptr inbounds %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key* %12, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key* %12, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.bnxt_tc_l2_key*, %struct.bnxt_tc_l2_key** %15, align 8
  %85 = getelementptr inbounds %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key* %12, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bnxt_tc_l2_key*, %struct.bnxt_tc_l2_key** %15, align 8
  %89 = getelementptr inbounds %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key* %12, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.bnxt_tc_l2_key*, %struct.bnxt_tc_l2_key** %15, align 8
  %93 = getelementptr inbounds %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %81, %69
  %95 = load i32, i32* @BNXT_TC_FLOW_FLAGS_TUNL_ETH_ADDRS, align 4
  %96 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %97 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %101 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %102 = load %struct.bnxt_tc_l2_key*, %struct.bnxt_tc_l2_key** %15, align 8
  %103 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %8, align 8
  %104 = call i32 @bnxt_tc_get_ref_decap_handle(%struct.bnxt* %100, %struct.bnxt_tc_flow* %101, %struct.bnxt_tc_l2_key* %102, %struct.bnxt_tc_flow_node* %103, i64* %16)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %129

108:                                              ; preds = %94
  %109 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %110 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %111 = load %struct.bnxt_tc_l2_key*, %struct.bnxt_tc_l2_key** %15, align 8
  %112 = load i64, i64* %16, align 8
  %113 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %13, align 8
  %114 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %113, i32 0, i32 0
  %115 = call i32 @hwrm_cfa_decap_filter_alloc(%struct.bnxt* %109, %struct.bnxt_tc_flow* %110, %struct.bnxt_tc_l2_key* %111, i64 %112, i64* %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %125

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %48
  %121 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %13, align 8
  %122 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %9, align 8
  store i64 %123, i64* %124, align 8
  store i32 0, i32* %5, align 4
  br label %140

125:                                              ; preds = %118
  %126 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %127 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %8, align 8
  %128 = call i32 @bnxt_tc_put_decap_l2_node(%struct.bnxt* %126, %struct.bnxt_tc_flow_node* %127)
  br label %129

129:                                              ; preds = %125, %107, %68
  %130 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %131 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %11, align 8
  %132 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %131, i32 0, i32 1
  %133 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %11, align 8
  %134 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %133, i32 0, i32 0
  %135 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %8, align 8
  %136 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %135, i32 0, i32 0
  %137 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %136, align 8
  %138 = call i32 @bnxt_tc_put_tunnel_node(%struct.bnxt* %130, i32* %132, i32* %134, %struct.bnxt_tc_tunnel_node* %137)
  %139 = load i32, i32* %17, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %129, %120, %36
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bnxt_tc_tunnel_node* @bnxt_tc_get_tunnel_node(%struct.bnxt*, i32*, i32*, %struct.ip_tunnel_key*) #2

declare dso_local i32 @bnxt_tc_resolve_tunnel_hdrs(%struct.bnxt*, %struct.ip_tunnel_key*, %struct.bnxt_tc_l2_key*) #2

declare dso_local i32 @ether_addr_copy(i32, i32) #2

declare dso_local i32 @bnxt_tc_get_ref_decap_handle(%struct.bnxt*, %struct.bnxt_tc_flow*, %struct.bnxt_tc_l2_key*, %struct.bnxt_tc_flow_node*, i64*) #2

declare dso_local i32 @hwrm_cfa_decap_filter_alloc(%struct.bnxt*, %struct.bnxt_tc_flow*, %struct.bnxt_tc_l2_key*, i64, i64*) #2

declare dso_local i32 @bnxt_tc_put_decap_l2_node(%struct.bnxt*, %struct.bnxt_tc_flow_node*) #2

declare dso_local i32 @bnxt_tc_put_tunnel_node(%struct.bnxt*, i32*, i32*, %struct.bnxt_tc_tunnel_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
