; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_rma_local_cpu_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_rma_local_cpu_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_window = type { i64, i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.scif_window*, i8*, i64, i32)* @scif_rma_local_cpu_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_rma_local_cpu_copy(i64 %0, %struct.scif_window* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.scif_window*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.scif_window* %1, %struct.scif_window** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load i32, i32* %13, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %27, %5
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.scif_window*, %struct.scif_window** %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i8* @_get_local_va(i64 %30, %struct.scif_window* %31, i64 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %123

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  br label %50

45:                                               ; preds = %37
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @memcpy(i8* %46, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr i8, i8* %55, i64 %54
  store i8* %56, i8** %8, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load %struct.scif_window*, %struct.scif_window** %7, align 8
  %61 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.scif_window*, %struct.scif_window** %7, align 8
  %64 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PAGE_SHIFT, align 8
  %67 = shl i64 %65, %66
  %68 = add i64 %62, %67
  store i64 %68, i64* %14, align 8
  br label %69

69:                                               ; preds = %113, %50
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %123

72:                                               ; preds = %69
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.scif_window*, %struct.scif_window** %7, align 8
  %78 = load i32, i32* @list, align 4
  %79 = call %struct.scif_window* @list_next_entry(%struct.scif_window* %77, i32 %78)
  store %struct.scif_window* %79, %struct.scif_window** %7, align 8
  %80 = load %struct.scif_window*, %struct.scif_window** %7, align 8
  %81 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.scif_window*, %struct.scif_window** %7, align 8
  %84 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PAGE_SHIFT, align 8
  %87 = shl i64 %85, %86
  %88 = add i64 %82, %87
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %76, %72
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @min(i32 %90, i64 %91)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.scif_window*, %struct.scif_window** %7, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i8* @_get_local_va(i64 %93, %struct.scif_window* %94, i64 %95)
  store i8* %96, i8** %11, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  br label %123

100:                                              ; preds = %89
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @memcpy(i8* %104, i8* %105, i64 %106)
  br label %113

108:                                              ; preds = %100
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @memcpy(i8* %109, i8* %110, i64 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr i8, i8* %118, i64 %117
  store i8* %119, i8** %8, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %9, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %9, align 8
  br label %69

123:                                              ; preds = %36, %99, %69
  ret void
}

declare dso_local i8* @_get_local_va(i64, %struct.scif_window*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local %struct.scif_window* @list_next_entry(%struct.scif_window*, i32) #1

declare dso_local i64 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
