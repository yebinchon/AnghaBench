; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_power_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_power_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator*, i32)* @mcp251x_power_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp251x_power_enable(%struct.regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.regulator*, %struct.regulator** %4, align 8
  %7 = call i64 @IS_ERR_OR_NULL(%struct.regulator* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.regulator*, %struct.regulator** %4, align 8
  %15 = call i32 @regulator_enable(%struct.regulator* %14)
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %10
  %17 = load %struct.regulator*, %struct.regulator** %4, align 8
  %18 = call i32 @regulator_disable(%struct.regulator* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %13, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.regulator*) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
