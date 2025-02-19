; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_attach_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_attach_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tc6393xb = type { i32, i32 }

@TC6393XB_NR_IRQS = common dso_local global i32 0, align 4
@tc6393xb_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@tc6393xb_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tc6393xb_attach_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc6393xb_attach_irq(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tc6393xb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.tc6393xb* %7, %struct.tc6393xb** %3, align 8
  %8 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %9 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TC6393XB_NR_IRQS, align 4
  %16 = add i32 %14, %15
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @handle_edge_irq, align 4
  %21 = call i32 @irq_set_chip_and_handler(i32 %19, i32* @tc6393xb_chip, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %24 = call i32 @irq_set_chip_data(i32 %22, %struct.tc6393xb* %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IRQ_NOREQUEST, align 4
  %27 = load i32, i32* @IRQ_NOPROBE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @irq_clear_status_flags(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %35 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %38 = call i32 @irq_set_irq_type(i32 %36, i32 %37)
  %39 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %40 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @tc6393xb_irq, align 4
  %43 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %44 = call i32 @irq_set_chained_handler_and_data(i32 %41, i32 %42, %struct.tc6393xb* %43)
  ret void
}

declare dso_local %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.tc6393xb*) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.tc6393xb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
