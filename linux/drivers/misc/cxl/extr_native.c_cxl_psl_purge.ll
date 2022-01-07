; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_psl_purge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_psl_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.cxl_afu*)* }
%struct.cxl_afu = type { i32, i32 }

@CXL_PSL_SCNTL_An = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CXL_TIMEOUT = common dso_local global i64 0, align 8
@CXL_PSL_SCNTL_An_Pc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PSL purge request\0A\00", align 1
@CXL_PSL_DSISR_TRANS = common dso_local global i32 0, align 4
@CXL_PSL9_DSISR_An_TF = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"PSL Purge called with link down, ignoring\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_ES_MASK = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_ES_Disabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"psl_purge request while AFU not disabled!\0A\00", align 1
@CXL_PSL_SCNTL_An_Ps_MASK = common dso_local global i32 0, align 4
@CXL_PSL_SCNTL_An_Ps_Pending = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"WARNING: PSL Purge timed out!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CXL_PSL_DSISR_An = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"PSL purging... PSL_CNTL: 0x%016llx  PSL_DSISR: 0x%016llx\0A\00", align 1
@CXL_PSL_DAR_An = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [77 x i8] c"PSL purge terminating pending translation, DSISR: 0x%016llx, DAR: 0x%016llx\0A\00", align 1
@CXL_PSL_TFC_An = common dso_local global i32 0, align 4
@CXL_PSL_TFC_An_AE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [73 x i8] c"PSL purge acknowledging pending non-translation fault, DSISR: 0x%016llx\0A\00", align 1
@CXL_PSL_TFC_An_A = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"PSL purged in %lld ns\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_psl_purge(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %13 = load i32, i32* @CXL_PSL_SCNTL_An, align 4
  %14 = call i32 @cxl_p1n_read(%struct.cxl_afu* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %16 = load i32, i32* @CXL_AFU_Cntl_An, align 4
  %17 = call i32 @cxl_p2n_read(%struct.cxl_afu* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @HZ, align 8
  %20 = load i64, i64* @CXL_TIMEOUT, align 8
  %21 = mul i64 %19, %20
  %22 = add i64 %18, %21
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %24 = load i32, i32* @CXL_PSL_SCNTL_An_Pc, align 4
  %25 = call i32 @trace_cxl_psl_ctrl(%struct.cxl_afu* %23, i32 %24)
  %26 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = call i64 (...) @cxl_is_power8()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @CXL_PSL_DSISR_TRANS, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %1
  %32 = call i64 (...) @cxl_is_power9()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @CXL_PSL9_DSISR_An_TF, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32, %struct.cxl_afu*)*, i32 (i32, %struct.cxl_afu*)** %38, align 8
  %40 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %41 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %44 = call i32 %39(i32 %42, %struct.cxl_afu* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %48 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %47, i32 0, i32 0
  %49 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %159

52:                                               ; preds = %36
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @CXL_AFU_Cntl_An_ES_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @CXL_AFU_Cntl_An_ES_Disabled, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %61 = call i32 @cxl_afu_disable(%struct.cxl_afu* %60)
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %64 = load i32, i32* @CXL_PSL_SCNTL_An, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @CXL_PSL_SCNTL_An_Pc, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @cxl_p1n_write(%struct.cxl_afu* %63, i32 %64, i32 %67)
  %69 = call i32 (...) @local_clock()
  store i32 %69, i32* %7, align 4
  %70 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %71 = load i32, i32* @CXL_PSL_SCNTL_An, align 4
  %72 = call i32 @cxl_p1n_read(%struct.cxl_afu* %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %142, %62
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @CXL_PSL_SCNTL_An_Ps_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @CXL_PSL_SCNTL_An_Ps_Pending, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %146

79:                                               ; preds = %73
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @time_after_eq(i64 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %86 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %85, i32 0, i32 0
  %87 = call i32 @dev_warn(i32* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %159

90:                                               ; preds = %79
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (i32, %struct.cxl_afu*)*, i32 (i32, %struct.cxl_afu*)** %92, align 8
  %94 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %95 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %98 = call i32 %93(i32 %96, %struct.cxl_afu* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %159

103:                                              ; preds = %90
  %104 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %105 = load i32, i32* @CXL_PSL_DSISR_An, align 4
  %106 = call i32 @cxl_p2n_read(%struct.cxl_afu* %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @pr_devel_ratelimited(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %9, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %103
  %115 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %116 = load i32, i32* @CXL_PSL_DAR_An, align 4
  %117 = call i32 @cxl_p2n_read(%struct.cxl_afu* %115, i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %119 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %118, i32 0, i32 0
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32*, i8*, i32, ...) @dev_notice(i32* %119, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %124 = load i32, i32* @CXL_PSL_TFC_An, align 4
  %125 = load i32, i32* @CXL_PSL_TFC_An_AE, align 4
  %126 = call i32 @cxl_p2n_write(%struct.cxl_afu* %123, i32 %124, i32 %125)
  br label %142

127:                                              ; preds = %103
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %132 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %131, i32 0, i32 0
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (i32*, i8*, i32, ...) @dev_notice(i32* %132, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %136 = load i32, i32* @CXL_PSL_TFC_An, align 4
  %137 = load i32, i32* @CXL_PSL_TFC_An_A, align 4
  %138 = call i32 @cxl_p2n_write(%struct.cxl_afu* %135, i32 %136, i32 %137)
  br label %141

139:                                              ; preds = %127
  %140 = call i32 (...) @cpu_relax()
  br label %141

141:                                              ; preds = %139, %130
  br label %142

142:                                              ; preds = %141, %114
  %143 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %144 = load i32, i32* @CXL_PSL_SCNTL_An, align 4
  %145 = call i32 @cxl_p1n_read(%struct.cxl_afu* %143, i32 %144)
  store i32 %145, i32* %3, align 4
  br label %73

146:                                              ; preds = %73
  %147 = call i32 (...) @local_clock()
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %7, align 4
  %150 = sub nsw i32 %148, %149
  %151 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %150)
  %152 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %153 = load i32, i32* @CXL_PSL_SCNTL_An, align 4
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @CXL_PSL_SCNTL_An_Pc, align 4
  %156 = xor i32 %155, -1
  %157 = and i32 %154, %156
  %158 = call i32 @cxl_p1n_write(%struct.cxl_afu* %152, i32 %153, i32 %157)
  br label %159

159:                                              ; preds = %146, %100, %84, %46
  %160 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %161 = load i32, i32* @CXL_PSL_SCNTL_An_Pc, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @trace_cxl_psl_ctrl_done(%struct.cxl_afu* %160, i32 %161, i32 %162)
  %164 = load i32, i32* %11, align 4
  ret i32 %164
}

declare dso_local i32 @cxl_p1n_read(%struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_p2n_read(%struct.cxl_afu*, i32) #1

declare dso_local i32 @trace_cxl_psl_ctrl(%struct.cxl_afu*, i32) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i64 @cxl_is_power8(...) #1

declare dso_local i64 @cxl_is_power9(...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @cxl_afu_disable(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @local_clock(...) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @pr_devel_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*, i32, ...) #1

declare dso_local i32 @cxl_p2n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @trace_cxl_psl_ctrl_done(%struct.cxl_afu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
