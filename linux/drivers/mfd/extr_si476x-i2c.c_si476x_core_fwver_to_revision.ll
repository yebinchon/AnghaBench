; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_fwver_to_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_fwver_to_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SI476X_REVISION_A10 = common dso_local global i32 0, align 4
@SI476X_REVISION_A20 = common dso_local global i32 0, align 4
@SI476X_REVISION_A30 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Unsupported version of the firmware: %d.%d.%d, reverting to A10 compatible functions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_core*, i32, i32, i32, i32)* @si476x_core_fwver_to_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_fwver_to_revision(%struct.si476x_core* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.si476x_core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %41 [
    i32 129, label %13
    i32 131, label %22
    i32 128, label %31
    i32 130, label %40
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %21 [
    i32 5, label %15
    i32 8, label %17
    i32 10, label %19
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @SI476X_REVISION_A10, align 4
  store i32 %16, i32* %6, align 4
  br label %53

17:                                               ; preds = %13
  %18 = load i32, i32* @SI476X_REVISION_A20, align 4
  store i32 %18, i32* %6, align 4
  br label %53

19:                                               ; preds = %13
  %20 = load i32, i32* @SI476X_REVISION_A30, align 4
  store i32 %20, i32* %6, align 4
  br label %53

21:                                               ; preds = %13
  br label %43

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %30 [
    i32 5, label %24
    i32 7, label %26
    i32 9, label %28
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @SI476X_REVISION_A10, align 4
  store i32 %25, i32* %6, align 4
  br label %53

26:                                               ; preds = %22
  %27 = load i32, i32* @SI476X_REVISION_A20, align 4
  store i32 %27, i32* %6, align 4
  br label %53

28:                                               ; preds = %22
  %29 = load i32, i32* @SI476X_REVISION_A30, align 4
  store i32 %29, i32* %6, align 4
  br label %53

30:                                               ; preds = %22
  br label %43

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %39 [
    i32 3, label %33
    i32 5, label %35
    i32 7, label %37
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @SI476X_REVISION_A10, align 4
  store i32 %34, i32* %6, align 4
  br label %53

35:                                               ; preds = %31
  %36 = load i32, i32* @SI476X_REVISION_A20, align 4
  store i32 %36, i32* %6, align 4
  br label %53

37:                                               ; preds = %31
  %38 = load i32, i32* @SI476X_REVISION_A30, align 4
  store i32 %38, i32* %6, align 4
  br label %53

39:                                               ; preds = %31
  br label %43

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %5, %40
  %42 = call i32 (...) @BUG()
  store i32 -1, i32* %6, align 4
  br label %53

43:                                               ; preds = %39, %30, %21
  %44 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %45 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @SI476X_REVISION_A10, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %43, %41, %37, %35, %33, %28, %26, %24, %19, %17, %15
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
