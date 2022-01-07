; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c___sdhci_add_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c___sdhci_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { i32 }

@WQ_UNBOUND = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sdhci\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@sdhci_complete_work = common dso_local global i32 0, align 4
@sdhci_timeout_timer = common dso_local global i32 0, align 4
@sdhci_timeout_data_timer = common dso_local global i32 0, align 4
@sdhci_irq = common dso_local global i32 0, align 4
@sdhci_thread_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Failed to request IRQ %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: Failed to register LED device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: SDHCI controller on %s [%s] using %s\0A\00", align 1
@SDHCI_USE_ADMA = common dso_local global i32 0, align 4
@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ADMA 64-bit\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ADMA\00", align 1
@SDHCI_USE_SDMA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sdhci_add_host(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %7 = load i32, i32* @WQ_UNBOUND, align 4
  %8 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @WQ_HIGHPRI, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %13 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %12, i32 0, i32 8
  %14 = load %struct.mmc_host*, %struct.mmc_host** %13, align 8
  store %struct.mmc_host* %14, %struct.mmc_host** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15, i32 0)
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %142

26:                                               ; preds = %1
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 7
  %29 = load i32, i32* @sdhci_complete_work, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %32 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %31, i32 0, i32 6
  %33 = load i32, i32* @sdhci_timeout_timer, align 4
  %34 = call i32 @timer_setup(i32* %32, i32 %33, i32 0)
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %35, i32 0, i32 5
  %37 = load i32, i32* @sdhci_timeout_data_timer, align 4
  %38 = call i32 @timer_setup(i32* %36, i32 %37, i32 0)
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 4
  %41 = call i32 @init_waitqueue_head(i32* %40)
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %43 = call i32 @sdhci_init(%struct.sdhci_host* %42, i32 0)
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %45 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @sdhci_irq, align 4
  %48 = load i32, i32* @sdhci_thread_irq, align 4
  %49 = load i32, i32* @IRQF_SHARED, align 4
  %50 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %51 = call i32 @mmc_hostname(%struct.mmc_host* %50)
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %53 = call i32 @request_threaded_irq(i32 %46, i32 %47, i32 %48, i32 %49, i32 %51, %struct.sdhci_host* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %26
  %57 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %58 = call i32 @mmc_hostname(%struct.mmc_host* %57)
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %60 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61, i32 %62)
  br label %136

64:                                               ; preds = %26
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %66 = call i32 @sdhci_led_register(%struct.sdhci_host* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %71 = call i32 @mmc_hostname(%struct.mmc_host* %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  br label %121

74:                                               ; preds = %64
  %75 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %76 = call i32 @mmc_add_host(%struct.mmc_host* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %118

80:                                               ; preds = %74
  %81 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %82 = call i32 @mmc_hostname(%struct.mmc_host* %81)
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %84 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %87 = call i32 @mmc_dev(%struct.mmc_host* %86)
  %88 = call i32 @dev_name(i32 %87)
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %90 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SDHCI_USE_ADMA, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %80
  %96 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %97 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  br label %113

104:                                              ; preds = %80
  %105 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %106 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SDHCI_USE_SDMA, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  br label %113

113:                                              ; preds = %104, %95
  %114 = phi i8* [ %103, %95 ], [ %112, %104 ]
  %115 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %85, i32 %88, i8* %114)
  %116 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %117 = call i32 @sdhci_enable_card_detection(%struct.sdhci_host* %116)
  store i32 0, i32* %2, align 4
  br label %142

118:                                              ; preds = %79
  %119 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %120 = call i32 @sdhci_led_unregister(%struct.sdhci_host* %119)
  br label %121

121:                                              ; preds = %118, %69
  %122 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %123 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %124 = call i32 @sdhci_do_reset(%struct.sdhci_host* %122, i32 %123)
  %125 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %126 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %127 = call i32 @sdhci_writel(%struct.sdhci_host* %125, i32 0, i32 %126)
  %128 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %129 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %130 = call i32 @sdhci_writel(%struct.sdhci_host* %128, i32 0, i32 %129)
  %131 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %132 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %135 = call i32 @free_irq(i32 %133, %struct.sdhci_host* %134)
  br label %136

136:                                              ; preds = %121, %56
  %137 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %138 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @destroy_workqueue(i32 %139)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %136, %113, %23
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @sdhci_init(%struct.sdhci_host*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.sdhci_host*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i32 @sdhci_led_register(%struct.sdhci_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_enable_card_detection(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_led_unregister(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_do_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.sdhci_host*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
