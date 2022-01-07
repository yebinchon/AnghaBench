; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-patch.c_budget_av7110_send_fw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-patch.c_budget_av7110_send_fw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_patch = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@DEBINOSWAP = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget_patch*, i64*, i32)* @budget_av7110_send_fw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @budget_av7110_send_fw_cmd(%struct.budget_patch* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.budget_patch*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.budget_patch* %0, %struct.budget_patch** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.budget_patch*, %struct.budget_patch** %4, align 8
  %9 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget_patch* %8)
  store i32 2, i32* %7, align 4
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.budget_patch*, %struct.budget_patch** %4, align 8
  %16 = load i32, i32* @DEBINOSWAP, align 4
  %17 = load i64, i64* @COMMAND, align 8
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @ttpci_budget_debiwrite(%struct.budget_patch* %15, i32 %16, i64 %21, i32 2, i32 %27, i32 0, i32 0)
  %29 = call i32 @msleep(i32 5)
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.budget_patch*, %struct.budget_patch** %4, align 8
  %38 = load i32, i32* @DEBINOSWAP, align 4
  %39 = load i64, i64* @COMMAND, align 8
  %40 = add nsw i64 %39, 2
  %41 = load i64*, i64** %5, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @ttpci_budget_debiwrite(%struct.budget_patch* %37, i32 %38, i64 %40, i32 2, i32 %44, i32 0, i32 0)
  br label %52

46:                                               ; preds = %33
  %47 = load %struct.budget_patch*, %struct.budget_patch** %4, align 8
  %48 = load i32, i32* @DEBINOSWAP, align 4
  %49 = load i64, i64* @COMMAND, align 8
  %50 = add nsw i64 %49, 2
  %51 = call i32 @ttpci_budget_debiwrite(%struct.budget_patch* %47, i32 %48, i64 %50, i32 2, i32 0, i32 0, i32 0)
  br label %52

52:                                               ; preds = %46, %36
  %53 = call i32 @msleep(i32 5)
  %54 = load %struct.budget_patch*, %struct.budget_patch** %4, align 8
  %55 = load i32, i32* @DEBINOSWAP, align 4
  %56 = load i64, i64* @COMMAND, align 8
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @ttpci_budget_debiwrite(%struct.budget_patch* %54, i32 %55, i64 %56, i32 2, i32 %60, i32 0, i32 0)
  %62 = call i32 @msleep(i32 5)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget_patch*) #1

declare dso_local i32 @ttpci_budget_debiwrite(%struct.budget_patch*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
