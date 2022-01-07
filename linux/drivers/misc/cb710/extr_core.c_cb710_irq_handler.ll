; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_chip = type { i32, i32, %struct.cb710_slot* }
%struct.cb710_slot = type { i64 (%struct.cb710_slot*)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cb710_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cb710_chip*, align 8
  %6 = alloca %struct.cb710_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64 (%struct.cb710_slot*)*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.cb710_chip*
  store %struct.cb710_chip* %11, %struct.cb710_chip** %5, align 8
  %12 = load %struct.cb710_chip*, %struct.cb710_chip** %5, align 8
  %13 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %12, i32 0, i32 2
  %14 = load %struct.cb710_slot*, %struct.cb710_slot** %13, align 8
  %15 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %14, i64 0
  store %struct.cb710_slot* %15, %struct.cb710_slot** %6, align 8
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cb710_chip*, %struct.cb710_chip** %5, align 8
  %18 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.cb710_chip*, %struct.cb710_chip** %5, align 8
  %21 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %40, %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %28 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %27, i32 0, i32 0
  %29 = load i64 (%struct.cb710_slot*)*, i64 (%struct.cb710_slot*)** %28, align 8
  store i64 (%struct.cb710_slot*)* %29, i64 (%struct.cb710_slot*)** %9, align 8
  %30 = load i64 (%struct.cb710_slot*)*, i64 (%struct.cb710_slot*)** %9, align 8
  %31 = icmp ne i64 (%struct.cb710_slot*)* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i64 (%struct.cb710_slot*)*, i64 (%struct.cb710_slot*)** %9, align 8
  %34 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %35 = call i64 %33(%struct.cb710_slot* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %32, %26
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.cb710_slot*, %struct.cb710_slot** %6, align 8
  %42 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %41, i32 1
  store %struct.cb710_slot* %42, %struct.cb710_slot** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %8, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.cb710_chip*, %struct.cb710_chip** %5, align 8
  %47 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
