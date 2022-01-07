; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_chip_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_chip_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.i2c_client = type { i32 }
%struct.htcpld_chip = type { i32, i32, i32, %struct.i2c_client* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @htcpld_chip_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcpld_chip_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.htcpld_chip*, align 8
  %9 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.htcpld_chip* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.htcpld_chip* %11, %struct.htcpld_chip** %8, align 8
  %12 = load %struct.htcpld_chip*, %struct.htcpld_chip** %8, align 8
  %13 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %12, i32 0, i32 3
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %16 = icmp ne %struct.i2c_client* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.htcpld_chip*, %struct.htcpld_chip** %8, align 8
  %20 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %19, i32 0, i32 2
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = load %struct.htcpld_chip*, %struct.htcpld_chip** %8, align 8
  %29 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %40

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.htcpld_chip*, %struct.htcpld_chip** %8, align 8
  %37 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.htcpld_chip*, %struct.htcpld_chip** %8, align 8
  %42 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %41, i32 0, i32 2
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.htcpld_chip*, %struct.htcpld_chip** %8, align 8
  %46 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %45, i32 0, i32 1
  %47 = call i32 @schedule_work(i32* %46)
  br label %48

48:                                               ; preds = %40, %17
  ret void
}

declare dso_local %struct.htcpld_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
