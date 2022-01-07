; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_gpio }
%struct.lan743x_gpio = type { i32, i32, i32, i32, i32 }

@GPIO_CFG0 = common dso_local global i32 0, align 4
@GPIO_CFG1 = common dso_local global i32 0, align 4
@GPIO_CFG2 = common dso_local global i32 0, align 4
@GPIO_CFG3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lan743x_gpio_init(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca %struct.lan743x_gpio*, align 8
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %4 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %4, i32 0, i32 0
  store %struct.lan743x_gpio* %5, %struct.lan743x_gpio** %3, align 8
  %6 = load %struct.lan743x_gpio*, %struct.lan743x_gpio** %3, align 8
  %7 = getelementptr inbounds %struct.lan743x_gpio, %struct.lan743x_gpio* %6, i32 0, i32 4
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.lan743x_gpio*, %struct.lan743x_gpio** %3, align 8
  %10 = getelementptr inbounds %struct.lan743x_gpio, %struct.lan743x_gpio* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.lan743x_gpio*, %struct.lan743x_gpio** %3, align 8
  %12 = getelementptr inbounds %struct.lan743x_gpio, %struct.lan743x_gpio* %11, i32 0, i32 1
  store i32 268369920, i32* %12, align 4
  %13 = load %struct.lan743x_gpio*, %struct.lan743x_gpio** %3, align 8
  %14 = getelementptr inbounds %struct.lan743x_gpio, %struct.lan743x_gpio* %13, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %15 = load %struct.lan743x_gpio*, %struct.lan743x_gpio** %3, align 8
  %16 = getelementptr inbounds %struct.lan743x_gpio, %struct.lan743x_gpio* %15, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %18 = load i32, i32* @GPIO_CFG0, align 4
  %19 = load %struct.lan743x_gpio*, %struct.lan743x_gpio** %3, align 8
  %20 = getelementptr inbounds %struct.lan743x_gpio, %struct.lan743x_gpio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %17, i32 %18, i32 %21)
  %23 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %24 = load i32, i32* @GPIO_CFG1, align 4
  %25 = load %struct.lan743x_gpio*, %struct.lan743x_gpio** %3, align 8
  %26 = getelementptr inbounds %struct.lan743x_gpio, %struct.lan743x_gpio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %23, i32 %24, i32 %27)
  %29 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %30 = load i32, i32* @GPIO_CFG2, align 4
  %31 = load %struct.lan743x_gpio*, %struct.lan743x_gpio** %3, align 8
  %32 = getelementptr inbounds %struct.lan743x_gpio, %struct.lan743x_gpio* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %29, i32 %30, i32 %33)
  %35 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %36 = load i32, i32* @GPIO_CFG3, align 4
  %37 = load %struct.lan743x_gpio*, %struct.lan743x_gpio** %3, align 8
  %38 = getelementptr inbounds %struct.lan743x_gpio, %struct.lan743x_gpio* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %35, i32 %36, i32 %39)
  ret i32 0
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
