; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_budget_av_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_budget_av_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.budget_av = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"dev: %p, budget_av: %p\0A\00", align 1
@MASK_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i32*)* @budget_av_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @budget_av_irq(%struct.saa7146_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.budget_av*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.budget_av*
  store %struct.budget_av* %9, %struct.budget_av** %5, align 8
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %11 = load %struct.budget_av*, %struct.budget_av** %5, align 8
  %12 = call i32 @dprintk(i32 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %10, %struct.budget_av* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MASK_10, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ttpci_budget_irq10_handler(%struct.saa7146_dev* %19, i32* %20)
  br label %22

22:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, %struct.saa7146_dev*, %struct.budget_av*) #1

declare dso_local i32 @ttpci_budget_irq10_handler(%struct.saa7146_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
