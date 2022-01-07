; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-eeprom.c_solo_eeprom_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-eeprom.c_solo_eeprom_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@SOLO_EEPROM_ACCESS_EN = common dso_local global i32 0, align 4
@SOLO_EEPROM_ENABLE = common dso_local global i32 0, align 4
@ADDR_LEN = common dso_local global i32 0, align 4
@EE_DATA_WRITE = common dso_local global i32 0, align 4
@EE_SHIFT_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*, i32)* @solo_eeprom_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_eeprom_cmd(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %8 = load i32, i32* @SOLO_EEPROM_ACCESS_EN, align 4
  %9 = call i32 @solo_eeprom_reg_write(%struct.solo_dev* %7, i32 %8)
  %10 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %11 = load i32, i32* @SOLO_EEPROM_ENABLE, align 4
  %12 = call i32 @solo_eeprom_reg_write(%struct.solo_dev* %10, i32 %11)
  %13 = load i32, i32* @ADDR_LEN, align 4
  %14 = add nsw i32 4, %13
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %41, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @EE_DATA_WRITE, align 4
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  store i32 %28, i32* %6, align 4
  %29 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %30 = load i32, i32* @SOLO_EEPROM_ENABLE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @solo_eeprom_reg_write(%struct.solo_dev* %29, i32 %32)
  %34 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %35 = load i32, i32* @SOLO_EEPROM_ENABLE, align 4
  %36 = load i32, i32* @EE_SHIFT_CLK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @solo_eeprom_reg_write(%struct.solo_dev* %34, i32 %39)
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %46 = load i32, i32* @SOLO_EEPROM_ENABLE, align 4
  %47 = call i32 @solo_eeprom_reg_write(%struct.solo_dev* %45, i32 %46)
  ret void
}

declare dso_local i32 @solo_eeprom_reg_write(%struct.solo_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
