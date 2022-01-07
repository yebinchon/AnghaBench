; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_hw_attach_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_hw_attach_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ath_hw_private_ops = type { i32, i32, i32 }
%struct.ath_hw_ops = type { i32 }

@ar9003_hw_init_mode_gain_regs = common dso_local global i32 0, align 4
@ar9003_hw_init_hang_checks = common dso_local global i32 0, align 4
@ar9003_hw_detect_mac_hang = common dso_local global i32 0, align 4
@ar9003_hw_configpcipowersave = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_attach_ops(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_hw_private_ops*, align 8
  %4 = alloca %struct.ath_hw_ops*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw* %5)
  store %struct.ath_hw_private_ops* %6, %struct.ath_hw_private_ops** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw* %7)
  store %struct.ath_hw_ops* %8, %struct.ath_hw_ops** %4, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = call i32 @ar9003_hw_init_mode_regs(%struct.ath_hw* %9)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call i64 @AR_SREV_9003_PCOEM(%struct.ath_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  br label %31

31:                                               ; preds = %14, %1
  %32 = load i32, i32* @ar9003_hw_init_mode_gain_regs, align 4
  %33 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %34 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ar9003_hw_init_hang_checks, align 4
  %36 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %37 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ar9003_hw_detect_mac_hang, align 4
  %39 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %40 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @ar9003_hw_configpcipowersave, align 4
  %42 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %43 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = call i32 @ar9003_hw_attach_phy_ops(%struct.ath_hw* %44)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %47 = call i32 @ar9003_hw_attach_calib_ops(%struct.ath_hw* %46)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = call i32 @ar9003_hw_attach_mac_ops(%struct.ath_hw* %48)
  %50 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %51 = call i32 @ar9003_hw_attach_aic_ops(%struct.ath_hw* %50)
  ret void
}

declare dso_local %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw*) #1

declare dso_local %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_init_mode_regs(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9003_PCOEM(%struct.ath_hw*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ar9003_hw_attach_phy_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_attach_calib_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_attach_mac_ops(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_attach_aic_ops(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
