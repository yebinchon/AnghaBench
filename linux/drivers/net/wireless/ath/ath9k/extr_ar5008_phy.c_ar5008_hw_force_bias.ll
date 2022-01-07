; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_force_bias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_force_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Force rf_pwd_icsyndiv to %1d on %4d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar5008_hw_force_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_force_bias(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call i32 @AR_SREV_5416(%struct.ath_hw* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 3000
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  br label %46

18:                                               ; preds = %14
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = call i32 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %19)
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2412
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %31

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 2422
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %30

29:                                               ; preds = %25
  store i32 2, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ath9k_hw_reverse_bits(i32 %32, i32 3)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %35 = load i32, i32* @CONFIG, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ath_dbg(%struct.ath_common* %34, i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ar5008_hw_phy_modify_rx_buffer(i32 %41, i32 %42, i32 3, i32 181, i32 3)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = call i32 @ar5008_write_bank6(%struct.ath_hw* %44, i32* %7)
  br label %46

46:                                               ; preds = %31, %17
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_5416(%struct.ath_hw*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_reverse_bits(i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

declare dso_local i32 @ar5008_hw_phy_modify_rx_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ar5008_write_bank6(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
