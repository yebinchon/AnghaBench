; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_protection_override_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_protection_override_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"protection-override\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"protection_override_data\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@PROTECTION_OVERRIDE_DEPTH_DWORDS = common dso_local global i32 0, align 4
@GRC_REG_NUMBER_VALID_OVERRIDE_WINDOW = common dso_local global i32 0, align 4
@PROTECTION_OVERRIDE_ELEMENT_DWORDS = common dso_local global i32 0, align 4
@GRC_REG_PROTECTION_OVERRIDE_WINDOW = common dso_local global i32 0, align 4
@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32*)* @qed_protection_override_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_protection_override_dump(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %17 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @qed_dump_common_global_params(%struct.qed_hwfn* %16, %struct.qed_ptt* %17, i32* %21, i32 %22, i32 1)
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @qed_dump_str_param(i32* %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @qed_dump_section_hdr(i32* %37, i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @qed_dump_num_param(i32* %46, i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %5
  %54 = load i32, i32* @PROTECTION_OVERRIDE_DEPTH_DWORDS, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %85

57:                                               ; preds = %5
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %59 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %60 = load i32, i32* @GRC_REG_NUMBER_VALID_OVERRIDE_WINDOW, align 4
  %61 = call i32 @qed_rd(%struct.qed_hwfn* %58, %struct.qed_ptt* %59, i32 %60)
  %62 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_DWORDS, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* @GRC_REG_PROTECTION_OVERRIDE_WINDOW, align 4
  %65 = call i32 @BYTES_TO_DWORDS(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %67 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %75 = call i32 @qed_grc_dump_addr_range(%struct.qed_hwfn* %66, %struct.qed_ptt* %67, i32* %71, i32 1, i32 %72, i32 %73, i32 1, i32 %74, i32 0)
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %13, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @qed_dump_num_param(i32* %81, i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %57, %53
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @qed_dump_last_section(i32* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @DBG_STATUS_OK, align 4
  ret i32 %94
}

declare dso_local i32 @qed_dump_common_global_params(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32) #1

declare dso_local i32 @qed_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @qed_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @qed_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

declare dso_local i32 @qed_grc_dump_addr_range(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qed_dump_last_section(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
