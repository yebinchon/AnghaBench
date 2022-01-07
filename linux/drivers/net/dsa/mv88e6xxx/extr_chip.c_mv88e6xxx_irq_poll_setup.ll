; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_irq_poll_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_irq_poll_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, i32, i32 }

@mv88e6xxx_irq_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*)* @mv88e6xxx_irq_poll_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_irq_poll_setup(%struct.mv88e6xxx_chip* %0) #0 {
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
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %13 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %12, i32 0, i32 0
  %14 = load i32, i32* @mv88e6xxx_irq_poll, align 4
  %15 = call i32 @kthread_init_delayed_work(i32* %13, i32 %14)
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %17 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_name(i32 %18)
  %20 = call i32 @kthread_create_worker(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %22 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %24 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %11
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %30 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %41

33:                                               ; preds = %11
  %34 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %35 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %38 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %37, i32 0, i32 0
  %39 = call i32 @msecs_to_jiffies(i32 100)
  %40 = call i32 @kthread_queue_delayed_work(i32 %36, i32* %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %33, %28, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @mv88e6xxx_g1_irq_setup_common(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @kthread_init_delayed_work(i32*, i32) #1

declare dso_local i32 @kthread_create_worker(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kthread_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
