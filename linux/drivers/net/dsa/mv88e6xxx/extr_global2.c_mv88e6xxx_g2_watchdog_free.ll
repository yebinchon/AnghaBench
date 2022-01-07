; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_watchdog_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_watchdog_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mv88e6xxx_chip*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e6xxx_chip*)* @mv88e6xxx_g2_watchdog_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_g2_watchdog_free(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca %struct.mv88e6xxx_chip*, align 8
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %2, align 8
  %3 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %4 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %3)
  %5 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %6 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (%struct.mv88e6xxx_chip*)*, i32 (%struct.mv88e6xxx_chip*)** %12, align 8
  %14 = icmp ne i32 (%struct.mv88e6xxx_chip*)* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %17 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.mv88e6xxx_chip*)*, i32 (%struct.mv88e6xxx_chip*)** %23, align 8
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %26 = call i32 %24(%struct.mv88e6xxx_chip* %25)
  br label %27

27:                                               ; preds = %15, %1
  %28 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %29 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %28)
  %30 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %31 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.mv88e6xxx_chip* %33)
  %35 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %36 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @irq_dispose_mapping(i32 %37)
  ret void
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @free_irq(i32, %struct.mv88e6xxx_chip*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
