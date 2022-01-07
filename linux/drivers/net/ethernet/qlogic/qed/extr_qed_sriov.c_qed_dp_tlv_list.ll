; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_dp_tlv_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_dp_tlv_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.channel_tlv = type { i64, i64 }

@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TLV number %d: type %d, length %d\0A\00", align 1
@CHANNEL_TLV_LIST_END = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"TLV of length 0 found\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"TLV ==> Buffer overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_dp_tlv_list(%struct.qed_hwfn* %0, i8* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.channel_tlv*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %56, %2
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = bitcast i32* %13 to %struct.channel_tlv*
  store %struct.channel_tlv* %14, %struct.channel_tlv** %7, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = load i32, i32* @QED_MSG_IOV, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %19 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %22 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %15, i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20, i64 %23)
  %25 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %26 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHANNEL_TLV_LIST_END, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  br label %57

31:                                               ; preds = %8
  %32 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %33 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %38 = call i32 @DP_NOTICE(%struct.qed_hwfn* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.channel_tlv*, %struct.channel_tlv** %7, align 8
  %41 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %52 = call i32 @DP_NOTICE(%struct.qed_hwfn* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %57

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53
  br i1 true, label %8, label %57

57:                                               ; preds = %30, %36, %50, %56
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
