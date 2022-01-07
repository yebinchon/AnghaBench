; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PORT_MAC_CTL = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_MAC_CTL_FORCE_LINK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_MAC_CTL_LINK_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"p%d: %s link %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unforce\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_port_set_link(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
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
  br label %68

18:                                               ; preds = %3
  %19 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_FORCE_LINK, align 4
  %20 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_LINK_UP, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %37 [
    i32 130, label %26
    i32 129, label %30
    i32 128, label %36
  ]

26:                                               ; preds = %18
  %27 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_FORCE_LINK, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %40

30:                                               ; preds = %18
  %31 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_FORCE_LINK, align 4
  %32 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_LINK_UP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %40

36:                                               ; preds = %18
  br label %40

37:                                               ; preds = %18
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %68

40:                                               ; preds = %36, %30, %26
  %41 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %68

50:                                               ; preds = %40
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %52 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_FORCE_LINK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_LINK_UP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %67 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %60, i8* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %50, %48, %37, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
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
