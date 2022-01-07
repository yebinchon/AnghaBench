; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_pm_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_pm_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_chip = type { i32 }

@max77620_scratch = common dso_local global %struct.max77620_chip* null, align 8
@MAX77620_REG_ONOFFCNFG1 = common dso_local global i32 0, align 4
@MAX77620_ONOFFCNFG1_SFT_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @max77620_pm_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77620_pm_power_off() #0 {
  %1 = alloca %struct.max77620_chip*, align 8
  %2 = load %struct.max77620_chip*, %struct.max77620_chip** @max77620_scratch, align 8
  store %struct.max77620_chip* %2, %struct.max77620_chip** %1, align 8
  %3 = load %struct.max77620_chip*, %struct.max77620_chip** %1, align 8
  %4 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MAX77620_REG_ONOFFCNFG1, align 4
  %7 = load i32, i32* @MAX77620_ONOFFCNFG1_SFT_RST, align 4
  %8 = load i32, i32* @MAX77620_ONOFFCNFG1_SFT_RST, align 4
  %9 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
