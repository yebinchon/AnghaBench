; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_gain_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_BT_COEX_4 = common dso_local global i64 0, align 8
@AR_PHY_BT_COEX_5 = common dso_local global i64 0, align 8
@AR_PHY_AIC_SRAM_ADDR_B0 = common dso_local global i64 0, align 8
@ATH_AIC_SRAM_AUTO_INCREMENT = common dso_local global i32 0, align 4
@ATH_AIC_SRAM_GAIN_TABLE_OFFSET = common dso_local global i32 0, align 4
@AR_PHY_AIC_SRAM_DATA_B0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_aic_gain_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_aic_gain_table(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca [19 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = load i64, i64* @AR_PHY_BT_COEX_4, align 8
  %7 = call i32 @REG_WRITE(%struct.ath_hw* %5, i64 %6, i32 740297216)
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = load i64, i64* @AR_PHY_BT_COEX_5, align 8
  %10 = call i32 @REG_WRITE(%struct.ath_hw* %8, i64 %9, i32 1548633144)
  %11 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 0
  store i32 32287, i32* %11, align 16
  %12 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 1
  store i32 65119, i32* %12, align 4
  %13 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 2
  store i32 97951, i32* %13, align 8
  %14 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 3
  store i32 31774, i32* %14, align 4
  %15 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 4
  store i32 64606, i32* %15, align 16
  %16 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 5
  store i32 97438, i32* %16, align 4
  %17 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 6
  store i32 24079, i32* %17, align 8
  %18 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 7
  store i32 56911, i32* %18, align 4
  %19 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 8
  store i32 89743, i32* %19, align 16
  %20 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 9
  store i32 19975, i32* %20, align 4
  %21 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 10
  store i32 52807, i32* %21, align 8
  %22 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 11
  store i32 85639, i32* %22, align 4
  %23 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 12
  store i32 118471, i32* %23, align 16
  %24 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 13
  store i32 50755, i32* %24, align 4
  %25 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 14
  store i32 83587, i32* %25, align 8
  %26 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 15
  store i32 16897, i32* %26, align 4
  %27 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 16
  store i32 49729, i32* %27, align 16
  %28 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 17
  store i32 82561, i32* %28, align 4
  %29 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 18
  store i32 115393, i32* %29, align 8
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = load i64, i64* @AR_PHY_AIC_SRAM_ADDR_B0, align 8
  %32 = add nsw i64 %31, 12288
  %33 = load i32, i32* @ATH_AIC_SRAM_AUTO_INCREMENT, align 4
  %34 = load i32, i32* @ATH_AIC_SRAM_GAIN_TABLE_OFFSET, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @REG_WRITE(%struct.ath_hw* %30, i64 %32, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %49, %1
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 19
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = load i64, i64* @AR_PHY_AIC_SRAM_DATA_B0, align 8
  %43 = add nsw i64 %42, 12288
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @REG_WRITE(%struct.ath_hw* %41, i64 %43, i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %37

52:                                               ; preds = %37
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
