; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_jz4780-nemc.c_jz4780_nemc_ns_to_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_jz4780-nemc.c_jz4780_nemc_ns_to_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_nemc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_nemc*, i32)* @jz4780_nemc_ns_to_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_nemc_ns_to_cycles(%struct.jz4780_nemc* %0, i32 %1) #0 {
  %3 = alloca %struct.jz4780_nemc*, align 8
  %4 = alloca i32, align 4
  store %struct.jz4780_nemc* %0, %struct.jz4780_nemc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %5, 1000
  %7 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %3, align 8
  %8 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %6, %9
  %11 = sub nsw i32 %10, 1
  %12 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %3, align 8
  %13 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %11, %14
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
