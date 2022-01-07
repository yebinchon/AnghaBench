; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6390_watchdog_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6390_watchdog_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mv88e6xxx_chip*)* }

@MV88E6390_G2_WDOG_CTL = common dso_local global i32 0, align 4
@MV88E6390_G2_WDOG_CTL_PTR_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Watchdog event: 0x%04x\00", align 1
@MV88E6390_G2_WDOG_CTL_DATA_MASK = common dso_local global i32 0, align 4
@MV88E6390_G2_WDOG_CTL_PTR_HISTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Watchdog history: 0x%04x\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32)* @mv88e6390_watchdog_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6390_watchdog_action(%struct.mv88e6xxx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %8 = load i32, i32* @MV88E6390_G2_WDOG_CTL, align 4
  %9 = load i32, i32* @MV88E6390_G2_WDOG_CTL_PTR_EVENT, align 4
  %10 = call i32 @mv88e6xxx_g2_write(%struct.mv88e6xxx_chip* %7, i32 %8, i32 %9)
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %12 = load i32, i32* @MV88E6390_G2_WDOG_CTL, align 4
  %13 = call i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip* %11, i32 %12, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %15 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MV88E6390_G2_WDOG_CTL_DATA_MASK, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %22 = load i32, i32* @MV88E6390_G2_WDOG_CTL, align 4
  %23 = load i32, i32* @MV88E6390_G2_WDOG_CTL_PTR_HISTORY, align 4
  %24 = call i32 @mv88e6xxx_g2_write(%struct.mv88e6xxx_chip* %21, i32 %22, i32 %23)
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %26 = load i32, i32* @MV88E6390_G2_WDOG_CTL, align 4
  %27 = call i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip* %25, i32 %26, i32* %6)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %29 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MV88E6390_G2_WDOG_CTL_DATA_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @dev_info(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %36 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.mv88e6xxx_chip*)*, i32 (%struct.mv88e6xxx_chip*)** %40, align 8
  %42 = icmp ne i32 (%struct.mv88e6xxx_chip*)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %2
  %44 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %45 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.mv88e6xxx_chip*)*, i32 (%struct.mv88e6xxx_chip*)** %49, align 8
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %52 = call i32 %50(%struct.mv88e6xxx_chip* %51)
  br label %53

53:                                               ; preds = %43, %2
  %54 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %55 = call i32 @mv88e6390_watchdog_setup(%struct.mv88e6xxx_chip* %54)
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %56
}

declare dso_local i32 @mv88e6xxx_g2_write(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @mv88e6390_watchdog_setup(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
