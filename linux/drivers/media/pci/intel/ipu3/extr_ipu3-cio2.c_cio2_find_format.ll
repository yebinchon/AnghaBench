; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu3_cio2_fmt = type { i64, i64 }

@formats = common dso_local global %struct.ipu3_cio2_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipu3_cio2_fmt* (i64*, i64*)* @cio2_find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipu3_cio2_fmt* @cio2_find_format(i64* %0, i64* %1) #0 {
  %3 = alloca %struct.ipu3_cio2_fmt*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ipu3_cio2_fmt*, %struct.ipu3_cio2_fmt** @formats, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.ipu3_cio2_fmt* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %7
  %13 = load i64*, i64** %4, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ipu3_cio2_fmt*, %struct.ipu3_cio2_fmt** @formats, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ipu3_cio2_fmt, %struct.ipu3_cio2_fmt* %18, i64 %20
  %22 = getelementptr inbounds %struct.ipu3_cio2_fmt, %struct.ipu3_cio2_fmt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %45

26:                                               ; preds = %15, %12
  %27 = load i64*, i64** %5, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ipu3_cio2_fmt*, %struct.ipu3_cio2_fmt** @formats, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ipu3_cio2_fmt, %struct.ipu3_cio2_fmt* %32, i64 %34
  %36 = getelementptr inbounds %struct.ipu3_cio2_fmt, %struct.ipu3_cio2_fmt* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %45

40:                                               ; preds = %29, %26
  %41 = load %struct.ipu3_cio2_fmt*, %struct.ipu3_cio2_fmt** @formats, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ipu3_cio2_fmt, %struct.ipu3_cio2_fmt* %41, i64 %43
  store %struct.ipu3_cio2_fmt* %44, %struct.ipu3_cio2_fmt** %3, align 8
  br label %49

45:                                               ; preds = %39, %25
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %7

48:                                               ; preds = %7
  store %struct.ipu3_cio2_fmt* null, %struct.ipu3_cio2_fmt** %3, align 8
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.ipu3_cio2_fmt*, %struct.ipu3_cio2_fmt** %3, align 8
  ret %struct.ipu3_cio2_fmt* %50
}

declare dso_local i32 @ARRAY_SIZE(%struct.ipu3_cio2_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
