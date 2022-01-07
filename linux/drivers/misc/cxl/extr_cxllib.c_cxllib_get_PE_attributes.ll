; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_cxllib_get_PE_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_cxllib_get_PE_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cxllib_pe_attributes = type { i64, i64, i32, i32 }
%struct.mm_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CXL_TRANSLATED_MODE = common dso_local global i64 0, align 8
@CXL_REAL_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPRN_LPID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxllib_get_PE_attributes(%struct.task_struct* %0, i64 %1, %struct.cxllib_pe_attributes* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cxllib_pe_attributes*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cxllib_pe_attributes* %2, %struct.cxllib_pe_attributes** %7, align 8
  store %struct.mm_struct* null, %struct.mm_struct** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @CXL_TRANSLATED_MODE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @CXL_REAL_MODE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %12, %3
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = icmp eq %struct.task_struct* %20, null
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @CXL_REAL_MODE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @cxl_calculate_sr(i32 0, i32 %22, i32 %26, i32 1)
  %28 = load %struct.cxllib_pe_attributes*, %struct.cxllib_pe_attributes** %7, align 8
  %29 = getelementptr inbounds %struct.cxllib_pe_attributes, %struct.cxllib_pe_attributes* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @SPRN_LPID, align 4
  %31 = call i32 @mfspr(i32 %30)
  %32 = load %struct.cxllib_pe_attributes*, %struct.cxllib_pe_attributes** %7, align 8
  %33 = getelementptr inbounds %struct.cxllib_pe_attributes, %struct.cxllib_pe_attributes* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = icmp ne %struct.task_struct* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %19
  %37 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %38 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %37)
  store %struct.mm_struct* %38, %struct.mm_struct** %8, align 8
  %39 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %40 = icmp eq %struct.mm_struct* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %65

44:                                               ; preds = %36
  %45 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cxllib_pe_attributes*, %struct.cxllib_pe_attributes** %7, align 8
  %50 = getelementptr inbounds %struct.cxllib_pe_attributes, %struct.cxllib_pe_attributes* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %52 = call i32 @mmput(%struct.mm_struct* %51)
  %53 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.cxllib_pe_attributes*, %struct.cxllib_pe_attributes** %7, align 8
  %58 = getelementptr inbounds %struct.cxllib_pe_attributes, %struct.cxllib_pe_attributes* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %64

59:                                               ; preds = %19
  %60 = load %struct.cxllib_pe_attributes*, %struct.cxllib_pe_attributes** %7, align 8
  %61 = getelementptr inbounds %struct.cxllib_pe_attributes, %struct.cxllib_pe_attributes* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.cxllib_pe_attributes*, %struct.cxllib_pe_attributes** %7, align 8
  %63 = getelementptr inbounds %struct.cxllib_pe_attributes, %struct.cxllib_pe_attributes* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %44
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %41, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @cxl_calculate_sr(i32, i32, i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
