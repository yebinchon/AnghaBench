; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mt6397-irq.c_mt6397_irq_handle_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mt6397-irq.c_mt6397_irq_handle_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6397_chip = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to read irq status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt6397_chip*, i32, i32)* @mt6397_irq_handle_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt6397_irq_handle_reg(%struct.mt6397_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt6397_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt6397_chip* %0, %struct.mt6397_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mt6397_chip*, %struct.mt6397_chip** %4, align 8
  %12 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.mt6397_chip*, %struct.mt6397_chip** %4, align 8
  %20 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %59

24:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.mt6397_chip*, %struct.mt6397_chip** %4, align 8
  %36 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @irq_find_mapping(i32 %37, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @handle_nested_irq(i32 %45)
  br label %47

47:                                               ; preds = %44, %34
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.mt6397_chip*, %struct.mt6397_chip** %4, align 8
  %54 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @regmap_write(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %18
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
