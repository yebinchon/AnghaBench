; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_eeprom_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_eeprom_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@EEPROM_BIT_CS = common dso_local global i32 0, align 4
@EEPROM_BIT_SK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @eeprom_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_cs(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %3 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %4 = call i32 @eeprom_write_reg(%struct.ipw_priv* %3, i32 0)
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = load i32, i32* @EEPROM_BIT_CS, align 4
  %7 = call i32 @eeprom_write_reg(%struct.ipw_priv* %5, i32 %6)
  %8 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %9 = load i32, i32* @EEPROM_BIT_CS, align 4
  %10 = load i32, i32* @EEPROM_BIT_SK, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @eeprom_write_reg(%struct.ipw_priv* %8, i32 %11)
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %14 = load i32, i32* @EEPROM_BIT_CS, align 4
  %15 = call i32 @eeprom_write_reg(%struct.ipw_priv* %13, i32 %14)
  ret void
}

declare dso_local i32 @eeprom_write_reg(%struct.ipw_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
