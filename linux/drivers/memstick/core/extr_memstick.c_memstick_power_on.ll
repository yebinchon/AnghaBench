; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 (%struct.memstick_host*, i32, i32)* }

@MEMSTICK_POWER = common dso_local global i32 0, align 4
@MEMSTICK_POWER_ON = common dso_local global i32 0, align 4
@MEMSTICK_INTERFACE = common dso_local global i32 0, align 4
@MEMSTICK_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_host*)* @memstick_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memstick_power_on(%struct.memstick_host* %0) #0 {
  %2 = alloca %struct.memstick_host*, align 8
  %3 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %2, align 8
  %4 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %5 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %4, i32 0, i32 0
  %6 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %5, align 8
  %7 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %8 = load i32, i32* @MEMSTICK_POWER, align 4
  %9 = load i32, i32* @MEMSTICK_POWER_ON, align 4
  %10 = call i32 %6(%struct.memstick_host* %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %15 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %14, i32 0, i32 0
  %16 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %15, align 8
  %17 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %18 = load i32, i32* @MEMSTICK_INTERFACE, align 4
  %19 = load i32, i32* @MEMSTICK_SERIAL, align 4
  %20 = call i32 %16(%struct.memstick_host* %17, i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
