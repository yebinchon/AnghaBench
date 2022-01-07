; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_check_conflict_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_check_conflict_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"LPC ICH GPIO3\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LPC ICH GPIO2\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LPC ICH GPIO1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*)* @lpc_ich_check_conflict_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_ich_check_conflict_gpio(%struct.resource* %0) #0 {
  %2 = alloca %struct.resource*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.resource*, %struct.resource** %2, align 8
  %6 = call i32 @resource_size(%struct.resource* %5)
  %7 = icmp sge i32 %6, 80
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.resource*, %struct.resource** %2, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 64
  %13 = call i32 @acpi_check_region(i64 %12, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %8, %1
  %19 = load %struct.resource*, %struct.resource** %2, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 48
  %23 = call i32 @acpi_check_region(i64 %22, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, 2
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.resource*, %struct.resource** %2, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 0
  %33 = call i32 @acpi_check_region(i64 %32, i32 48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  ret i32 %47
}

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @acpi_check_region(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
