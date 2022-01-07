; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_prefault_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_prefault_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32 }
%struct.copro_slb = type { i64, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }
%struct.mm_struct = type { i32, %struct.vm_area_struct* }

@.str = private unnamed_addr constant [37 x i8] c"cxl_prefault_vm unable to get mm %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_context*)* @cxl_prefault_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_prefault_vma(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.copro_slb, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %10 = call %struct.mm_struct* @get_mem_context(%struct.cxl_context* %9)
  store %struct.mm_struct* %10, %struct.mm_struct** %8, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %12 = icmp eq %struct.mm_struct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %15 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pid_nr(i32 %16)
  %18 = call i32 @pr_devel(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = call i32 @down_read(i32* %21)
  %23 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 1
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  store %struct.vm_area_struct* %25, %struct.vm_area_struct** %6, align 8
  br label %26

26:                                               ; preds = %63, %19
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = icmp ne %struct.vm_area_struct* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %57, %29
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @copro_calculate_slb(%struct.mm_struct* %40, i64 %41, %struct.copro_slb* %5)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %57

46:                                               ; preds = %39
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %5, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  %53 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %54 = call i32 @cxl_load_segment(%struct.cxl_context* %53, %struct.copro_slb* %5)
  %55 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %5, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %52, %51, %45
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @next_segment(i64 %58, i32 %60)
  store i64 %61, i64* %3, align 8
  br label %33

62:                                               ; preds = %33
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 2
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %65, align 8
  store %struct.vm_area_struct* %66, %struct.vm_area_struct** %6, align 8
  br label %26

67:                                               ; preds = %26
  %68 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %69 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %68, i32 0, i32 0
  %70 = call i32 @up_read(i32* %69)
  %71 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %72 = call i32 @mmput(%struct.mm_struct* %71)
  br label %73

73:                                               ; preds = %67, %13
  ret void
}

declare dso_local %struct.mm_struct* @get_mem_context(%struct.cxl_context*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @pid_nr(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @copro_calculate_slb(%struct.mm_struct*, i64, %struct.copro_slb*) #1

declare dso_local i32 @cxl_load_segment(%struct.cxl_context*, %struct.copro_slb*) #1

declare dso_local i64 @next_segment(i64, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
