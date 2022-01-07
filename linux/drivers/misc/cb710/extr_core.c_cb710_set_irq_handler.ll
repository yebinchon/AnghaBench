; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_set_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_set_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }
%struct.cb710_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cb710_set_irq_handler(%struct.cb710_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.cb710_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cb710_chip*, align 8
  %6 = alloca i64, align 8
  store %struct.cb710_slot* %0, %struct.cb710_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %8 = call %struct.cb710_chip* @cb710_slot_to_chip(%struct.cb710_slot* %7)
  store %struct.cb710_chip* %8, %struct.cb710_chip** %5, align 8
  %9 = load %struct.cb710_chip*, %struct.cb710_chip** %5, align 8
  %10 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %15 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cb710_chip*, %struct.cb710_chip** %5, align 8
  %17 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  ret void
}

declare dso_local %struct.cb710_chip* @cb710_slot_to_chip(%struct.cb710_slot*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
