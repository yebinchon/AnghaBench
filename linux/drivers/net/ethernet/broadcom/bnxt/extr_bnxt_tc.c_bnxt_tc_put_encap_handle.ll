; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_encap_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_encap_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_tc_info* }
%struct.bnxt_tc_info = type { i32, i32 }
%struct.bnxt_tc_tunnel_node = type { i64 }

@INVALID_TUNNEL_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_tc_tunnel_node*)* @bnxt_tc_put_encap_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_tc_put_encap_handle(%struct.bnxt* %0, %struct.bnxt_tc_tunnel_node* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_tc_tunnel_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bnxt_tc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.bnxt_tc_tunnel_node* %1, %struct.bnxt_tc_tunnel_node** %4, align 8
  %8 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %4, align 8
  %9 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 0
  %13 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %12, align 8
  store %struct.bnxt_tc_info* %13, %struct.bnxt_tc_info** %6, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %6, align 8
  %16 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %15, i32 0, i32 1
  %17 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %6, align 8
  %18 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %17, i32 0, i32 0
  %19 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %4, align 8
  %20 = call i32 @bnxt_tc_put_tunnel_node(%struct.bnxt* %14, i32* %16, i32* %18, %struct.bnxt_tc_tunnel_node* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @INVALID_TUNNEL_HANDLE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @hwrm_cfa_encap_record_free(%struct.bnxt* %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %23, %2
  ret void
}

declare dso_local i32 @bnxt_tc_put_tunnel_node(%struct.bnxt*, i32*, i32*, %struct.bnxt_tc_tunnel_node*) #1

declare dso_local i32 @hwrm_cfa_encap_record_free(%struct.bnxt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
