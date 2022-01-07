; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_igu_fifo_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_igu_fifo_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"igu-fifo\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"igu_fifo_data\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@IGU_FIFO_DEPTH_DWORDS = common dso_local global i32 0, align 4
@IGU_REG_ERROR_HANDLING_DATA_VALID = common dso_local global i32 0, align 4
@IGU_REG_ERROR_HANDLING_MEMORY = common dso_local global i32 0, align 4
@IGU_FIFO_ELEMENT_DWORDS = common dso_local global i32 0, align 4
@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32*)* @qed_igu_fifo_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_igu_fifo_dump(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32*, i32** %10, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @qed_dump_common_global_params(%struct.qed_hwfn* %18, %struct.qed_ptt* %19, i32* %23, i32 %24, i32 1)
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %13, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @qed_dump_str_param(i32* %31, i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @qed_dump_section_hdr(i32* %39, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @qed_dump_num_param(i32* %48, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %5
  %56 = load i32, i32* @IGU_FIFO_DEPTH_DWORDS, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %13, align 4
  br label %109

59:                                               ; preds = %5
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %61 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %62 = load i32, i32* @IGU_REG_ERROR_HANDLING_DATA_VALID, align 4
  %63 = call i64 @qed_rd(%struct.qed_hwfn* %60, %struct.qed_ptt* %61, i32 %62)
  %64 = icmp sgt i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* @IGU_REG_ERROR_HANDLING_MEMORY, align 4
  %67 = call i32 @BYTES_TO_DWORDS(i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* @IGU_FIFO_ELEMENT_DWORDS, align 4
  store i32 %68, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %97, %59
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @IGU_FIFO_DEPTH_DWORDS, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %78, label %101

78:                                               ; preds = %76
  %79 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %80 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %88 = call i32 @qed_grc_dump_addr_range(%struct.qed_hwfn* %79, %struct.qed_ptt* %80, i32* %84, i32 1, i32 %85, i32 %86, i32 1, i32 %87, i32 0)
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %92 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %93 = load i32, i32* @IGU_REG_ERROR_HANDLING_DATA_VALID, align 4
  %94 = call i64 @qed_rd(%struct.qed_hwfn* %91, %struct.qed_ptt* %92, i32 %93)
  %95 = icmp sgt i64 %94, 0
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %78
  %98 = load i32, i32* @IGU_FIFO_ELEMENT_DWORDS, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %69

101:                                              ; preds = %76
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @qed_dump_num_param(i32* %105, i32 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %101, %55
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @qed_dump_last_section(i32* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32*, i32** %10, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @DBG_STATUS_OK, align 4
  ret i32 %118
}

declare dso_local i32 @qed_dump_common_global_params(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32) #1

declare dso_local i32 @qed_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @qed_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @qed_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

declare dso_local i32 @qed_grc_dump_addr_range(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qed_dump_last_section(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
