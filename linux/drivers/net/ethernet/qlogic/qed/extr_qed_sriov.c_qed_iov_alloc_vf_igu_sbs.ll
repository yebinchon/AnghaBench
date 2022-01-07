; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_alloc_vf_igu_sbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_alloc_vf_igu_sbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32*, i64 }
%struct.qed_igu_block = type { i32, i32 }
%struct.cau_sb_entry = type { i32 }

@IGU_MAPPING_LINE_FUNCTION_NUMBER = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_VALID = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_PF_VALID = common dso_local global i32 0, align 4
@QED_IGU_STATUS_FREE = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_VECTOR_NUMBER = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY = common dso_local global i64 0, align 8
@CAU_REG_SB_VAR_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32)* @qed_iov_alloc_vf_igu_sbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_iov_alloc_vf_igu_sbs(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_vf_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_igu_block*, align 8
  %10 = alloca %struct.cau_sb_entry, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %13, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %22, %4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %33 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, %31
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @IGU_MAPPING_LINE_FUNCTION_NUMBER, align 4
  %42 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %43 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @SET_FIELD(i32 %40, i32 %41, i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @IGU_MAPPING_LINE_VALID, align 4
  %48 = call i32 @SET_FIELD(i32 %46, i32 %47, i32 1)
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @IGU_MAPPING_LINE_PF_VALID, align 4
  %51 = call i32 @SET_FIELD(i32 %49, i32 %50, i32 0)
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %109, %30
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %112

56:                                               ; preds = %52
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %58 = call %struct.qed_igu_block* @qed_get_igu_free_sb(%struct.qed_hwfn* %57, i32 0)
  store %struct.qed_igu_block* %58, %struct.qed_igu_block** %9, align 8
  %59 = load %struct.qed_igu_block*, %struct.qed_igu_block** %9, align 8
  %60 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %63 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load i32, i32* @QED_IGU_STATUS_FREE, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.qed_igu_block*, %struct.qed_igu_block** %9, align 8
  %71 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @IGU_MAPPING_LINE_VECTOR_NUMBER, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @SET_FIELD(i32 %74, i32 %75, i32 %76)
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %79 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %80 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %81 = load %struct.qed_igu_block*, %struct.qed_igu_block** %9, align 8
  %82 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 4, %84
  %86 = add i64 %80, %85
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @qed_wr(%struct.qed_hwfn* %78, %struct.qed_ptt* %79, i64 %86, i32 %87)
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %91 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %94 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @qed_init_cau_sb_entry(%struct.qed_hwfn* %89, %struct.cau_sb_entry* %10, i32 %92, i32 %95, i32 1)
  %97 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %98 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %99 = ptrtoint %struct.cau_sb_entry* %10 to i64
  %100 = trunc i64 %99 to i32
  %101 = load i64, i64* @CAU_REG_SB_VAR_MEMORY, align 8
  %102 = load %struct.qed_igu_block*, %struct.qed_igu_block** %9, align 8
  %103 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = add i64 %101, %106
  %108 = call i32 @qed_dmae_host2grc(%struct.qed_hwfn* %97, %struct.qed_ptt* %98, i32 %100, i64 %107, i32 2, i32* null)
  br label %109

109:                                              ; preds = %56
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %52

112:                                              ; preds = %52
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %116 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %118 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  ret i64 %119
}

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local %struct.qed_igu_block* @qed_get_igu_free_sb(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32) #1

declare dso_local i32 @qed_init_cau_sb_entry(%struct.qed_hwfn*, %struct.cau_sb_entry*, i32, i32, i32) #1

declare dso_local i32 @qed_dmae_host2grc(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
