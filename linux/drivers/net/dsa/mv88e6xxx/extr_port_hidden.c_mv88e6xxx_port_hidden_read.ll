; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port_hidden.c_mv88e6xxx_port_hidden_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port_hidden.c_mv88e6xxx_port_hidden_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PORT_RESERVED_1A_BUSY = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_RESERVED_1A_READ = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_RESERVED_1A_BLOCK_SHIFT = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_RESERVED_1A_PORT_SHIFT = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_RESERVED_1A_CTRL_PORT = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_RESERVED_1A = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_RESERVED_1A_DATA_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_port_hidden_read(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @MV88E6XXX_PORT_RESERVED_1A_BUSY, align 4
  %15 = load i32, i32* @MV88E6XXX_PORT_RESERVED_1A_READ, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MV88E6XXX_PORT_RESERVED_1A_BLOCK_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MV88E6XXX_PORT_RESERVED_1A_PORT_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %28 = load i32, i32* @MV88E6XXX_PORT_RESERVED_1A_CTRL_PORT, align 4
  %29 = load i32, i32* @MV88E6XXX_PORT_RESERVED_1A, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %49

36:                                               ; preds = %5
  %37 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %38 = call i32 @mv88e6xxx_port_hidden_wait(%struct.mv88e6xxx_chip* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %49

43:                                               ; preds = %36
  %44 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %45 = load i32, i32* @MV88E6XXX_PORT_RESERVED_1A_DATA_PORT, align 4
  %46 = load i32, i32* @MV88E6XXX_PORT_RESERVED_1A, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %44, i32 %45, i32 %46, i32* %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %41, %34
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_port_hidden_wait(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
