; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_align_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_align_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_align_size(%struct.sdio_func* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @_sdio_align_size(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %15 = call i32 @sdio_max_byte_size(%struct.sdio_func* %14)
  %16 = icmp ule i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %3, align 4
  br label %114

19:                                               ; preds = %2
  %20 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %21 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %30 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = urem i32 %28, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %3, align 4
  br label %114

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add i32 %37, %40
  %42 = sub i32 %41, 1
  %43 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %44 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = udiv i32 %42, %45
  %47 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %48 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul i32 %46, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @_sdio_align_size(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %55 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = urem i32 %53, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %36
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %114

61:                                               ; preds = %36
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %64 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = urem i32 %62, %65
  %67 = call i32 @_sdio_align_size(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %70 = call i32 @sdio_max_byte_size(%struct.sdio_func* %69)
  %71 = icmp ule i32 %68, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %75 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = udiv i32 %73, %76
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %80 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul i32 %78, %81
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %82, %83
  store i32 %84, i32* %3, align 4
  br label %114

85:                                               ; preds = %61
  br label %112

86:                                               ; preds = %19
  %87 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %88 = call i32 @sdio_max_byte_size(%struct.sdio_func* %87)
  %89 = call i32 @_sdio_align_size(i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %92 = call i32 @sdio_max_byte_size(%struct.sdio_func* %91)
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %9, align 4
  %97 = urem i32 %95, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @_sdio_align_size(i32 %101)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %9, align 4
  %106 = udiv i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = mul i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = add i32 %108, %109
  store i32 %110, i32* %3, align 4
  br label %114

111:                                              ; preds = %86
  br label %112

112:                                              ; preds = %111, %85
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %103, %72, %59, %34, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @_sdio_align_size(i32) #1

declare dso_local i32 @sdio_max_byte_size(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
