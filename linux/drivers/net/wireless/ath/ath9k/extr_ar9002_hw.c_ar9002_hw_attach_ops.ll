; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_attach_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_attach_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_private_ops = type { i32, i32 }
%struct.ath_hw_ops = type { i32 }

@ar9002_hw_init_mode_gain_regs = common dso_local global i32 0, align 4
@ar9002_hw_init_hang_checks = common dso_local global i32 0, align 4
@ar9002_hw_configpcipowersave = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9002_hw_attach_ops(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_hw_private_ops*, align 8
  %5 = alloca %struct.ath_hw_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = call %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw* %7)
  store %struct.ath_hw_private_ops* %8, %struct.ath_hw_private_ops** %4, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw* %9)
  store %struct.ath_hw_ops* %10, %struct.ath_hw_ops** %5, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call i32 @ar9002_hw_init_mode_regs(%struct.ath_hw* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load i32, i32* @ar9002_hw_init_mode_gain_regs, align 4
  %19 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ar9002_hw_init_hang_checks, align 4
  %22 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %4, align 8
  %23 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ar9002_hw_configpcipowersave, align 4
  %25 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %5, align 8
  %26 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = call i32 @ar5008_hw_attach_phy_ops(%struct.ath_hw* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %45

33:                                               ; preds = %17
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = call i32 @ar9002_hw_attach_phy_ops(%struct.ath_hw* %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = call i32 @ar9002_hw_attach_calib_ops(%struct.ath_hw* %41)
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = call i32 @ar9002_hw_attach_mac_ops(%struct.ath_hw* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %31, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw*) #1

declare dso_local %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_init_mode_regs(%struct.ath_hw*) #1

declare dso_local i32 @ar5008_hw_attach_phy_ops(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_attach_phy_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_attach_calib_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_attach_mac_ops(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
