; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_handle_hierarchical_latch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_handle_hierarchical_latch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500 = type { i32 }

@AB8500_INTERRUPT = common dso_local global i32 0, align 4
@AB8500_IT_LATCH1_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500*, i32, i32)* @ab8500_handle_hierarchical_latch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_handle_hierarchical_latch(%struct.ab8500* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ab8500* %0, %struct.ab8500** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %12

12:                                               ; preds = %50, %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @__ffs(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 3
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @update_latch_offset(i32* %10, i32 %19)
  %21 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %22 = load i32, i32* @AB8500_INTERRUPT, align 4
  %23 = load i64, i64* @AB8500_IT_LATCH1_REG, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @get_register_interruptible(%struct.ab8500* %21, i32 %22, i64 %26, i32* %11)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %12
  br label %44

34:                                               ; preds = %30
  %35 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ab8500_handle_hierarchical_line(%struct.ab8500* %35, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %12, label %53

53:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @update_latch_offset(i32*, i32) #1

declare dso_local i32 @get_register_interruptible(%struct.ab8500*, i32, i64, i32*) #1

declare dso_local i32 @ab8500_handle_hierarchical_line(%struct.ab8500*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
