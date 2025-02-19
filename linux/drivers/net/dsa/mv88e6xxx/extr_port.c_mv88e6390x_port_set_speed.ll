; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6390x_port_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6390x_port_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@SPEED_MAX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6390x_port_set_speed(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SPEED_MAX, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 9
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1000, i32 10000
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %11, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 200
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 2500
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 9
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %28, %25
  %35 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mv88e6xxx_port_set_speed(%struct.mv88e6xxx_chip* %35, i32 %36, i32 %37, i32 1, i32 1)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %31, %22
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @mv88e6xxx_port_set_speed(%struct.mv88e6xxx_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
