; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dynack.c_ath_dynack_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dynack.c_ath_dynack_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@DYNACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ACK timeout %u slottime %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ath_dynack_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_dynack_set_timeout(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 3
  %11 = sdiv i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %13 = load i32, i32* @DYNACK, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ath_dbg(%struct.ath_common* %12, i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ath9k_hw_setslottime(%struct.ath_hw* %17, i32 %18)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ath9k_hw_set_ack_timeout(%struct.ath_hw* %20, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ath9k_hw_set_cts_timeout(%struct.ath_hw* %23, i32 %24)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath9k_hw_setslottime(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_ack_timeout(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_cts_timeout(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
