; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_rgmii_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_rgmii_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PORT_MAC_CTL = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"p%d: delay RXCLK %s, TXCLK %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6xxx_port_set_rgmii_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_port_set_rgmii_delay(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
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
  %12 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL, align 4
  %13 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %10, i32 %11, i32 %12, i32* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK, align 4
  %20 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %41 [
    i32 129, label %26
    i32 128, label %30
    i32 130, label %34
    i32 131, label %40
  ]

26:                                               ; preds = %18
  %27 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %42

30:                                               ; preds = %18
  %31 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %42

34:                                               ; preds = %18
  %35 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK, align 4
  %36 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %18
  br label %42

41:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %70

42:                                               ; preds = %40, %34, %30, %26
  %43 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %42
  %53 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %54 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %69 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %62, i8* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %52, %50, %41, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
