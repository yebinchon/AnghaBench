; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32 }

@wcn36xx_irq_tx_complete = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"wcn36xx_tx\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to alloc tx irq\0A\00", align 1
@wcn36xx_irq_rx_ready = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"wcn36xx_rx\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to alloc rx irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*)* @wcn36xx_dxe_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_dxe_request_irqs(%struct.wcn36xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  %5 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %6 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @wcn36xx_irq_tx_complete, align 4
  %9 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %11 = call i32 @request_irq(i32 %7, i32 %8, i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.wcn36xx* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %18 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @wcn36xx_irq_rx_ready, align 4
  %21 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %23 = call i32 @request_irq(i32 %19, i32 %20, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.wcn36xx* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %33

28:                                               ; preds = %16
  %29 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %30 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @enable_irq_wake(i32 %31)
  store i32 0, i32* %2, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %35 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.wcn36xx* %37)
  br label %39

39:                                               ; preds = %33, %14
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @free_irq(i32, %struct.wcn36xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
