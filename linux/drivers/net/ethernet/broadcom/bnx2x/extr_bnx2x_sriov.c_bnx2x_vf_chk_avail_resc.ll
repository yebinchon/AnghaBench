; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_chk_avail_resc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_chk_avail_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.vf_pf_resc_request = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vf_pf_resc_request*)* @bnx2x_vf_chk_avail_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vf_chk_avail_resc(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.vf_pf_resc_request* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.vf_pf_resc_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.vf_pf_resc_request* %2, %struct.vf_pf_resc_request** %6, align 8
  %9 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %10 = call i64 @vf_rxq_count(%struct.bnx2x_virtf* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %17

13:                                               ; preds = %3
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %16 = call i64 @bnx2x_vf_max_queue_cnt(%struct.bnx2x* %14, %struct.bnx2x_virtf* %15)
  br label %17

17:                                               ; preds = %13, %12
  %18 = phi i64 [ %10, %12 ], [ %16, %13 ]
  store i64 %18, i64* %7, align 8
  %19 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %20 = call i64 @vf_txq_count(%struct.bnx2x_virtf* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %27

23:                                               ; preds = %17
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %26 = call i64 @bnx2x_vf_max_queue_cnt(%struct.bnx2x* %24, %struct.bnx2x_virtf* %25)
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i64 [ %20, %22 ], [ %26, %23 ]
  store i64 %28, i64* %8, align 8
  %29 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %30 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %36 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %42 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %45 = call i64 @vf_sb_count(%struct.bnx2x_virtf* %44)
  %46 = icmp sle i64 %43, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %49 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %52 = call i64 @vf_mac_rules_cnt(%struct.bnx2x_virtf* %51)
  %53 = icmp sle i64 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %56 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %59 = call i64 @vf_vlan_rules_cnt(%struct.bnx2x_virtf* %58)
  %60 = icmp sle i64 %57, %59
  br label %61

61:                                               ; preds = %54, %47, %40, %34, %27
  %62 = phi i1 [ false, %47 ], [ false, %40 ], [ false, %34 ], [ false, %27 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  ret i32 %63
}

declare dso_local i64 @vf_rxq_count(%struct.bnx2x_virtf*) #1

declare dso_local i64 @bnx2x_vf_max_queue_cnt(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i64 @vf_txq_count(%struct.bnx2x_virtf*) #1

declare dso_local i64 @vf_sb_count(%struct.bnx2x_virtf*) #1

declare dso_local i64 @vf_mac_rules_cnt(%struct.bnx2x_virtf*) #1

declare dso_local i64 @vf_vlan_rules_cnt(%struct.bnx2x_virtf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
