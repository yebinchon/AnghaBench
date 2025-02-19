; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_set_irq_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_set_irq_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4740_mmc_host*, i32, i32)* @jz4740_mmc_set_irq_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_set_irq_enabled(%struct.jz4740_mmc_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jz4740_mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %18 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %24 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %14
  %28 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %29 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %30 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @jz4740_mmc_write_irq_mask(%struct.jz4740_mmc_host* %28, i32 %31)
  %33 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %34 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %33, i32 0, i32 1
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jz4740_mmc_write_irq_mask(%struct.jz4740_mmc_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
