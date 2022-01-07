; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_set_q_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_set_q_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vfpf_set_q_filters_tlv }
%struct.vfpf_set_q_filters_tlv = type { i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"VF[%d] Q_FILTERS: queue[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_set_q_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_set_q_filters(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %9 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.vfpf_set_q_filters_tlv* %13, %struct.vfpf_set_q_filters_tlv** %7, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %16 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %7, align 8
  %17 = call i32 @bnx2x_filters_validate_mac(%struct.bnx2x* %14, %struct.bnx2x_virtf* %15, %struct.vfpf_set_q_filters_tlv* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %24 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %7, align 8
  %25 = call i32 @bnx2x_filters_validate_vlan(%struct.bnx2x* %22, %struct.bnx2x_virtf* %23, %struct.vfpf_set_q_filters_tlv* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %45

29:                                               ; preds = %21
  %30 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %31 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %32 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %7, align 8
  %35 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DP(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %39 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %40 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %7, align 8
  %41 = call i32 @bnx2x_vf_mbx_dp_q_filters(%struct.bnx2x* %38, i32 %39, %struct.vfpf_set_q_filters_tlv* %40)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %43 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %44 = call i32 @bnx2x_vf_mbx_qfilters(%struct.bnx2x* %42, %struct.bnx2x_virtf* %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %29, %28, %20
  %46 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %47 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %46, %struct.bnx2x_virtf* %47, i32 %48)
  ret void
}

declare dso_local i32 @bnx2x_filters_validate_mac(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vfpf_set_q_filters_tlv*) #1

declare dso_local i32 @bnx2x_filters_validate_vlan(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vfpf_set_q_filters_tlv*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @bnx2x_vf_mbx_dp_q_filters(%struct.bnx2x*, i32, %struct.vfpf_set_q_filters_tlv*) #1

declare dso_local i32 @bnx2x_vf_mbx_qfilters(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
