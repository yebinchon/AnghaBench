; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_irq_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_irq_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)* }
%struct.cxl_context = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cxl_irq_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"CXL interrupt %i for afu pe: %i DSISR: %#llx DAR: %#llx\0A\00", align 1
@CXL_PSL_DSISR_An_DS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Scheduling segment miss handling for later pe: %i\0A\00", align 1
@CXL_PSL_DSISR_An_M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CXL interrupt: PTE not found\0A\00", align 1
@CXL_PSL_DSISR_An_P = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"CXL interrupt: Storage protection violation\0A\00", align 1
@CXL_PSL_DSISR_An_A = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [76 x i8] c"CXL interrupt: AFU lock access to write through or cache inhibited storage\0A\00", align 1
@CXL_PSL_DSISR_An_S = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"CXL interrupt: Access was afu_wr or afu_zero\0A\00", align 1
@CXL_PSL_DSISR_An_K = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [74 x i8] c"CXL interrupt: Access not permitted by virtual page class key protection\0A\00", align 1
@CXL_PSL_DSISR_An_DM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Scheduling page fault handling for later pe: %i\0A\00", align 1
@CXL_PSL_DSISR_An_ST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"CXL interrupt: Segment Table PTE not found\0A\00", align 1
@CXL_PSL_DSISR_An_UR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"CXL interrupt: AURP PTE not found\0A\00", align 1
@CXL_PSL_DSISR_An_PE = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8
@CXL_PSL_DSISR_An_AE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"CXL interrupt: AFU Error 0x%016llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"CXL AFU Error undelivered to pe %i: 0x%016llx\0A\00", align 1
@CXL_PSL_TFC_An_A = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CXL_PSL_DSISR_An_OC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"CXL interrupt: OS Context Warning\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Unhandled CXL PSL IRQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_irq_psl8(i32 %0, %struct.cxl_context* %1, %struct.cxl_irq_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxl_context*, align 8
  %7 = alloca %struct.cxl_irq_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cxl_context* %1, %struct.cxl_context** %6, align 8
  store %struct.cxl_irq_info* %2, %struct.cxl_irq_info** %7, align 8
  %10 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %11 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %14 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @trace_cxl_psl_irq(%struct.cxl_context* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %23 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CXL_PSL_DSISR_An_DS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %34 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @schedule_cxl_fault(%struct.cxl_context* %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %180

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CXL_PSL_DSISR_An_M, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @CXL_PSL_DSISR_An_P, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @CXL_PSL_DSISR_An_A, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @CXL_PSL_DSISR_An_S, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @CXL_PSL_DSISR_An_K, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @CXL_PSL_DSISR_An_DM, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %83 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  %86 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @schedule_cxl_fault(%struct.cxl_context* %86, i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %180

90:                                               ; preds = %76
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @CXL_PSL_DSISR_An_ST, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @CXL_PSL_DSISR_An_UR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @CXL_PSL_DSISR_An_PE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %111, align 8
  %113 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %116 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 %112(%struct.cxl_context* %113, i32 %114, i32 %117)
  store i32 %118, i32* %4, align 4
  br label %180

119:                                              ; preds = %104
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @CXL_PSL_DSISR_An_AE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %170

124:                                              ; preds = %119
  %125 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %126 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %127)
  %129 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %130 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %124
  %134 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %135 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %134, i32 0, i32 5
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %139 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %142 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dev_err_ratelimited(i32* %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %140, i32 %143)
  br label %162

145:                                              ; preds = %124
  %146 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %147 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %146, i32 0, i32 2
  %148 = call i32 @spin_lock(i32* %147)
  %149 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %150 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %153 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %155 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %157 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %156, i32 0, i32 2
  %158 = call i32 @spin_unlock(i32* %157)
  %159 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %160 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %159, i32 0, i32 1
  %161 = call i32 @wake_up_all(i32* %160)
  br label %162

162:                                              ; preds = %145, %133
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %164, align 8
  %166 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %167 = load i32, i32* @CXL_PSL_TFC_An_A, align 4
  %168 = call i32 %165(%struct.cxl_context* %166, i32 %167, i32 0)
  %169 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %169, i32* %4, align 4
  br label %180

170:                                              ; preds = %119
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @CXL_PSL_DSISR_An_OC, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %170
  %178 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %179 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %177, %162, %109, %81, %32
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @trace_cxl_psl_irq(%struct.cxl_context*, i32, i32, i32) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i32 @schedule_cxl_fault(%struct.cxl_context*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
