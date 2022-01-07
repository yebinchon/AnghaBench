; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_get_fid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_get_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PORT_BASE_VLAN = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_port_get_fid(%struct.mv88e6xxx_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %12 = call i32 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip* %11)
  %13 = sub nsw i32 %12, 1
  %14 = ashr i32 %13, 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MV88E6XXX_PORT_BASE_VLAN, align 4
  %18 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %15, i32 %16, i32 %17, i32* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %48

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 61440
  %26 = ashr i32 %25, 12
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MV88E6XXX_PORT_CTL1, align 4
  %34 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %31, i32 %32, i32 %33, i32* %9)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %40, %41
  %43 = shl i32 %42, 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %39, %23
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %37, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
