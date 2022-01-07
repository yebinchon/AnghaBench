; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_global_txtimeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_global_txtimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bad global tx timeout %u\0A\00", align 1
@AR_GTXTO = common dso_local global i32 0, align 4
@AR_GTXTO_TIMEOUT_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_set_global_txtimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_set_global_txtimeout(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 65535
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = call i32 @ath9k_hw_common(%struct.ath_hw* %9)
  %11 = load i32, i32* @XMIT, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ath_dbg(i32 %10, i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = load i32, i32* @AR_GTXTO, align 4
  %19 = load i32, i32* @AR_GTXTO_TIMEOUT_LIMIT, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %8
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
