; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { i32, i32, i32, i32, i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttpci_budget_deinit(%struct.budget* %0) #0 {
  %2 = alloca %struct.budget*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  store %struct.budget* %0, %struct.budget** %2, align 8
  %4 = load %struct.budget*, %struct.budget** %2, align 8
  %5 = getelementptr inbounds %struct.budget, %struct.budget* %4, i32 0, i32 5
  %6 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  store %struct.saa7146_dev* %6, %struct.saa7146_dev** %3, align 8
  %7 = load %struct.budget*, %struct.budget** %2, align 8
  %8 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget* %7)
  %9 = load %struct.budget*, %struct.budget** %2, align 8
  %10 = call i32 @budget_unregister(%struct.budget* %9)
  %11 = load %struct.budget*, %struct.budget** %2, align 8
  %12 = getelementptr inbounds %struct.budget, %struct.budget* %11, i32 0, i32 4
  %13 = call i32 @tasklet_kill(i32* %12)
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %15 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.budget*, %struct.budget** %2, align 8
  %18 = getelementptr inbounds %struct.budget, %struct.budget* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.budget*, %struct.budget** %2, align 8
  %21 = getelementptr inbounds %struct.budget, %struct.budget* %20, i32 0, i32 2
  %22 = call i32 @saa7146_vfree_destroy_pgtable(i32 %16, i32 %19, i32* %21)
  %23 = load %struct.budget*, %struct.budget** %2, align 8
  %24 = getelementptr inbounds %struct.budget, %struct.budget* %23, i32 0, i32 1
  %25 = call i32 @i2c_del_adapter(i32* %24)
  %26 = load %struct.budget*, %struct.budget** %2, align 8
  %27 = getelementptr inbounds %struct.budget, %struct.budget* %26, i32 0, i32 0
  %28 = call i32 @dvb_unregister_adapter(i32* %27)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget*) #1

declare dso_local i32 @budget_unregister(%struct.budget*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @saa7146_vfree_destroy_pgtable(i32, i32, i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
