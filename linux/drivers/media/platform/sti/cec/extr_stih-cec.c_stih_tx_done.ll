; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stih_cec = type { i32 }

@CEC_TX_ERROR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@CEC_TX_ARB_ERROR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ARB_LOST = common dso_local global i32 0, align 4
@CEC_TX_ACK_GET_STS = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stih_cec*, i32)* @stih_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stih_tx_done(%struct.stih_cec* %0, i32 %1) #0 {
  %3 = alloca %struct.stih_cec*, align 8
  %4 = alloca i32, align 4
  store %struct.stih_cec* %0, %struct.stih_cec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CEC_TX_ERROR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.stih_cec*, %struct.stih_cec** %3, align 8
  %11 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  %14 = call i32 @cec_transmit_attempt_done(i32 %12, i32 %13)
  br label %43

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @CEC_TX_ARB_ERROR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.stih_cec*, %struct.stih_cec** %3, align 8
  %22 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CEC_TX_STATUS_ARB_LOST, align 4
  %25 = call i32 @cec_transmit_attempt_done(i32 %23, i32 %24)
  br label %43

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CEC_TX_ACK_GET_STS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.stih_cec*, %struct.stih_cec** %3, align 8
  %33 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %36 = call i32 @cec_transmit_attempt_done(i32 %34, i32 %35)
  br label %43

37:                                               ; preds = %26
  %38 = load %struct.stih_cec*, %struct.stih_cec** %3, align 8
  %39 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %42 = call i32 @cec_transmit_attempt_done(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %31, %20, %9
  ret void
}

declare dso_local i32 @cec_transmit_attempt_done(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
