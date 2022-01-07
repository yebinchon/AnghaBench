; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_initvals.c_ath5k_hw_ini_mode_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_initvals.c_ath5k_hw_ini_mode_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_ini_mode = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, i32, %struct.ath5k_ini_mode*, i64)* @ath5k_hw_ini_mode_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_ini_mode_registers(%struct.ath5k_hw* %0, i32 %1, %struct.ath5k_ini_mode* %2, i64 %3) #0 {
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_ini_mode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath5k_ini_mode* %2, %struct.ath5k_ini_mode** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %35, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @AR5K_REG_WAIT(i32 %15)
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %18 = load %struct.ath5k_ini_mode*, %struct.ath5k_ini_mode** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ath5k_ini_mode, %struct.ath5k_ini_mode* %18, i64 %20
  %22 = getelementptr inbounds %struct.ath5k_ini_mode, %struct.ath5k_ini_mode* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath5k_ini_mode*, %struct.ath5k_ini_mode** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ath5k_ini_mode, %struct.ath5k_ini_mode* %27, i64 %29
  %31 = getelementptr inbounds %struct.ath5k_ini_mode, %struct.ath5k_ini_mode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %17, i32 %26, i32 %33)
  br label %35

35:                                               ; preds = %14
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %10

38:                                               ; preds = %10
  ret void
}

declare dso_local i32 @AR5K_REG_WAIT(i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
