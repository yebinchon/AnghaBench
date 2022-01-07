; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@timeout_timer = common dso_local global i32 0, align 4
@JZ_MMC_IRQ_END_CMD_RES = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@host = common dso_local global %struct.jz4740_mmc_host* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @jz4740_mmc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.jz4740_mmc_host*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %5 = ptrtoint %struct.jz4740_mmc_host* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timeout_timer, align 4
  %8 = call %struct.jz4740_mmc_host* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.jz4740_mmc_host* %8, %struct.jz4740_mmc_host** %3, align 8
  %9 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %9, i32 0, i32 1
  %11 = call i32 @test_and_clear_bit(i32 0, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %16 = load i32, i32* @JZ_MMC_IRQ_END_CMD_RES, align 4
  %17 = call i32 @jz4740_mmc_set_irq_enabled(%struct.jz4740_mmc_host* %15, i32 %16, i32 0)
  %18 = load i32, i32* @ETIMEDOUT, align 4
  %19 = sub nsw i32 0, %18
  %20 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %19, i32* %25, align 4
  %26 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %27 = call i32 @jz4740_mmc_request_done(%struct.jz4740_mmc_host* %26)
  br label %28

28:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.jz4740_mmc_host* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @jz4740_mmc_set_irq_enabled(%struct.jz4740_mmc_host*, i32, i32) #1

declare dso_local i32 @jz4740_mmc_request_done(%struct.jz4740_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
