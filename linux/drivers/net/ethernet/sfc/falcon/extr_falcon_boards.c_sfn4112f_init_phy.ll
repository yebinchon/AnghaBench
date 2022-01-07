; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon_boards.c_sfn4112f_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon_boards.c_sfn4112f_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

@SFN4112F_ACT_LED = common dso_local global i32 0, align 4
@QUAKE_LED_RXLINK = common dso_local global i32 0, align 4
@QUAKE_LED_LINK_ACT = common dso_local global i32 0, align 4
@SFN4112F_LINK_LED = common dso_local global i32 0, align 4
@QUAKE_LED_LINK_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @sfn4112f_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfn4112f_init_phy(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %3 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %4 = load i32, i32* @SFN4112F_ACT_LED, align 4
  %5 = load i32, i32* @QUAKE_LED_RXLINK, align 4
  %6 = load i32, i32* @QUAKE_LED_LINK_ACT, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @falcon_qt202x_set_led(%struct.ef4_nic* %3, i32 %4, i32 %7)
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %10 = load i32, i32* @SFN4112F_LINK_LED, align 4
  %11 = load i32, i32* @QUAKE_LED_RXLINK, align 4
  %12 = load i32, i32* @QUAKE_LED_LINK_STAT, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @falcon_qt202x_set_led(%struct.ef4_nic* %9, i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @falcon_qt202x_set_led(%struct.ef4_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
