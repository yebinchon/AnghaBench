; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32*)* @mv88e6xxx_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_get_ethtool_stats(%struct.dsa_switch* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %10, align 8
  store %struct.mv88e6xxx_chip* %11, %struct.mv88e6xxx_chip** %7, align 8
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %13 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %12)
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mv88e6xxx_stats_snapshot(%struct.mv88e6xxx_chip* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %18 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @mv88e6xxx_get_stats(%struct.mv88e6xxx_chip* %23, i32 %24, i32* %25)
  br label %27

27:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_stats_snapshot(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_get_stats(%struct.mv88e6xxx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
