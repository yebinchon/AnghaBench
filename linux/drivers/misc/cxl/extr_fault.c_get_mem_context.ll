; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_get_mem_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_get_mem_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.cxl_context = type { %struct.mm_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mm_struct* (%struct.cxl_context*)* @get_mem_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mm_struct* @get_mem_context(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.cxl_context*, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %3, align 8
  %4 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %5 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %4, i32 0, i32 0
  %6 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %7 = icmp eq %struct.mm_struct* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.mm_struct* null, %struct.mm_struct** %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %11 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = call i32 @atomic_inc_not_zero(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store %struct.mm_struct* null, %struct.mm_struct** %2, align 8
  br label %21

17:                                               ; preds = %9
  %18 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %19 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %18, i32 0, i32 0
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  store %struct.mm_struct* %20, %struct.mm_struct** %2, align 8
  br label %21

21:                                               ; preds = %17, %16, %8
  %22 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  ret %struct.mm_struct* %22
}

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
