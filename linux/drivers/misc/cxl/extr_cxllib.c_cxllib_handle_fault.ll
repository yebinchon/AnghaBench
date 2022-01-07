; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_cxllib_handle_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_cxllib_handle_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxllib_handle_fault(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %16 = icmp eq %struct.mm_struct* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %73

20:                                               ; preds = %4
  %21 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @get_vma_info(%struct.mm_struct* %21, i64 %22, i64* %12, i64* %13, i64* %14)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %73

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %14, align 8
  %31 = sub i64 %30, 1
  %32 = xor i64 %31, -1
  %33 = and i64 %29, %32
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %68, %28
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %36, %37
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44, %40
  %49 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @get_vma_info(%struct.mm_struct* %49, i64 %50, i64* %12, i64* %13, i64* %14)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %73

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %44
  %58 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @cxl_handle_mm_fault(%struct.mm_struct* %58, i64 %59, i64 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %73

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %11, align 8
  br label %34

72:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %64, %54, %26, %17
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @get_vma_info(%struct.mm_struct*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @cxl_handle_mm_fault(%struct.mm_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
