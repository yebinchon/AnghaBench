; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mac_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mac_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }

@MLO_AN_FIXED = common dso_local global i32 0, align 4
@LINK_FORCED_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32, i32)* @mv88e6xxx_mac_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_mac_link_down(%struct.dsa_switch* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MLO_AN_FIXED, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @LINK_FORCED_DOWN, align 4
  %16 = call i32 @mv88e6xxx_mac_link_force(%struct.dsa_switch* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %4
  ret void
}

declare dso_local i32 @mv88e6xxx_mac_link_force(%struct.dsa_switch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
