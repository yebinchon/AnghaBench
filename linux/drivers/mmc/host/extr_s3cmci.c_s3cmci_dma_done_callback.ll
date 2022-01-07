; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_dma_done_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_dma_done_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dbg_dma = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"DMA FINISHED\0A\00", align 1
@COMPLETION_FINALIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @s3cmci_dma_done_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_dma_done_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.s3cmci_host*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.s3cmci_host*
  store %struct.s3cmci_host* %6, %struct.s3cmci_host** %3, align 8
  %7 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %8 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %15 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %24 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %23, i32 0, i32 1
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %28 = load i32, i32* @dbg_dma, align 4
  %29 = call i32 @dbg(%struct.s3cmci_host* %27, i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %31 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @COMPLETION_FINALIZE, align 4
  %33 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %34 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %36 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %35, i32 0, i32 2
  %37 = call i32 @tasklet_schedule(i32* %36)
  %38 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %39 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %38, i32 0, i32 1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
