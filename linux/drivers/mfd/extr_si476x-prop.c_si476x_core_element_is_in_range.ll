; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-prop.c_si476x_core_element_is_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-prop.c_si476x_core_element_is_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_property_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.si476x_property_range*, i64)* @si476x_core_element_is_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_element_is_in_range(i64 %0, %struct.si476x_property_range* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.si476x_property_range*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.si476x_property_range* %1, %struct.si476x_property_range** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.si476x_property_range*, %struct.si476x_property_range** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.si476x_property_range, %struct.si476x_property_range* %16, i64 %18
  %20 = getelementptr inbounds %struct.si476x_property_range, %struct.si476x_property_range* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %15, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.si476x_property_range*, %struct.si476x_property_range** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.si476x_property_range, %struct.si476x_property_range* %25, i64 %27
  %29 = getelementptr inbounds %struct.si476x_property_range, %struct.si476x_property_range* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %24, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %38

33:                                               ; preds = %23, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %9

37:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
