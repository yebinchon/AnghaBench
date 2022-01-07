; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_attach_calib_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_attach_calib_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_private_ops = type { i32, i32, i32 }
%struct.ath_hw_ops = type { i32 }

@ar9003_hw_init_cal_pcoem = common dso_local global i32 0, align 4
@ar9003_hw_init_cal_soc = common dso_local global i32 0, align 4
@ar9003_hw_init_cal_settings = common dso_local global i32 0, align 4
@ar9003_hw_setup_calibration = common dso_local global i32 0, align 4
@ar9003_hw_calibrate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_attach_calib_ops(%struct.ath_hw* %0) #0 {
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
  %10 = call i64 @AR_SREV_9003_PCOEM(%struct.ath_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @ar9003_hw_init_cal_pcoem, align 4
  %14 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %15 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @ar9003_hw_init_cal_soc, align 4
  %18 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %19 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @ar9003_hw_init_cal_settings, align 4
  %22 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %23 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ar9003_hw_setup_calibration, align 4
  %25 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %26 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ar9003_hw_calibrate, align 4
  %28 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw*) #1

declare dso_local %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9003_PCOEM(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
