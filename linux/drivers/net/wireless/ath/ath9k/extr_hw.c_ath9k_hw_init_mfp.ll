; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_mfp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_mfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }

@AR_AES_MUTE_MASK1 = common dso_local global i32 0, align 4
@AR_AES_MUTE_MASK1_FC_MGMT = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_MGMT_CRYPTO_ENABLE = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_NO_CRYPTO_FOR_NON_DATA_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_init_mfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_mfp(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = load i32, i32* @AR_AES_MUTE_MASK1, align 4
  %9 = load i32, i32* @AR_AES_MUTE_MASK1_FC_MGMT, align 4
  %10 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %7, i32 %8, i32 %9, i32 51199)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call i64 @AR_SREV_9271(%struct.ath_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = call i64 @AR_DEVID_7010(%struct.ath_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %6
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %50

27:                                               ; preds = %1
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %34 = load i32, i32* @AR_PCU_MISC_MODE2_MGMT_CRYPTO_ENABLE, align 4
  %35 = call i32 @REG_CLR_BIT(%struct.ath_hw* %32, i32 %33, i32 %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %37 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %38 = load i32, i32* @AR_PCU_MISC_MODE2_NO_CRYPTO_FOR_NON_DATA_PKT, align 4
  %39 = call i32 @REG_SET_BIT(%struct.ath_hw* %36, i32 %37, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %49

44:                                               ; preds = %27
  %45 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %31
  br label %50

50:                                               ; preds = %49, %24
  ret void
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i64 @AR_DEVID_7010(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
