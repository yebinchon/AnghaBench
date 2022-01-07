; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_output_console_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_output_console_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.octeon_console = type { i8*, i32 (%struct.octeon_device*, i32, i8*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %struct.octeon_console*, i64, i8*, i64)* @output_console_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_console_line(%struct.octeon_device* %0, %struct.octeon_console* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca %struct.octeon_console*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %6, align 8
  store %struct.octeon_console* %1, %struct.octeon_console** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** %9, align 8
  store i8* %14, i8** %11, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %86, %5
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %89

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %85

26:                                               ; preds = %19
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %31 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %26
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %40 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %45 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %44, i32 0, i32 1
  %46 = load i32 (%struct.octeon_device*, i32, i8*, i8*)*, i32 (%struct.octeon_device*, i32, i8*, i8*)** %45, align 8
  %47 = icmp ne i32 (%struct.octeon_device*, i32, i8*, i8*)* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %50 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %49, i32 0, i32 1
  %51 = load i32 (%struct.octeon_device*, i32, i8*, i8*)*, i32 (%struct.octeon_device*, i32, i8*, i8*)** %50, align 8
  %52 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %56 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 %51(%struct.octeon_device* %52, i32 %54, i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %48, %43
  %61 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %62 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 1
  br label %80

65:                                               ; preds = %37, %26
  %66 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %67 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %66, i32 0, i32 1
  %68 = load i32 (%struct.octeon_device*, i32, i8*, i8*)*, i32 (%struct.octeon_device*, i32, i8*, i8*)** %67, align 8
  %69 = icmp ne i32 (%struct.octeon_device*, i32, i8*, i8*)* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %72 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %71, i32 0, i32 1
  %73 = load i32 (%struct.octeon_device*, i32, i8*, i8*)*, i32 (%struct.octeon_device*, i32, i8*, i8*)** %72, align 8
  %74 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 %73(%struct.octeon_device* %74, i32 %76, i8* %77, i8* null)
  br label %79

79:                                               ; preds = %70, %65
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %11, align 8
  br label %85

85:                                               ; preds = %80, %19
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %15

89:                                               ; preds = %15
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = icmp ne i8* %90, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 0, i8* %98, align 1
  %99 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %100 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strlen(i8* %101)
  store i64 %102, i64* %13, align 8
  %103 = load %struct.octeon_console*, %struct.octeon_console** %7, align 8
  %104 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8*, i8** %11, align 8
  %109 = load i64, i64* %13, align 8
  %110 = sub i64 8, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @strncpy(i8* %107, i8* %108, i32 %111)
  br label %113

113:                                              ; preds = %95, %89
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
