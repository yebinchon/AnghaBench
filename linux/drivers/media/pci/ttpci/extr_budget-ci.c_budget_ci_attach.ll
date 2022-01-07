; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_budget_ci_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_budget_ci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.budget_ci* }
%struct.budget_ci = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.budget_ci* }
%struct.saa7146_pci_extension_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"budget_ci: %p\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)* @budget_ci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @budget_ci_attach(%struct.saa7146_dev* %0, %struct.saa7146_pci_extension_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_pci_extension_data*, align 8
  %6 = alloca %struct.budget_ci*, align 8
  %7 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_pci_extension_data* %1, %struct.saa7146_pci_extension_data** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.budget_ci* @kzalloc(i32 8, i32 %8)
  store %struct.budget_ci* %9, %struct.budget_ci** %6, align 8
  %10 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %11 = icmp ne %struct.budget_ci* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %17 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.budget_ci* %16)
  %18 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %20 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %19, i32 0, i32 0
  store %struct.budget_ci* %18, %struct.budget_ci** %20, align 8
  %21 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %22 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %21, i32 0, i32 0
  %23 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %24 = load %struct.saa7146_pci_extension_data*, %struct.saa7146_pci_extension_data** %5, align 8
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = load i32, i32* @adapter_nr, align 4
  %27 = call i32 @ttpci_budget_init(%struct.TYPE_6__* %22, %struct.saa7146_dev* %23, %struct.saa7146_pci_extension_data* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %54

31:                                               ; preds = %15
  %32 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %33 = call i32 @msp430_ir_init(%struct.budget_ci* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %50

37:                                               ; preds = %31
  %38 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %39 = call i32 @ciintf_init(%struct.budget_ci* %38)
  %40 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %41 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %42 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store %struct.budget_ci* %40, %struct.budget_ci** %44, align 8
  %45 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %46 = call i32 @frontend_init(%struct.budget_ci* %45)
  %47 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %48 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %47, i32 0, i32 0
  %49 = call i32 @ttpci_budget_init_hooks(%struct.TYPE_6__* %48)
  store i32 0, i32* %3, align 4
  br label %59

50:                                               ; preds = %36
  %51 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %52 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %51, i32 0, i32 0
  %53 = call i32 @ttpci_budget_deinit(%struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %50, %30
  %55 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %56 = call i32 @kfree(%struct.budget_ci* %55)
  br label %57

57:                                               ; preds = %54, %12
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %37
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.budget_ci* @kzalloc(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, %struct.budget_ci*) #1

declare dso_local i32 @ttpci_budget_init(%struct.TYPE_6__*, %struct.saa7146_dev*, %struct.saa7146_pci_extension_data*, i32, i32) #1

declare dso_local i32 @msp430_ir_init(%struct.budget_ci*) #1

declare dso_local i32 @ciintf_init(%struct.budget_ci*) #1

declare dso_local i32 @frontend_init(%struct.budget_ci*) #1

declare dso_local i32 @ttpci_budget_init_hooks(%struct.TYPE_6__*) #1

declare dso_local i32 @ttpci_budget_deinit(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.budget_ci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
