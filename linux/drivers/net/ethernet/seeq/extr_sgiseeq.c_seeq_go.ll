; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_seeq_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_seeq_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgiseeq_private = type { i32 }
%struct.hpc3_ethregs = type { i32 }
%struct.sgiseeq_regs = type { i32 }

@RSTAT_GO_BITS = common dso_local global i32 0, align 4
@HPC3_ERXCTRL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sgiseeq_private*, %struct.hpc3_ethregs*, %struct.sgiseeq_regs*)* @seeq_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seeq_go(%struct.sgiseeq_private* %0, %struct.hpc3_ethregs* %1, %struct.sgiseeq_regs* %2) #0 {
  %4 = alloca %struct.sgiseeq_private*, align 8
  %5 = alloca %struct.hpc3_ethregs*, align 8
  %6 = alloca %struct.sgiseeq_regs*, align 8
  store %struct.sgiseeq_private* %0, %struct.sgiseeq_private** %4, align 8
  store %struct.hpc3_ethregs* %1, %struct.hpc3_ethregs** %5, align 8
  store %struct.sgiseeq_regs* %2, %struct.sgiseeq_regs** %6, align 8
  %7 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %4, align 8
  %8 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RSTAT_GO_BITS, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %6, align 8
  %13 = getelementptr inbounds %struct.sgiseeq_regs, %struct.sgiseeq_regs* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @HPC3_ERXCTRL_ACTIVE, align 4
  %15 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %5, align 8
  %16 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
