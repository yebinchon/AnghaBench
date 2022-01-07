; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"(probably) IRQ\00", align 1
@RXBIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"RX DMA\00", align 1
@TXBIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"TX DMA\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: %s timeout - restarting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cosa_data*)* @cosa_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cosa_kick(%struct.cosa_data* %0) #0 {
  %2 = alloca %struct.cosa_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.cosa_data* %0, %struct.cosa_data** %2, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* @RXBIT, align 4
  %7 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %8 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i64* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, i32* @TXBIT, align 4
  %14 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %15 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i64* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %19

19:                                               ; preds = %18, %12
  %20 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %21 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %22, i8* %23)
  %25 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %26 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %25, i32 0, i32 0
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %30 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = call i64 (...) @claim_dma_lock()
  store i64 %31, i64* %4, align 8
  %32 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %33 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @disable_dma(i32 %34)
  %36 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %37 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clear_dma_ff(i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @release_dma_lock(i64 %40)
  %42 = call i32 @udelay(i32 100)
  %43 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %44 = call i32 @cosa_putstatus(%struct.cosa_data* %43, i32 0)
  %45 = call i32 @udelay(i32 100)
  %46 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %47 = call i32 @cosa_getdata8(%struct.cosa_data* %46)
  %48 = call i32 @udelay(i32 100)
  %49 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %50 = call i32 @cosa_putdata8(%struct.cosa_data* %49, i32 0)
  %51 = call i32 @udelay(i32 100)
  %52 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %53 = call i32 @put_driver_status_nolock(%struct.cosa_data* %52)
  %54 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %55 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %54, i32 0, i32 0
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cosa_putstatus(%struct.cosa_data*, i32) #1

declare dso_local i32 @cosa_getdata8(%struct.cosa_data*) #1

declare dso_local i32 @cosa_putdata8(%struct.cosa_data*, i32) #1

declare dso_local i32 @put_driver_status_nolock(%struct.cosa_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
