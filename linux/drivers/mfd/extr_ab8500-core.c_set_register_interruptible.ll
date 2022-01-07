; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_set_register_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_set_register_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500 = type { i32 (%struct.ab8500*, i32, i32)*, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"wr: addr %#x <= %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to write reg %#x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500*, i32, i32, i32)* @set_register_interruptible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_register_interruptible(%struct.ab8500* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ab8500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ab8500* %0, %struct.ab8500** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 8
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %16 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dev_vdbg(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %22 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %25 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %24, i32 0, i32 0
  %26 = load i32 (%struct.ab8500*, i32, i32)*, i32 (%struct.ab8500*, i32, i32)** %25, align 8
  %27 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 %26(%struct.ab8500* %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %35 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %4
  %41 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %42 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
