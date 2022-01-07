; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }

@SECOCEC_STATUS_TX_ERROR_MASK = common dso_local global i32 0, align 4
@SECOCEC_STATUS_TX_NACK_ERROR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@SECOCEC_STATUS_MSG_SENT_MASK = common dso_local global i32 0, align 4
@SECOCEC_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_adapter*, i32)* @secocec_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secocec_tx_done(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SECOCEC_STATUS_TX_ERROR_MASK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SECOCEC_STATUS_TX_NACK_ERROR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %16 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %17 = call i32 @cec_transmit_attempt_done(%struct.cec_adapter* %15, i32 %16)
  br label %22

18:                                               ; preds = %9
  %19 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %20 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  %21 = call i32 @cec_transmit_attempt_done(%struct.cec_adapter* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %25 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %26 = call i32 @cec_transmit_attempt_done(%struct.cec_adapter* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* @SECOCEC_STATUS_TX_ERROR_MASK, align 4
  %29 = load i32, i32* @SECOCEC_STATUS_MSG_SENT_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SECOCEC_STATUS_TX_NACK_ERROR, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @SECOCEC_STATUS, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @smb_wr16(i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @cec_transmit_attempt_done(%struct.cec_adapter*, i32) #1

declare dso_local i32 @smb_wr16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
