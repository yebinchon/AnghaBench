; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget.c_budget_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget.c_budget_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32* }
%struct.budget = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @budget_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @budget_detach(%struct.saa7146_dev* %0) #0 {
  %2 = alloca %struct.saa7146_dev*, align 8
  %3 = alloca %struct.budget*, align 8
  %4 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %2, align 8
  %5 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %6 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to %struct.budget*
  store %struct.budget* %8, %struct.budget** %3, align 8
  %9 = load %struct.budget*, %struct.budget** %3, align 8
  %10 = getelementptr inbounds %struct.budget, %struct.budget* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.budget*, %struct.budget** %3, align 8
  %15 = getelementptr inbounds %struct.budget, %struct.budget* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dvb_unregister_frontend(i64 %16)
  %18 = load %struct.budget*, %struct.budget** %3, align 8
  %19 = getelementptr inbounds %struct.budget, %struct.budget* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dvb_frontend_detach(i64 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.budget*, %struct.budget** %3, align 8
  %24 = call i32 @ttpci_budget_deinit(%struct.budget* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.budget*, %struct.budget** %3, align 8
  %26 = call i32 @kfree(%struct.budget* %25)
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %28 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @dvb_unregister_frontend(i64) #1

declare dso_local i32 @dvb_frontend_detach(i64) #1

declare dso_local i32 @ttpci_budget_deinit(%struct.budget*) #1

declare dso_local i32 @kfree(%struct.budget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
