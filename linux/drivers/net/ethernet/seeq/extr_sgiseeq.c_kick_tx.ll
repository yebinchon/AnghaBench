; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_kick_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_kick_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sgiseeq_private = type { i32, %struct.sgiseeq_tx_desc* }
%struct.sgiseeq_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hpc3_ethregs = type { i32, i32 }

@HPCDMA_XIU = common dso_local global i32 0, align 4
@HPCDMA_ETXD = common dso_local global i32 0, align 4
@HPC3_ETXCTRL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sgiseeq_private*, %struct.hpc3_ethregs*)* @kick_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kick_tx(%struct.net_device* %0, %struct.sgiseeq_private* %1, %struct.hpc3_ethregs* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sgiseeq_private*, align 8
  %6 = alloca %struct.hpc3_ethregs*, align 8
  %7 = alloca %struct.sgiseeq_tx_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sgiseeq_private* %1, %struct.sgiseeq_private** %5, align 8
  store %struct.hpc3_ethregs* %2, %struct.hpc3_ethregs** %6, align 8
  %9 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %5, align 8
  %10 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %5, align 8
  %13 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %12, i32 0, i32 1
  %14 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %14, i64 %16
  store %struct.sgiseeq_tx_desc* %17, %struct.sgiseeq_tx_desc** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %7, align 8
  %20 = call i32 @dma_sync_desc_cpu(%struct.net_device* %18, %struct.sgiseeq_tx_desc* %19)
  br label %21

21:                                               ; preds = %34, %3
  %22 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %7, align 8
  %23 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HPCDMA_XIU, align 4
  %27 = load i32, i32* @HPCDMA_ETXD, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load i32, i32* @HPCDMA_XIU, align 4
  %31 = load i32, i32* @HPCDMA_ETXD, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @NEXT_TX(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %5, align 8
  %38 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %37, i32 0, i32 1
  %39 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %39, i64 %41
  store %struct.sgiseeq_tx_desc* %42, %struct.sgiseeq_tx_desc** %7, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %7, align 8
  %45 = call i32 @dma_sync_desc_cpu(%struct.net_device* %43, %struct.sgiseeq_tx_desc* %44)
  br label %21

46:                                               ; preds = %21
  %47 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %7, align 8
  %48 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HPCDMA_XIU, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %5, align 8
  %56 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %7, align 8
  %57 = call i32 @VIRT_TO_DMA(%struct.sgiseeq_private* %55, %struct.sgiseeq_tx_desc* %56)
  %58 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %6, align 8
  %59 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @HPC3_ETXCTRL_ACTIVE, align 4
  %61 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %6, align 8
  %62 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %46
  ret void
}

declare dso_local i32 @dma_sync_desc_cpu(%struct.net_device*, %struct.sgiseeq_tx_desc*) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @VIRT_TO_DMA(%struct.sgiseeq_private*, %struct.sgiseeq_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
