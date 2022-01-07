; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_egress_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_egress_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PORT_CTL0 = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_EGRESS_MODE_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_EGRESS_MODE_UNMODIFIED = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_EGRESS_MODE_UNTAGGED = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_EGRESS_MODE_TAGGED = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL0_EGRESS_MODE_ETHER_TYPE_DSA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_port_set_egress_mode(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
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
  %13 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %10, i32 %11, i32 %12, i32* %9)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i32, i32* @MV88E6XXX_PORT_CTL0_EGRESS_MODE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %40 [
    i32 129, label %24
    i32 128, label %28
    i32 130, label %32
    i32 131, label %36
  ]

24:                                               ; preds = %18
  %25 = load i32, i32* @MV88E6XXX_PORT_CTL0_EGRESS_MODE_UNMODIFIED, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load i32, i32* @MV88E6XXX_PORT_CTL0_EGRESS_MODE_UNTAGGED, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %43

32:                                               ; preds = %18
  %33 = load i32, i32* @MV88E6XXX_PORT_CTL0_EGRESS_MODE_TAGGED, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %43

36:                                               ; preds = %18
  %37 = load i32, i32* @MV88E6XXX_PORT_CTL0_EGRESS_MODE_ETHER_TYPE_DSA, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %43

40:                                               ; preds = %18
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %49

43:                                               ; preds = %36, %32, %28, %24
  %44 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MV88E6XXX_PORT_CTL0, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %40, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
