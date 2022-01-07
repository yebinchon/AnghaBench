; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_handle_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_handle_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl_context*, i32, i32)* }
%struct.cxl_context = type { i32 }
%struct.mm_struct = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Page fault successfully handled for pe: %i!\0A\00", align 1
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@CXL_PSL_TFC_An_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_context*, %struct.mm_struct*, i32, i32)* @cxl_handle_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_handle_page_fault(%struct.cxl_context* %0, %struct.mm_struct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cxl_context*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @trace_cxl_pte_miss(%struct.cxl_context* %9, i32 %10, i32 %11)
  %13 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @cxl_handle_mm_fault(%struct.mm_struct* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %20 = call i32 @cxl_ack_ae(%struct.cxl_context* %19)
  br label %32

21:                                               ; preds = %4
  %22 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %23 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_devel(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.cxl_context*, i32, i32)*, i32 (%struct.cxl_context*, i32, i32)** %27, align 8
  %29 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %30 = load i32, i32* @CXL_PSL_TFC_An_R, align 4
  %31 = call i32 %28(%struct.cxl_context* %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @trace_cxl_pte_miss(%struct.cxl_context*, i32, i32) #1

declare dso_local i64 @cxl_handle_mm_fault(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @cxl_ack_ae(%struct.cxl_context*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
