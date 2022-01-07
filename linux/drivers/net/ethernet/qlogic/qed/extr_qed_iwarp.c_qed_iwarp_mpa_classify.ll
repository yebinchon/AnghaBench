; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_mpa_classify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_mpa_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_iwarp_fpdu = type { i32, i64 }

@QED_IWARP_MPA_PKT_UNALIGNED = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@QED_IWARP_MPA_PKT_PARTIAL = common dso_local global i32 0, align 4
@QED_IWARP_MPA_PKT_PACKED = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"MPA_ALIGN: %s: fpdu_length=0x%x tcp_payload_len:0x%x\0A\00", align 1
@pkt_type_str = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*, i32, i32*)* @qed_iwarp_mpa_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_mpa_classify(%struct.qed_hwfn* %0, %struct.qed_iwarp_fpdu* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_iwarp_fpdu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_iwarp_fpdu* %1, %struct.qed_iwarp_fpdu** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %6, align 8
  %12 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @QED_IWARP_MPA_PKT_UNALIGNED, align 4
  store i32 %16, i32* %9, align 4
  br label %46

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BITS_PER_BYTE, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %6, align 8
  %26 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @QED_IWARP_MPA_PKT_PARTIAL, align 4
  store i32 %27, i32* %9, align 4
  br label %46

28:                                               ; preds = %17
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohs(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @QED_IWARP_FPDU_LEN_WITH_PAD(i32 %32)
  %34 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %6, align 8
  %35 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %6, align 8
  %37 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* @QED_IWARP_MPA_PKT_PACKED, align 4
  store i32 %42, i32* %9, align 4
  br label %45

43:                                               ; preds = %28
  %44 = load i32, i32* @QED_IWARP_MPA_PKT_PARTIAL, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %20, %15
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %48 = load i32, i32* @QED_MSG_RDMA, align 4
  %49 = load i32*, i32** @pkt_type_str, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %6, align 8
  %55 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %47, i32 %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @QED_IWARP_FPDU_LEN_WITH_PAD(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
