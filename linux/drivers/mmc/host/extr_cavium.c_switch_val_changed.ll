; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_switch_val_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_switch_val_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_slot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cvm_mmc_slot*, i32)* @switch_val_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_val_changed(%struct.cvm_mmc_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.cvm_mmc_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cvm_mmc_slot* %0, %struct.cvm_mmc_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %6 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %3, align 8
  %7 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %10, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
