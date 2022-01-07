; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_encap_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_encap_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_tc_info* }
%struct.bnxt_tc_info = type { i32, i32 }
%struct.bnxt_tc_flow = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32 }
%struct.bnxt_tc_flow_node = type { %struct.bnxt_tc_tunnel_node* }
%struct.bnxt_tc_tunnel_node = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INVALID_TUNNEL_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow_node*, i64*)* @bnxt_tc_get_encap_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_get_encap_handle(%struct.bnxt* %0, %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow_node* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_tc_flow*, align 8
  %8 = alloca %struct.bnxt_tc_flow_node*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ip_tunnel_key*, align 8
  %11 = alloca %struct.bnxt_tc_info*, align 8
  %12 = alloca %struct.bnxt_tc_tunnel_node*, align 8
  %13 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow** %7, align 8
  store %struct.bnxt_tc_flow_node* %2, %struct.bnxt_tc_flow_node** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %15 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ip_tunnel_key* %16, %struct.ip_tunnel_key** %10, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %18, align 8
  store %struct.bnxt_tc_info* %19, %struct.bnxt_tc_info** %11, align 8
  %20 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %21 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %11, align 8
  %22 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %21, i32 0, i32 1
  %23 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %11, align 8
  %24 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %23, i32 0, i32 0
  %25 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %10, align 8
  %26 = call %struct.bnxt_tc_tunnel_node* @bnxt_tc_get_tunnel_node(%struct.bnxt* %20, i32* %22, i32* %24, %struct.ip_tunnel_key* %25)
  store %struct.bnxt_tc_tunnel_node* %26, %struct.bnxt_tc_tunnel_node** %12, align 8
  %27 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %12, align 8
  %28 = icmp ne %struct.bnxt_tc_tunnel_node* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %77

32:                                               ; preds = %4
  %33 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %12, align 8
  %34 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %8, align 8
  %35 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %34, i32 0, i32 0
  store %struct.bnxt_tc_tunnel_node* %33, %struct.bnxt_tc_tunnel_node** %35, align 8
  %36 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %12, align 8
  %37 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @INVALID_TUNNEL_HANDLE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %63

42:                                               ; preds = %32
  %43 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %44 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %10, align 8
  %45 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %12, align 8
  %46 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %45, i32 0, i32 1
  %47 = call i32 @bnxt_tc_resolve_tunnel_hdrs(%struct.bnxt* %43, %struct.ip_tunnel_key* %44, i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %68

51:                                               ; preds = %42
  %52 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %53 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %10, align 8
  %54 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %12, align 8
  %55 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %54, i32 0, i32 1
  %56 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %12, align 8
  %57 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %56, i32 0, i32 0
  %58 = call i32 @hwrm_cfa_encap_record_alloc(%struct.bnxt* %52, %struct.ip_tunnel_key* %53, i32* %55, i64* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %68

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %41
  %64 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %12, align 8
  %65 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %5, align 4
  br label %77

68:                                               ; preds = %61, %50
  %69 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %70 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %11, align 8
  %71 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %70, i32 0, i32 1
  %72 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %11, align 8
  %73 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %72, i32 0, i32 0
  %74 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %12, align 8
  %75 = call i32 @bnxt_tc_put_tunnel_node(%struct.bnxt* %69, i32* %71, i32* %73, %struct.bnxt_tc_tunnel_node* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %68, %63, %29
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.bnxt_tc_tunnel_node* @bnxt_tc_get_tunnel_node(%struct.bnxt*, i32*, i32*, %struct.ip_tunnel_key*) #1

declare dso_local i32 @bnxt_tc_resolve_tunnel_hdrs(%struct.bnxt*, %struct.ip_tunnel_key*, i32*) #1

declare dso_local i32 @hwrm_cfa_encap_record_alloc(%struct.bnxt*, %struct.ip_tunnel_key*, i32*, i64*) #1

declare dso_local i32 @bnxt_tc_put_tunnel_node(%struct.bnxt*, i32*, i32*, %struct.bnxt_tc_tunnel_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
