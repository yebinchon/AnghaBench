; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6xxx_g1_stats_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6xxx_g1_stats_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_G1_STATS_OP = common dso_local global i32 0, align 4
@MV88E6XXX_G1_STATS_OP_BUSY = common dso_local global i32 0, align 4
@MV88E6XXX_G1_STATS_OP_READ_CAPTURED = common dso_local global i32 0, align 4
@MV88E6XXX_G1_STATS_COUNTER_32 = common dso_local global i32 0, align 4
@MV88E6XXX_G1_STATS_COUNTER_01 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv88e6xxx_g1_stats_read(%struct.mv88e6xxx_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %12 = load i32, i32* @MV88E6XXX_G1_STATS_OP, align 4
  %13 = load i32, i32* @MV88E6XXX_G1_STATS_OP_BUSY, align 4
  %14 = load i32, i32* @MV88E6XXX_G1_STATS_OP_READ_CAPTURED, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %11, i32 %12, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %49

22:                                               ; preds = %3
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %24 = call i32 @mv88e6xxx_g1_stats_wait(%struct.mv88e6xxx_chip* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %49

28:                                               ; preds = %22
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %30 = load i32, i32* @MV88E6XXX_G1_STATS_COUNTER_32, align 4
  %31 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %29, i32 %30, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %49

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 16
  store i32 %37, i32* %7, align 4
  %38 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %39 = load i32, i32* @MV88E6XXX_G1_STATS_COUNTER_01, align 4
  %40 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %38, i32 %39, i32* %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %43, %34, %27, %21
  ret void
}

declare dso_local i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g1_stats_wait(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
