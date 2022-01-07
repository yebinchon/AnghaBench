; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_irq_psl9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_irq_psl9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)* }
%struct.cxl_context = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cxl_irq_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"CXL interrupt %i for afu pe: %i DSISR: %#llx DAR: %#llx\0A\00", align 1
@CXL_PSL9_DSISR_An_TF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"CXL interrupt: Scheduling translation fault handling for later (pe: %i)\0A\00", align 1
@CXL_PSL9_DSISR_An_PE = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8
@CXL_PSL9_DSISR_An_AE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CXL interrupt: AFU Error 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"CXL AFU Error undelivered to pe %i: 0x%016llx\0A\00", align 1
@CXL_PSL_TFC_An_A = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CXL_PSL9_DSISR_An_OC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"CXL interrupt: OS Context Warning\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unhandled CXL PSL IRQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_irq_psl9(i32 %0, %struct.cxl_context* %1, %struct.cxl_irq_info* %2) #0 {
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
  %20 = call i32 @trace_cxl_psl9_irq(%struct.cxl_context* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %23 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CXL_PSL9_DSISR_An_TF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %34 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @schedule_cxl_fault(%struct.cxl_context* %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %117

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CXL_PSL9_DSISR_An_PE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %48, align 8
  %50 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %53 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 %49(%struct.cxl_context* %50, i32 %51, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %117

56:                                               ; preds = %41
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @CXL_PSL9_DSISR_An_AE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %107

61:                                               ; preds = %56
  %62 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %63 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %67 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %61
  %71 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %72 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %71, i32 0, i32 5
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %76 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %79 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err_ratelimited(i32* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %80)
  br label %99

82:                                               ; preds = %61
  %83 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %84 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %83, i32 0, i32 2
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %7, align 8
  %87 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %90 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %92 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %94 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %93, i32 0, i32 2
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %97 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %96, i32 0, i32 1
  %98 = call i32 @wake_up_all(i32* %97)
  br label %99

99:                                               ; preds = %82, %70
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %101, align 8
  %103 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %104 = load i32, i32* @CXL_PSL_TFC_An_A, align 4
  %105 = call i32 %102(%struct.cxl_context* %103, i32 %104, i32 0)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %106, i32* %4, align 4
  br label %117

107:                                              ; preds = %56
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @CXL_PSL9_DSISR_An_OC, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %99, %46, %32
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @trace_cxl_psl9_irq(%struct.cxl_context*, i32, i32, i32) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i32 @schedule_cxl_fault(%struct.cxl_context*, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
