; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_debiread_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_debiread_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@DEBI_COMMAND = common dso_local global i32 0, align 4
@DEBI_CONFIG = common dso_local global i32 0, align 4
@DEBI_PAGE = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@DEBI_AD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget*, i32, i32, i32, i32)* @ttpci_budget_debiread_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttpci_budget_debiread_nolock(%struct.budget* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.budget*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.saa7146_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.budget* %0, %struct.budget** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.budget*, %struct.budget** %7, align 8
  %15 = getelementptr inbounds %struct.budget, %struct.budget* %14, i32 0, i32 0
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %15, align 8
  store %struct.saa7146_dev* %16, %struct.saa7146_dev** %12, align 8
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev* %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %65

24:                                               ; preds = %5
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  %26 = load i32, i32* @DEBI_COMMAND, align 4
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %27, 17
  %29 = or i32 %28, 65536
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 65535
  %32 = or i32 %29, %31
  %33 = call i32 @saa7146_write(%struct.saa7146_dev* %25, i32 %26, i32 %32)
  %34 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  %35 = load i32, i32* @DEBI_CONFIG, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @saa7146_write(%struct.saa7146_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  %39 = load i32, i32* @DEBI_PAGE, align 4
  %40 = call i32 @saa7146_write(%struct.saa7146_dev* %38, i32 %39, i32 0)
  %41 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  %42 = load i32, i32* @MC2, align 4
  %43 = call i32 @saa7146_write(%struct.saa7146_dev* %41, i32 %42, i32 131074)
  %44 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %24
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %65

51:                                               ; preds = %24
  %52 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  %53 = load i32, i32* @DEBI_AD, align 4
  %54 = call i32 @saa7146_read(%struct.saa7146_dev* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 4, %55
  %57 = mul nsw i32 %56, 8
  %58 = zext i32 %57 to i64
  %59 = lshr i64 4294967295, %58
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %51, %49, %22
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @saa7146_wait_for_debi_done(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
