; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_static_resc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_static_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, %struct.vf_pf_resc_request }
%struct.vf_pf_resc_request = type { i32, i64, i32, i32, i64, i64 }

@VF_MAC_CREDIT_CNT = common dso_local global i32 0, align 4
@VF_VLAN_CREDIT_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_iov_static_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_iov_static_resc(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.vf_pf_resc_request*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %6 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %7 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %6, i32 0, i32 1
  store %struct.vf_pf_resc_request* %7, %struct.vf_pf_resc_request** %5, align 8
  %8 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %9 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %11 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @VF_MAC_CREDIT_CNT, align 4
  %13 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %14 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @VF_VLAN_CREDIT_CNT, align 4
  %16 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %17 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %19 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %5, align 8
  %24 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
