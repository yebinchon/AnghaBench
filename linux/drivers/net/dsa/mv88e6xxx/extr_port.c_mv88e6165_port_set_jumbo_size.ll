; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6165_port_set_jumbo_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6165_port_set_jumbo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PORT_CTL2 = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL2_JUMBO_MODE_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL2_JUMBO_MODE_1522 = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL2_JUMBO_MODE_2048 = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL2_JUMBO_MODE_10240 = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6165_port_set_jumbo_size(%struct.mv88e6xxx_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MV88E6XXX_PORT_CTL2, align 4
  %13 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %10, i32 %11, i32 %12, i32* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %54

18:                                               ; preds = %3
  %19 = load i32, i32* @MV88E6XXX_PORT_CTL2_JUMBO_MODE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %7, align 8
  %24 = icmp ule i64 %23, 1522
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @MV88E6XXX_PORT_CTL2_JUMBO_MODE_1522, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %48

29:                                               ; preds = %18
  %30 = load i64, i64* %7, align 8
  %31 = icmp ule i64 %30, 2048
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @MV88E6XXX_PORT_CTL2_JUMBO_MODE_2048, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %47

36:                                               ; preds = %29
  %37 = load i64, i64* %7, align 8
  %38 = icmp ule i64 %37, 10240
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @MV88E6XXX_PORT_CTL2_JUMBO_MODE_10240, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @ERANGE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MV88E6XXX_PORT_CTL2, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %43, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
