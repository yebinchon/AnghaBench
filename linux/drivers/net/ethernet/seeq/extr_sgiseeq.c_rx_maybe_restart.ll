; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_rx_maybe_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_rx_maybe_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgiseeq_private = type { i64, i64 }
%struct.hpc3_ethregs = type { i32, i32 }
%struct.sgiseeq_regs = type { i32 }

@HPC3_ERXCTRL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sgiseeq_private*, %struct.hpc3_ethregs*, %struct.sgiseeq_regs*)* @rx_maybe_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_maybe_restart(%struct.sgiseeq_private* %0, %struct.hpc3_ethregs* %1, %struct.sgiseeq_regs* %2) #0 {
  %4 = alloca %struct.sgiseeq_private*, align 8
  %5 = alloca %struct.hpc3_ethregs*, align 8
  %6 = alloca %struct.sgiseeq_regs*, align 8
  store %struct.sgiseeq_private* %0, %struct.sgiseeq_private** %4, align 8
  store %struct.hpc3_ethregs* %1, %struct.hpc3_ethregs** %5, align 8
  store %struct.sgiseeq_regs* %2, %struct.sgiseeq_regs** %6, align 8
  %7 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %5, align 8
  %8 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HPC3_ERXCTRL_ACTIVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  %14 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %15 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %16 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %19 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i32 @VIRT_TO_DMA(%struct.sgiseeq_private* %14, i64 %21)
  %23 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %5, align 8
  %24 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %26 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %5, align 8
  %27 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %6, align 8
  %28 = call i32 @seeq_go(%struct.sgiseeq_private* %25, %struct.hpc3_ethregs* %26, %struct.sgiseeq_regs* %27)
  br label %29

29:                                               ; preds = %13, %3
  ret void
}

declare dso_local i32 @VIRT_TO_DMA(%struct.sgiseeq_private*, i64) #1

declare dso_local i32 @seeq_go(%struct.sgiseeq_private*, %struct.hpc3_ethregs*, %struct.sgiseeq_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
