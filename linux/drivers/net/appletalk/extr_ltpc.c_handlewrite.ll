; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/appletalk/extr_ltpc.c_handlewrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/appletalk/extr_ltpc.c_handlewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@ltdmabuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"timed out in handlewrite, dma res %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @handlewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handlewrite(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = call i64 (...) @claim_dma_lock()
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @disable_dma(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @clear_dma_ff(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @DMA_MODE_WRITE, align 4
  %19 = call i32 @set_dma_mode(i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ltdmabuf, align 4
  %22 = call i32 @virt_to_bus(i32 %21)
  %23 = call i32 @set_dma_addr(i32 %20, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @set_dma_count(i32 %24, i32 800)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @enable_dma(i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @release_dma_lock(i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 3
  %32 = call i32 @inb_p(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 2
  %35 = call i32 @inb_p(i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i64 @wait_timeout(%struct.net_device* %36, i32 251)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %1
  %40 = call i64 (...) @claim_dma_lock()
  store i64 %40, i64* %5, align 8
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @get_dma_residue(i32 %43)
  %45 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @release_dma_lock(i64 %46)
  br label %48

48:                                               ; preds = %39, %1
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @virt_to_bus(i32) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i64 @wait_timeout(%struct.net_device*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
