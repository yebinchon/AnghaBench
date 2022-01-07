; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_ciintf_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_ciintf_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_ci = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@DEBICICTL = common dso_local global i32 0, align 4
@DEBIADDR_CICONTROL = common dso_local global i32 0, align 4
@CICONTROL_CAMDETECT = common dso_local global i32 0, align 4
@SAA7146_GPIO_IRQLO = common dso_local global i32 0, align 4
@SLOTSTATUS_NONE = common dso_local global i32 0, align 4
@SLOTSTATUS_PRESENT = common dso_local global i32 0, align 4
@DVB_CA_EN50221_CAMCHANGE_INSERTED = common dso_local global i32 0, align 4
@SLOTSTATUS_RESET = common dso_local global i32 0, align 4
@SLOTSTATUS_READY = common dso_local global i32 0, align 4
@SAA7146_GPIO_IRQHI = common dso_local global i32 0, align 4
@SLOTSTATUS_OCCUPIED = common dso_local global i32 0, align 4
@DVB_CA_EN50221_CAMCHANGE_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ciintf_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciintf_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.budget_ci*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.budget_ci*
  store %struct.budget_ci* %7, %struct.budget_ci** %3, align 8
  %8 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %9 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  store %struct.saa7146_dev* %11, %struct.saa7146_dev** %4, align 8
  %12 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %13 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %93

18:                                               ; preds = %1
  %19 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %20 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %19, i32 0, i32 2
  %21 = load i32, i32* @DEBICICTL, align 4
  %22 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %23 = call i32 @ttpci_budget_debiread(%struct.TYPE_2__* %20, i32 %21, i32 %22, i32 1, i32 1, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CICONTROL_CAMDETECT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %18
  %29 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %30 = load i32, i32* @SAA7146_GPIO_IRQLO, align 4
  %31 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %29, i32 0, i32 %30)
  %32 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %33 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load i32, i32* @SLOTSTATUS_PRESENT, align 4
  %40 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %41 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %43 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %42, i32 0, i32 1
  %44 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_INSERTED, align 4
  %45 = call i32 @dvb_ca_en50221_camchange_irq(i32* %43, i32 0, i32 %44)
  br label %73

46:                                               ; preds = %28
  %47 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %48 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SLOTSTATUS_RESET, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* @SLOTSTATUS_READY, align 4
  %55 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %56 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %58 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %57, i32 0, i32 1
  %59 = call i32 @dvb_ca_en50221_camready_irq(i32* %58, i32 0)
  br label %72

60:                                               ; preds = %46
  %61 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %62 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SLOTSTATUS_READY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %69 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %68, i32 0, i32 1
  %70 = call i32 @dvb_ca_en50221_frda_irq(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %72, %38
  br label %93

74:                                               ; preds = %18
  %75 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %76 = load i32, i32* @SAA7146_GPIO_IRQHI, align 4
  %77 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %75, i32 0, i32 %76)
  %78 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %79 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SLOTSTATUS_OCCUPIED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %86 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %87 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %89 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %88, i32 0, i32 1
  %90 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_REMOVED, align 4
  %91 = call i32 @dvb_ca_en50221_camchange_irq(i32* %89, i32 0, i32 %90)
  br label %92

92:                                               ; preds = %84, %74
  br label %93

93:                                               ; preds = %17, %92, %73
  ret void
}

declare dso_local i32 @ttpci_budget_debiread(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @dvb_ca_en50221_camchange_irq(i32*, i32, i32) #1

declare dso_local i32 @dvb_ca_en50221_camready_irq(i32*, i32) #1

declare dso_local i32 @dvb_ca_en50221_frda_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
