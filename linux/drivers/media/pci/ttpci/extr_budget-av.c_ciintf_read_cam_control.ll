; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_read_cam_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_read_cam_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.budget_av = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@DEBICICAM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cam ejected 3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32)* @ciintf_read_cam_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciintf_read_cam_control(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.budget_av*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.budget_av*
  store %struct.budget_av* %13, %struct.budget_av** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %21 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %25 = call i32 @saa7146_setgpio(i32 %23, i32 1, i32 %24)
  %26 = call i32 @udelay(i32 1)
  %27 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %28 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %27, i32 0, i32 0
  %29 = load i32, i32* @DEBICICAM, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 3
  %32 = call i32 @ttpci_budget_debiread(%struct.TYPE_2__* %28, i32 %29, i32 %31, i32 1, i32 0, i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %19
  %38 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ciintf_slot_shutdown(%struct.dvb_ca_en50221* %38, i32 %39)
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %19
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %37, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @saa7146_setgpio(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ttpci_budget_debiread(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ciintf_slot_shutdown(%struct.dvb_ca_en50221*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
