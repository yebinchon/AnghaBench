; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_cec_irq_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_cec_irq_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stih_cec = type { i32 }

@CEC_TX_DONE_STS = common dso_local global i32 0, align 4
@CEC_RX_DONE_STS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stih_cec_irq_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stih_cec_irq_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stih_cec*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.stih_cec*
  store %struct.stih_cec* %7, %struct.stih_cec** %5, align 8
  %8 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %9 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CEC_TX_DONE_STS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %16 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %17 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @stih_tx_done(%struct.stih_cec* %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %22 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CEC_RX_DONE_STS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %29 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %30 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @stih_rx_done(%struct.stih_cec* %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %35 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @stih_tx_done(%struct.stih_cec*, i32) #1

declare dso_local i32 @stih_rx_done(%struct.stih_cec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
