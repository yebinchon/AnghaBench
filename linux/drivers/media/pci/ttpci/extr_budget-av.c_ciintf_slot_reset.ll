; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.budget_av = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ciintf_slot_reset\0A\00", align 1
@SLOTSTATUS_RESET = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@BUDGET_VIDEO_PORTB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32)* @ciintf_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciintf_slot_reset(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.budget_av*, align 8
  %7 = alloca %struct.saa7146_dev*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.budget_av*
  store %struct.budget_av* %11, %struct.budget_av** %6, align 8
  %12 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %13 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  store %struct.saa7146_dev* %15, %struct.saa7146_dev** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %2
  %22 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @SLOTSTATUS_RESET, align 4
  %24 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %25 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %27 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %28 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %26, i32 2, i32 %27)
  %29 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %30 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %31 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %29, i32 0, i32 %30)
  %32 = call i32 @msleep(i32 2)
  %33 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %34 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %35 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %33, i32 0, i32 %34)
  %36 = call i32 @msleep(i32 20)
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %38 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %39 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %37, i32 2, i32 %38)
  %40 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %41 = load i32, i32* @BUDGET_VIDEO_PORTB, align 4
  %42 = call i32 @ttpci_budget_set_video_port(%struct.saa7146_dev* %40, i32 %41)
  %43 = call i32 @msleep(i32 20)
  %44 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %45 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %21
  %49 = load %struct.budget_av*, %struct.budget_av** %6, align 8
  %50 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dvb_frontend_reinitialise(i32 %52)
  br label %54

54:                                               ; preds = %48, %21
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ttpci_budget_set_video_port(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @dvb_frontend_reinitialise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
