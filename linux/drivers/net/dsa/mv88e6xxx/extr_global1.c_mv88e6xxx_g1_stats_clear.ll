; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6xxx_g1_stats_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6xxx_g1_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_G1_STATS_OP = common dso_local global i32 0, align 4
@MV88E6XXX_G1_STATS_OP_HIST_RX_TX = common dso_local global i32 0, align 4
@MV88E6XXX_G1_STATS_OP_BUSY = common dso_local global i32 0, align 4
@MV88E6XXX_G1_STATS_OP_FLUSH_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_g1_stats_clear(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  %6 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %7 = load i32, i32* @MV88E6XXX_G1_STATS_OP, align 4
  %8 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %6, i32 %7, i32* %5)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load i32, i32* @MV88E6XXX_G1_STATS_OP_HIST_RX_TX, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @MV88E6XXX_G1_STATS_OP_BUSY, align 4
  %18 = load i32, i32* @MV88E6XXX_G1_STATS_OP_FLUSH_ALL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %23 = load i32, i32* @MV88E6XXX_G1_STATS_OP, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %13
  %31 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %32 = call i32 @mv88e6xxx_g1_stats_wait(%struct.mv88e6xxx_chip* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %28, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g1_stats_wait(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
