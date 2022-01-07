; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_load_ani_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_load_ani_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_CCK_DETECT = common dso_local global i64 0, align 8
@AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9002_hw_load_ani_reg(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %11 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %15 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %22 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 3, i32 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %20, %13
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %73, %27
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %30
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @INI_RA(%struct.TYPE_2__* %39, i32 %40, i64 0)
  store i64 %41, i64* %7, align 8
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @INI_RA(%struct.TYPE_2__* %43, i32 %44, i64 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @AR_PHY_CCK_DETECT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %37
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @REG_READ(%struct.ath_hw* %51, i64 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* @AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK, align 8
  %55 = load i64, i64* %8, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* @AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK, align 8
  %58 = xor i64 %57, -1
  %59 = load i64, i64* %9, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %9, align 8
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = or i64 %63, %64
  %66 = call i32 @REG_WRITE(%struct.ath_hw* %61, i64 %62, i64 %65)
  br label %72

67:                                               ; preds = %37
  %68 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @REG_WRITE(%struct.ath_hw* %68, i64 %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %50
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %30

76:                                               ; preds = %30
  %77 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %78 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %77)
  ret void
}

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i64 @INI_RA(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i64 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i64) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
