; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_mask_and_set_register_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_mask_and_set_register_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500 = type { i32 (%struct.ab8500*, i32, i32, i32)*, i32 (%struct.ab8500*, i32)*, i32 (%struct.ab8500*, i32, i32)*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to read reg %#x: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to write reg %#x: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"mask: addr %#x => data %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to modify reg %#x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500*, i32, i32, i32, i32)* @mask_and_set_register_interruptible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask_and_set_register_interruptible(%struct.ab8500* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ab8500*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ab8500* %0, %struct.ab8500** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %19 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %22 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %21, i32 0, i32 0
  %23 = load i32 (%struct.ab8500*, i32, i32, i32)*, i32 (%struct.ab8500*, i32, i32, i32)** %22, align 8
  %24 = icmp eq i32 (%struct.ab8500*, i32, i32, i32)* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %5
  %26 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %27 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %26, i32 0, i32 1
  %28 = load i32 (%struct.ab8500*, i32)*, i32 (%struct.ab8500*, i32)** %27, align 8
  %29 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 %28(%struct.ab8500* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %36 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %93

41:                                               ; preds = %25
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %13, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %47, %48
  %50 = or i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %52 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %51, i32 0, i32 2
  %53 = load i32 (%struct.ab8500*, i32, i32)*, i32 (%struct.ab8500*, i32, i32)** %52, align 8
  %54 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 %53(%struct.ab8500* %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %41
  %61 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %62 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %41
  %68 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %69 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @dev_vdbg(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  br label %93

74:                                               ; preds = %5
  %75 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %76 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %75, i32 0, i32 0
  %77 = load i32 (%struct.ab8500*, i32, i32, i32)*, i32 (%struct.ab8500*, i32, i32, i32)** %76, align 8
  %78 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 %77(%struct.ab8500* %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %74
  %86 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %87 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %74
  br label %93

93:                                               ; preds = %92, %67, %34
  %94 = load %struct.ab8500*, %struct.ab8500** %6, align 8
  %95 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %94, i32 0, i32 3
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
