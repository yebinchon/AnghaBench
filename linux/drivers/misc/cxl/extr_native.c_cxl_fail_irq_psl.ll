; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_fail_irq_psl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_fail_irq_psl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32 }
%struct.cxl_irq_info = type { i32 }

@CXL_PSL_TFC_An = common dso_local global i32 0, align 4
@CXL_PSL_TFC_An_AE = common dso_local global i32 0, align 4
@CXL_PSL_TFC_An_A = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_fail_irq_psl(%struct.cxl_afu* %0, %struct.cxl_irq_info* %1) #0 {
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca %struct.cxl_irq_info*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  store %struct.cxl_irq_info* %1, %struct.cxl_irq_info** %4, align 8
  %5 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %6 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %4, align 8
  %7 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @cxl_is_translation_fault(%struct.cxl_afu* %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %13 = load i32, i32* @CXL_PSL_TFC_An, align 4
  %14 = load i32, i32* @CXL_PSL_TFC_An_AE, align 4
  %15 = call i32 @cxl_p2n_write(%struct.cxl_afu* %12, i32 %13, i32 %14)
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %18 = load i32, i32* @CXL_PSL_TFC_An, align 4
  %19 = load i32, i32* @CXL_PSL_TFC_An_A, align 4
  %20 = call i32 @cxl_p2n_write(%struct.cxl_afu* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %22
}

declare dso_local i64 @cxl_is_translation_fault(%struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_p2n_write(%struct.cxl_afu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
