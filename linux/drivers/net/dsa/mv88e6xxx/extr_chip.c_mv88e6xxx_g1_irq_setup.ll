; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_g1_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_g1_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.mv88e6xxx_chip = type { i32, i32 }

@mv88e6xxx_g1_irq_setup.lock_key = internal global %struct.lock_class_key zeroinitializer, align 4
@mv88e6xxx_g1_irq_setup.request_key = internal global %struct.lock_class_key zeroinitializer, align 4
@mv88e6xxx_g1_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*)* @mv88e6xxx_g1_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g1_irq_setup(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  %5 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %6 = call i32 @mv88e6xxx_g1_irq_setup_common(%struct.mv88e6xxx_chip* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %13 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @irq_set_lockdep_class(i32 %14, %struct.lock_class_key* @mv88e6xxx_g1_irq_setup.lock_key, %struct.lock_class_key* @mv88e6xxx_g1_irq_setup.request_key)
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %17 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %16)
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %19 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @mv88e6xxx_g1_irq_thread_fn, align 4
  %22 = load i32, i32* @IRQF_ONESHOT, align 4
  %23 = load i32, i32* @IRQF_SHARED, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %26 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_name(i32 %27)
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %30 = call i32 @request_threaded_irq(i32 %20, i32* null, i32 %21, i32 %24, i32 %28, %struct.mv88e6xxx_chip* %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %32 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %11
  %36 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %37 = call i32 @mv88e6xxx_g1_irq_free_common(%struct.mv88e6xxx_chip* %36)
  br label %38

38:                                               ; preds = %35, %11
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @mv88e6xxx_g1_irq_setup_common(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @irq_set_lockdep_class(i32, %struct.lock_class_key*, %struct.lock_class_key*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.mv88e6xxx_chip*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_irq_free_common(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
