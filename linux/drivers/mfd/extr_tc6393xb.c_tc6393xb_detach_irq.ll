; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_detach_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_detach_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tc6393xb = type { i32, i32 }

@TC6393XB_NR_IRQS = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tc6393xb_detach_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc6393xb_detach_irq(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tc6393xb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.tc6393xb* %7, %struct.tc6393xb** %3, align 8
  %8 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %9 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @irq_set_chained_handler_and_data(i32 %10, i32* null, i32* null)
  %12 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %13 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TC6393XB_NR_IRQS, align 4
  %20 = add i32 %18, %19
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IRQ_NOREQUEST, align 4
  %25 = load i32, i32* @IRQ_NOPROBE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @irq_set_status_flags(i32 %23, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @irq_set_chip(i32 %28, i32* null)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @irq_set_chip_data(i32 %30, i32* null)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %16

35:                                               ; preds = %16
  ret void
}

declare dso_local %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32*, i32*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irq_set_chip(i32, i32*) #1

declare dso_local i32 @irq_set_chip_data(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
