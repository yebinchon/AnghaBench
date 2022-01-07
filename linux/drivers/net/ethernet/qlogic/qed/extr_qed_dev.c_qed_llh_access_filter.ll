; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_access_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_access_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_llh_filter_details = type { i32, i32, i32, i32, i32 }
%struct.qed_dmae_params = type { i32, i32, i32 }

@PXP_PRETEND_CONCRETE_FID_PFID_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_FILTER_EN = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_VALUE = common dso_local global i64 0, align 8
@QED_DMAE_FLAG_PF_DST = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_FILTER_MODE = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_PROTOCOL_TYPE = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_HDR_SEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, %struct.qed_llh_filter_details*)* @qed_llh_access_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_llh_access_filter(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3, %struct.qed_llh_filter_details* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_llh_filter_details*, align 8
  %12 = alloca %struct.qed_dmae_params, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.qed_llh_filter_details* %4, %struct.qed_llh_filter_details** %11, align 8
  %16 = bitcast %struct.qed_dmae_params* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i64 @QED_IS_BB(%struct.TYPE_2__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %14, align 4
  br label %35

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %25, %30
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %33 = call i32 @MFW_PORT(%struct.qed_hwfn* %32)
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %24, %22
  %36 = load %struct.qed_llh_filter_details*, %struct.qed_llh_filter_details** %11, align 8
  %37 = getelementptr inbounds %struct.qed_llh_filter_details, %struct.qed_llh_filter_details* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %35
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %42 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @PXP_PRETEND_CONCRETE_FID_PFID_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %41, %struct.qed_ptt* %42, i32 %45)
  %47 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN, align 8
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  store i64 %51, i64* %13, align 8
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %53 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.qed_llh_filter_details*, %struct.qed_llh_filter_details** %11, align 8
  %56 = getelementptr inbounds %struct.qed_llh_filter_details, %struct.qed_llh_filter_details* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @qed_wr(%struct.qed_hwfn* %52, %struct.qed_ptt* %53, i64 %54, i32 %57)
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %60 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %62 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PXP_PRETEND_CONCRETE_FID_PFID_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %59, %struct.qed_ptt* %60, i32 %65)
  br label %67

67:                                               ; preds = %40, %35
  %68 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_VALUE, align 8
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 2, %69
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  store i64 %73, i64* %13, align 8
  %74 = load i32, i32* @QED_DMAE_FLAG_PF_DST, align 4
  %75 = getelementptr inbounds %struct.qed_dmae_params, %struct.qed_dmae_params* %12, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  %77 = getelementptr inbounds %struct.qed_dmae_params, %struct.qed_dmae_params* %12, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %79 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %80 = load %struct.qed_llh_filter_details*, %struct.qed_llh_filter_details** %11, align 8
  %81 = getelementptr inbounds %struct.qed_llh_filter_details, %struct.qed_llh_filter_details* %80, i32 0, i32 4
  %82 = ptrtoint i32* %81 to i64
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @qed_dmae_host2grc(%struct.qed_hwfn* %78, %struct.qed_ptt* %79, i32 %83, i64 %84, i32 2, %struct.qed_dmae_params* %12)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %67
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %6, align 4
  br label %159

90:                                               ; preds = %67
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %92 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @PXP_PRETEND_CONCRETE_FID_PFID_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %91, %struct.qed_ptt* %92, i32 %95)
  %97 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_MODE, align 8
  %98 = load i32, i32* %10, align 4
  %99 = mul nsw i32 %98, 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %97, %100
  store i64 %101, i64* %13, align 8
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %103 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.qed_llh_filter_details*, %struct.qed_llh_filter_details** %11, align 8
  %106 = getelementptr inbounds %struct.qed_llh_filter_details, %struct.qed_llh_filter_details* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @qed_wr(%struct.qed_hwfn* %102, %struct.qed_ptt* %103, i64 %104, i32 %107)
  %109 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_PROTOCOL_TYPE, align 8
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  store i64 %113, i64* %13, align 8
  %114 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %115 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.qed_llh_filter_details*, %struct.qed_llh_filter_details** %11, align 8
  %118 = getelementptr inbounds %struct.qed_llh_filter_details, %struct.qed_llh_filter_details* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @qed_wr(%struct.qed_hwfn* %114, %struct.qed_ptt* %115, i64 %116, i32 %119)
  %121 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_HDR_SEL, align 8
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  store i64 %125, i64* %13, align 8
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %127 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.qed_llh_filter_details*, %struct.qed_llh_filter_details** %11, align 8
  %130 = getelementptr inbounds %struct.qed_llh_filter_details, %struct.qed_llh_filter_details* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @qed_wr(%struct.qed_hwfn* %126, %struct.qed_ptt* %127, i64 %128, i32 %131)
  %133 = load %struct.qed_llh_filter_details*, %struct.qed_llh_filter_details** %11, align 8
  %134 = getelementptr inbounds %struct.qed_llh_filter_details, %struct.qed_llh_filter_details* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %90
  %138 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN, align 8
  %139 = load i32, i32* %10, align 4
  %140 = mul nsw i32 %139, 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %138, %141
  store i64 %142, i64* %13, align 8
  %143 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %144 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load %struct.qed_llh_filter_details*, %struct.qed_llh_filter_details** %11, align 8
  %147 = getelementptr inbounds %struct.qed_llh_filter_details, %struct.qed_llh_filter_details* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @qed_wr(%struct.qed_hwfn* %143, %struct.qed_ptt* %144, i64 %145, i32 %148)
  br label %150

150:                                              ; preds = %137, %90
  %151 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %152 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %153 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %154 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @PXP_PRETEND_CONCRETE_FID_PFID_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %151, %struct.qed_ptt* %152, i32 %157)
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %150, %88
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @QED_IS_BB(%struct.TYPE_2__*) #2

declare dso_local i32 @MFW_PORT(%struct.qed_hwfn*) #2

declare dso_local i32 @qed_fid_pretend(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #2

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32) #2

declare dso_local i32 @qed_dmae_host2grc(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i64, i32, %struct.qed_dmae_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
