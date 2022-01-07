; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_MIC_QOS_CONTROL = common dso_local global i32 0, align 4
@AR_MIC_QOS_SELECT = common dso_local global i32 0, align 4
@AR_QOS_NO_ACK = common dso_local global i32 0, align 4
@AR_QOS_NO_ACK_TWO_BIT = common dso_local global i32 0, align 4
@AR_QOS_NO_ACK_BIT_OFF = common dso_local global i32 0, align 4
@AR_QOS_NO_ACK_BYTE_OFF = common dso_local global i32 0, align 4
@AR_TXOP_X = common dso_local global i32 0, align 4
@AR_TXOP_X_VAL = common dso_local global i32 0, align 4
@AR_TXOP_0_3 = common dso_local global i32 0, align 4
@AR_TXOP_4_7 = common dso_local global i32 0, align 4
@AR_TXOP_8_11 = common dso_local global i32 0, align 4
@AR_TXOP_12_15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_init_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_qos(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %3)
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = load i32, i32* @AR_MIC_QOS_CONTROL, align 4
  %7 = call i32 @REG_WRITE(%struct.ath_hw* %5, i32 %6, i32 65706)
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = load i32, i32* @AR_MIC_QOS_SELECT, align 4
  %10 = call i32 @REG_WRITE(%struct.ath_hw* %8, i32 %9, i32 12816)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = load i32, i32* @AR_QOS_NO_ACK, align 4
  %13 = load i32, i32* @AR_QOS_NO_ACK_TWO_BIT, align 4
  %14 = call i32 @SM(i32 2, i32 %13)
  %15 = load i32, i32* @AR_QOS_NO_ACK_BIT_OFF, align 4
  %16 = call i32 @SM(i32 5, i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @AR_QOS_NO_ACK_BYTE_OFF, align 4
  %19 = call i32 @SM(i32 0, i32 %18)
  %20 = or i32 %17, %19
  %21 = call i32 @REG_WRITE(%struct.ath_hw* %11, i32 %12, i32 %20)
  %22 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %23 = load i32, i32* @AR_TXOP_X, align 4
  %24 = load i32, i32* @AR_TXOP_X_VAL, align 4
  %25 = call i32 @REG_WRITE(%struct.ath_hw* %22, i32 %23, i32 %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = load i32, i32* @AR_TXOP_0_3, align 4
  %28 = call i32 @REG_WRITE(%struct.ath_hw* %26, i32 %27, i32 -1)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = load i32, i32* @AR_TXOP_4_7, align 4
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %29, i32 %30, i32 -1)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = load i32, i32* @AR_TXOP_8_11, align 4
  %34 = call i32 @REG_WRITE(%struct.ath_hw* %32, i32 %33, i32 -1)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = load i32, i32* @AR_TXOP_12_15, align 4
  %37 = call i32 @REG_WRITE(%struct.ath_hw* %35, i32 %36, i32 -1)
  %38 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %39 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %38)
  ret void
}

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
