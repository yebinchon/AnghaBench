; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_device_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_device_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_chip = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @max8925_device_exit(%struct.max8925_chip* %0) #0 {
  %2 = alloca %struct.max8925_chip*, align 8
  store %struct.max8925_chip* %0, %struct.max8925_chip** %2, align 8
  %3 = load %struct.max8925_chip*, %struct.max8925_chip** %2, align 8
  %4 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.max8925_chip*, %struct.max8925_chip** %2, align 8
  %9 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.max8925_chip*, %struct.max8925_chip** %2, align 8
  %12 = call i32 @free_irq(i64 %10, %struct.max8925_chip* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.max8925_chip*, %struct.max8925_chip** %2, align 8
  %15 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.max8925_chip*, %struct.max8925_chip** %2, align 8
  %20 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.max8925_chip*, %struct.max8925_chip** %2, align 8
  %23 = call i32 @free_irq(i64 %21, %struct.max8925_chip* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.max8925_chip*, %struct.max8925_chip** %2, align 8
  %26 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mfd_remove_devices(i32 %27)
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.max8925_chip*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
