; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-eeprom.c_solo_eeprom_ewen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-eeprom.c_solo_eeprom_ewen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@EE_EWEN_CMD = common dso_local global i32 0, align 4
@ADDR_LEN = common dso_local global i32 0, align 4
@SOLO_EEPROM_ENABLE = common dso_local global i32 0, align 4
@EE_SHIFT_CLK = common dso_local global i32 0, align 4
@EE_CS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_eeprom_ewen(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 63, i32 0
  %12 = load i32, i32* @EE_EWEN_CMD, align 4
  %13 = load i32, i32* @ADDR_LEN, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %11, %14
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @solo_eeprom_cmd(%struct.solo_dev* %16, i32 %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %24 = load i32, i32* @SOLO_EEPROM_ENABLE, align 4
  %25 = load i32, i32* @EE_SHIFT_CLK, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @solo_eeprom_reg_write(%struct.solo_dev* %23, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 1
  %30 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %31 = call i32 @solo_eeprom_reg_read(%struct.solo_dev* %30)
  %32 = or i32 %29, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %34 = load i32, i32* @SOLO_EEPROM_ENABLE, align 4
  %35 = call i32 @solo_eeprom_reg_write(%struct.solo_dev* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 1
  %38 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %39 = call i32 @solo_eeprom_reg_read(%struct.solo_dev* %38)
  %40 = or i32 %37, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %19

44:                                               ; preds = %19
  %45 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %46 = load i32, i32* @EE_CS, align 4
  %47 = xor i32 %46, -1
  %48 = call i32 @solo_eeprom_reg_write(%struct.solo_dev* %45, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 1
  %51 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %52 = call i32 @solo_eeprom_reg_read(%struct.solo_dev* %51)
  %53 = or i32 %50, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @solo_eeprom_cmd(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_eeprom_reg_write(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_eeprom_reg_read(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
