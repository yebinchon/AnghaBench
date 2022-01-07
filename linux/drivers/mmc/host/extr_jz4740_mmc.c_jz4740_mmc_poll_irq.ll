; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_poll_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_poll_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4740_mmc_host*, i32)* @jz4740_mmc_poll_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_mmc_poll_irq(%struct.jz4740_mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4740_mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 2048, i32* %6, align 4
  br label %8

8:                                                ; preds = %20, %2
  %9 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %10 = call i32 @jz4740_mmc_read_irq_reg(%struct.jz4740_mmc_host* %9)
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  br i1 %21, label %8, label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %26, i32 0, i32 1
  %28 = call i32 @set_bit(i32 0, i32* %27)
  %29 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %30 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %29, i32 0, i32 0
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 5, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @mod_timer(i32* %30, i64 %35)
  %37 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @jz4740_mmc_set_irq_enabled(%struct.jz4740_mmc_host* %37, i32 %38, i32 1)
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @jz4740_mmc_read_irq_reg(%struct.jz4740_mmc_host*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @jz4740_mmc_set_irq_enabled(%struct.jz4740_mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
