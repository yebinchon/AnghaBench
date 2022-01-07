; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c___tmio_mmc_card_detect_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c___tmio_mmc_card_detect_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@TMIO_STAT_CARD_INSERT = common dso_local global i32 0, align 4
@TMIO_STAT_CARD_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*, i32, i32)* @__tmio_mmc_card_detect_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tmio_mmc_card_detect_irq(%struct.tmio_mmc_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tmio_mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_host*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %9, i32 0, i32 0
  %11 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  store %struct.mmc_host* %11, %struct.mmc_host** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @TMIO_STAT_CARD_INSERT, align 4
  %14 = load i32, i32* @TMIO_STAT_CARD_REMOVE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %3
  %19 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %20 = load i32, i32* @TMIO_STAT_CARD_INSERT, align 4
  %21 = load i32, i32* @TMIO_STAT_CARD_REMOVE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @tmio_mmc_ack_mmc_irqs(%struct.tmio_mmc_host* %19, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TMIO_STAT_CARD_REMOVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28, %18
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @TMIO_STAT_CARD_INSERT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %38, %28
  %44 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %45 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @work_pending(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %51 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %50, i32 0, i32 0
  %52 = load %struct.mmc_host*, %struct.mmc_host** %51, align 8
  %53 = call i32 @msecs_to_jiffies(i32 100)
  %54 = call i32 @mmc_detect_change(%struct.mmc_host* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %43, %38, %33
  store i32 1, i32* %4, align 4
  br label %57

56:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @tmio_mmc_ack_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @mmc_detect_change(%struct.mmc_host*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
