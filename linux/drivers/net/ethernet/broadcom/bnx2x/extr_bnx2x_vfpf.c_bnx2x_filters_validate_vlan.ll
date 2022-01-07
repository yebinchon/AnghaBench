; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_filters_validate_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_filters_validate_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32 }
%struct.vfpf_set_q_filters_tlv = type { i64 }
%struct.pf_vf_bulletin_content = type { i32 }

@VLAN_VALID = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_VLAN_TAG_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"VF[%d] attempted to configure vlan but one was already set by Hypervisor. Aborting request\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vfpf_set_q_filters_tlv*)* @bnx2x_filters_validate_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_filters_validate_vlan(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.vfpf_set_q_filters_tlv* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %7 = alloca %struct.pf_vf_bulletin_content*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.vfpf_set_q_filters_tlv* %2, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x* %9, i32 %12)
  store %struct.pf_vf_bulletin_content* %13, %struct.pf_vf_bulletin_content** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %15 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VLAN_VALID, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %23 = load i32, i32* @VFPF_Q_FILTER_VLAN_TAG_VALID, align 4
  %24 = call i64 @bnx2x_vf_filters_contain(%struct.vfpf_set_q_filters_tlv* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %45

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %36 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %39 = call i64 @vf_rxq_count(%struct.bnx2x_virtf* %38)
  %40 = icmp sgt i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %41, %26
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_vf_filters_contain(%struct.vfpf_set_q_filters_tlv*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i64 @vf_rxq_count(%struct.bnx2x_virtf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
