; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_flr_poll_pbf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_flr_poll_pbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32 }
%struct.qed_ptt = type { i32 }

@MAX_NUM_VOQS_E4 = common dso_local global i32 0, align 4
@PBF_REG_NUM_BLOCKS_ALLOCATED_CONS_VOQ0 = common dso_local global i64 0, align 8
@PBF_REG_NUM_BLOCKS_ALLOCATED_PROD_VOQ0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"VF[%d] - pbf polling failed on VOQ %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_ptt*)* @qed_iov_vf_flr_poll_pbf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_vf_flr_poll_pbf(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, %struct.qed_ptt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %6, align 8
  store %struct.qed_ptt* %2, %struct.qed_ptt** %7, align 8
  %16 = load i32, i32* @MAX_NUM_VOQS_E4, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @MAX_NUM_VOQS_E4, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %56, %3
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @MAX_NUM_VOQS_E4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %29 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %30 = load i64, i64* @PBF_REG_NUM_BLOCKS_ALLOCATED_CONS_VOQ0, align 8
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %31, 64
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = call i64 @qed_rd(%struct.qed_hwfn* %28, %struct.qed_ptt* %29, i64 %34)
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %19, i64 %37
  store i64 %35, i64* %38, align 8
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %40 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %41 = load i64, i64* @PBF_REG_NUM_BLOCKS_ALLOCATED_PROD_VOQ0, align 8
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 %42, 64
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i64 @qed_rd(%struct.qed_hwfn* %39, %struct.qed_ptt* %40, i64 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %19, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %47, %51
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %22, i64 %54
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %23

59:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %100, %59
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 50
  br i1 %62, label %63, label %103

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %90, %63
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @MAX_NUM_VOQS_E4, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %70 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %71 = load i64, i64* @PBF_REG_NUM_BLOCKS_ALLOCATED_CONS_VOQ0, align 8
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 %72, 64
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = call i64 @qed_rd(%struct.qed_hwfn* %69, %struct.qed_ptt* %70, i64 %75)
  store i64 %76, i64* %14, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %22, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %19, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %81, %85
  %87 = icmp sgt i64 %80, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %68
  br label %93

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %64

93:                                               ; preds = %88, %64
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @MAX_NUM_VOQS_E4, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %103

98:                                               ; preds = %93
  %99 = call i32 @msleep(i32 20)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %60

103:                                              ; preds = %97, %60
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 50
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %108 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %109 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @DP_ERR(%struct.qed_hwfn* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* @EBUSY, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %116

115:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %116

116:                                              ; preds = %115, %106
  %117 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
