; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_eeprom_init(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %6 = call i32 @ath5k_eeprom_init_header(%struct.ath5k_hw* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = call i32 @ath5k_eeprom_init_modes(%struct.ath5k_hw* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %11
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %20 = call i32 @ath5k_eeprom_read_pcal_info(%struct.ath5k_hw* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %18
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %27 = call i32 @ath5k_eeprom_read_ctl_info(%struct.ath5k_hw* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %34 = call i32 @ath5k_eeprom_read_spur_chans(%struct.ath5k_hw* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %30, %23, %16, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ath5k_eeprom_init_header(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_eeprom_init_modes(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_eeprom_read_pcal_info(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_eeprom_read_ctl_info(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_eeprom_read_spur_chans(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
