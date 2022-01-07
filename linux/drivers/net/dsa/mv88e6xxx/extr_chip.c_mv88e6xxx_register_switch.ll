; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_register_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_register_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.dsa_switch = type { i32, i32, i32*, %struct.device*, %struct.mv88e6xxx_chip* }

@ENOMEM = common dso_local global i32 0, align 4
@mv88e6xxx_switch_ops = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*)* @mv88e6xxx_register_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_register_switch(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dsa_switch*, align 8
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  %6 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %6, i32 0, i32 1
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %11 = call i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip* %10)
  %12 = call %struct.dsa_switch* @dsa_switch_alloc(%struct.device* %9, i32 %11)
  store %struct.dsa_switch* %12, %struct.dsa_switch** %5, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %14 = icmp ne %struct.dsa_switch* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %21 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %20, i32 0, i32 4
  store %struct.mv88e6xxx_chip* %19, %struct.mv88e6xxx_chip** %21, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %24 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %23, i32 0, i32 3
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 2
  store i32* @mv88e6xxx_switch_ops, i32** %26, align 8
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %28 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %33 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %35 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @U8_MAX, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %42 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %45 = call i32 @dev_set_drvdata(%struct.device* %43, %struct.dsa_switch* %44)
  %46 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %47 = call i32 @dsa_register_switch(%struct.dsa_switch* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %18, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.dsa_switch* @dsa_switch_alloc(%struct.device*, i32) #1

declare dso_local i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.dsa_switch*) #1

declare dso_local i32 @dsa_register_switch(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
