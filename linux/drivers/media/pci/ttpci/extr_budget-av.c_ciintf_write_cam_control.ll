; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_write_cam_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_write_cam_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.budget_av = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@DEBICICAM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cam ejected 5\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32, i32)* @ciintf_write_cam_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciintf_write_cam_control(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_en50221*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.budget_av*, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.budget_av*
  store %struct.budget_av* %15, %struct.budget_av** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load %struct.budget_av*, %struct.budget_av** %10, align 8
  %23 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %27 = call i32 @saa7146_setgpio(i32 %25, i32 1, i32 %26)
  %28 = call i32 @udelay(i32 1)
  %29 = load %struct.budget_av*, %struct.budget_av** %10, align 8
  %30 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %29, i32 0, i32 0
  %31 = load i32, i32* @DEBICICAM, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 3
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ttpci_budget_debiwrite(%struct.TYPE_2__* %30, i32 %31, i32 %33, i32 1, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %21
  %41 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ciintf_slot_shutdown(%struct.dvb_ca_en50221* %41, i32 %42)
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %21
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @saa7146_setgpio(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ttpci_budget_debiwrite(%struct.TYPE_2__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ciintf_slot_shutdown(%struct.dvb_ca_en50221*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
