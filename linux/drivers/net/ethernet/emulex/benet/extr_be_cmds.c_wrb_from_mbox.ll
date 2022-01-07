; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_wrb_from_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_wrb_from_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_mcc_wrb = type { i32 }
%struct.be_adapter = type { %struct.be_dma_mem }
%struct.be_dma_mem = type { i64 }
%struct.be_mcc_mailbox = type { %struct.be_mcc_wrb }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.be_mcc_wrb* (%struct.be_adapter*)* @wrb_from_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_dma_mem*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %5, i32 0, i32 0
  store %struct.be_dma_mem* %6, %struct.be_dma_mem** %3, align 8
  %7 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %8 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.be_mcc_mailbox*
  %11 = getelementptr inbounds %struct.be_mcc_mailbox, %struct.be_mcc_mailbox* %10, i32 0, i32 0
  store %struct.be_mcc_wrb* %11, %struct.be_mcc_wrb** %4, align 8
  %12 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %13 = call i32 @memset(%struct.be_mcc_wrb* %12, i32 0, i32 4)
  %14 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  ret %struct.be_mcc_wrb* %14
}

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
