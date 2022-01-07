; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_all_data_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_all_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i64, %struct.TYPE_2__, %struct.qed_hwfn* }
%struct.TYPE_2__ = type { i64 }
%struct.qed_hwfn = type { i32 }

@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"calculating idle_chk and grcdump register length for current engine\0A\00", align 1
@REGDUMP_HEADER_SIZE = common dso_local global i32 0, align 4
@QED_NVM_IMAGE_NVM_CFG1 = common dso_local global i32 0, align 4
@QED_NVM_IMAGE_DEFAULT_CFG = common dso_local global i32 0, align 4
@QED_NVM_IMAGE_NVM_META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dbg_all_data_size(%struct.qed_dev* %0) #0 {
  %2 = alloca %struct.qed_dev*, align 8
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %2, align 8
  %8 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %9 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %8, i32 0, i32 2
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %11 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %12 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i64 %14
  store %struct.qed_hwfn* %15, %struct.qed_hwfn** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %17 = call i64 @qed_get_debug_engine(%struct.qed_dev* %16)
  store i64 %17, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %67, %1
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %21 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %18
  %25 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %26 = load i32, i32* @QED_MSG_DEBUG, align 4
  %27 = call i32 @DP_VERBOSE(%struct.qed_dev* %25, i32 %26, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @qed_set_debug_engine(%struct.qed_dev* %28, i64 %29)
  %31 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %32 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %33 = call i32 @qed_dbg_idle_chk_size(%struct.qed_dev* %32)
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %38 = call i32 @qed_dbg_idle_chk_size(%struct.qed_dev* %37)
  %39 = add nsw i32 %36, %38
  %40 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %41 = add nsw i32 %39, %40
  %42 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %43 = call i32 @qed_dbg_grc_size(%struct.qed_dev* %42)
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %48 = call i32 @qed_dbg_reg_fifo_size(%struct.qed_dev* %47)
  %49 = add nsw i32 %46, %48
  %50 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %53 = call i32 @qed_dbg_igu_fifo_size(%struct.qed_dev* %52)
  %54 = add nsw i32 %51, %53
  %55 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %58 = call i32 @qed_dbg_protection_override_size(%struct.qed_dev* %57)
  %59 = add nsw i32 %56, %58
  %60 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %63 = call i32 @qed_dbg_fw_asserts_size(%struct.qed_dev* %62)
  %64 = add nsw i32 %61, %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %24
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %18

70:                                               ; preds = %18
  %71 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @qed_set_debug_engine(%struct.qed_dev* %71, i64 %72)
  %74 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %75 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %76 = call i32 @qed_dbg_mcp_trace_size(%struct.qed_dev* %75)
  %77 = add nsw i32 %74, %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %81 = load i32, i32* @QED_NVM_IMAGE_NVM_CFG1, align 4
  %82 = call i32 @qed_dbg_nvm_image_length(%struct.qed_hwfn* %80, i32 %81, i32* %5)
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %70
  %86 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %70
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %93 = load i32, i32* @QED_NVM_IMAGE_DEFAULT_CFG, align 4
  %94 = call i32 @qed_dbg_nvm_image_length(%struct.qed_hwfn* %92, i32 %93, i32* %5)
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %97, %91
  %104 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %105 = load i32, i32* @QED_NVM_IMAGE_NVM_META, align 4
  %106 = call i32 @qed_dbg_nvm_image_length(%struct.qed_hwfn* %104, i32 %105, i32* %5)
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @REGDUMP_HEADER_SIZE, align 4
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %109, %103
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @qed_get_debug_engine(%struct.qed_dev*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*) #1

declare dso_local i32 @qed_set_debug_engine(%struct.qed_dev*, i64) #1

declare dso_local i32 @qed_dbg_idle_chk_size(%struct.qed_dev*) #1

declare dso_local i32 @qed_dbg_grc_size(%struct.qed_dev*) #1

declare dso_local i32 @qed_dbg_reg_fifo_size(%struct.qed_dev*) #1

declare dso_local i32 @qed_dbg_igu_fifo_size(%struct.qed_dev*) #1

declare dso_local i32 @qed_dbg_protection_override_size(%struct.qed_dev*) #1

declare dso_local i32 @qed_dbg_fw_asserts_size(%struct.qed_dev*) #1

declare dso_local i32 @qed_dbg_mcp_trace_size(%struct.qed_dev*) #1

declare dso_local i32 @qed_dbg_nvm_image_length(%struct.qed_hwfn*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
