; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_card_irq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_card_irq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.mmc_host* }
%struct.mmc_host = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*, i32)* }

@MMC_CAP2_SDIO_IRQ_NOTHREAD = common dso_local global i32 0, align 4
@sdio_irq_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ksdioirqd/%s\00", align 1
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @sdio_card_irq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_card_irq_get(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 0
  %8 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %8, %struct.mmc_host** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %72, label %21

21:                                               ; preds = %1
  %22 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MMC_CAP2_SDIO_IRQ_NOTHREAD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %21
  %29 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 5
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load i32, i32* @sdio_irq_thread, align 4
  %33 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %34 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %35 = call i32 @mmc_hostname(%struct.mmc_host* %34)
  %36 = call i32 @kthread_run(i32 %32, %struct.mmc_host* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %28
  %45 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %73

54:                                               ; preds = %28
  br label %71

55:                                               ; preds = %21
  %56 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %66, align 8
  %68 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %69 = call i32 %67(%struct.mmc_host* %68, i32 1)
  br label %70

70:                                               ; preds = %62, %55
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %1
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kthread_run(i32, %struct.mmc_host*, i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
