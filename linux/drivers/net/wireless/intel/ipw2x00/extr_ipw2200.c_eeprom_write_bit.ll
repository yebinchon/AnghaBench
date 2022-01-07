; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_eeprom_write_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_eeprom_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@EEPROM_BIT_DI = common dso_local global i32 0, align 4
@EEPROM_BIT_CS = common dso_local global i32 0, align 4
@EEPROM_BIT_SK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i64)* @eeprom_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_write_bit(%struct.ipw_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EEPROM_BIT_DI, align 4
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %14 = load i32, i32* @EEPROM_BIT_CS, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @eeprom_write_reg(%struct.ipw_priv* %13, i32 %16)
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %19 = load i32, i32* @EEPROM_BIT_CS, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @EEPROM_BIT_SK, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @eeprom_write_reg(%struct.ipw_priv* %18, i32 %23)
  ret void
}

declare dso_local i32 @eeprom_write_reg(%struct.ipw_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
