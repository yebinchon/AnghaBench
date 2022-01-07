; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PORT_CTL0 = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_STATE_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_STATE_DISABLED = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_STATE_BLOCKING = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_STATE_LEARNING = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_STATE_FORWARDING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"p%d: PortState set to %s\0A\00", align 1
@mv88e6xxx_port_state_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_port_set_state(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MV88E6XXX_PORT_CTL0, align 4
  %13 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %10, i32 %11, i32 %12, i32* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load i32, i32* @MV88E6XXX_PORT_CTL0_STATE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %32 [
    i32 131, label %24
    i32 132, label %26
    i32 128, label %26
    i32 129, label %28
    i32 130, label %30
  ]

24:                                               ; preds = %18
  %25 = load i32, i32* @MV88E6XXX_PORT_CTL0_STATE_DISABLED, align 4
  store i32 %25, i32* %7, align 4
  br label %35

26:                                               ; preds = %18, %18
  %27 = load i32, i32* @MV88E6XXX_PORT_CTL0_STATE_BLOCKING, align 4
  store i32 %27, i32* %7, align 4
  br label %35

28:                                               ; preds = %18
  %29 = load i32, i32* @MV88E6XXX_PORT_CTL0_STATE_LEARNING, align 4
  store i32 %29, i32* %7, align 4
  br label %35

30:                                               ; preds = %18
  %31 = load i32, i32* @MV88E6XXX_PORT_CTL0_STATE_FORWARDING, align 4
  store i32 %31, i32* %7, align 4
  br label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %59

35:                                               ; preds = %30, %28, %26, %24
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MV88E6XXX_PORT_CTL0, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %35
  %49 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %50 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** @mv88e6xxx_port_state_names, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %48, %46, %32, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
