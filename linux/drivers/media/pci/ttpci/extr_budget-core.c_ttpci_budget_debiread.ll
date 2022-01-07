; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_debiread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_debiread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttpci_budget_debiread(%struct.budget* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.budget*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.budget* %0, %struct.budget** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp sgt i32 %16, 4
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %11, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %6
  store i32 0, i32* %7, align 4
  br label %48

22:                                               ; preds = %18
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.budget*, %struct.budget** %8, align 8
  %27 = getelementptr inbounds %struct.budget, %struct.budget* %26, i32 0, i32 0
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.budget*, %struct.budget** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @ttpci_budget_debiread_nolock(%struct.budget* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load %struct.budget*, %struct.budget** %8, align 8
  %37 = getelementptr inbounds %struct.budget, %struct.budget* %36, i32 0, i32 0
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %7, align 4
  br label %48

41:                                               ; preds = %22
  %42 = load %struct.budget*, %struct.budget** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @ttpci_budget_debiread_nolock(%struct.budget* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41, %25, %21
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ttpci_budget_debiread_nolock(%struct.budget*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
