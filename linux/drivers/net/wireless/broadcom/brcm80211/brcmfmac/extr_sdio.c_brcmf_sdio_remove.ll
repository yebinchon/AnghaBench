; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { %struct.brcmf_sdio*, %struct.brcmf_sdio*, %struct.TYPE_2__*, i64, i64, i32, i32* }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@BRCMF_SDIOD_NOMEDIUM = common dso_local global i64 0, align 8
@CLK_AVAIL = common dso_local global i32 0, align 4
@CLK_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Disconnected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_sdio_remove(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca %struct.brcmf_sdio*, align 8
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %2, align 8
  %3 = load i32, i32* @TRACE, align 4
  %4 = call i32 @brcmf_dbg(i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %6 = icmp ne %struct.brcmf_sdio* %5, null
  br i1 %6, label %7, label %116

7:                                                ; preds = %1
  %8 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %9 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %8, i32 0, i32 6
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i32, i32* @SIGTERM, align 4
  %14 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %15 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @send_sig(i32 %13, i32* %16, i32 1)
  %18 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %19 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kthread_stop(i32* %20)
  %22 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %22, i32 0, i32 6
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %12, %7
  %25 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %26 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @brcmf_sdiod_intr_unregister(%struct.TYPE_2__* %27)
  %29 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %30 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @brcmf_detach(i32 %33)
  %35 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %36 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %35, i32 0, i32 5
  %37 = call i32 @cancel_work_sync(i32* %36)
  %38 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %39 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %24
  %43 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %44 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @destroy_workqueue(i64 %45)
  br label %47

47:                                               ; preds = %42, %24
  %48 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %49 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %47
  %53 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %54 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BRCMF_SDIOD_NOMEDIUM, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %52
  %61 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %62 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sdio_claim_host(i32 %65)
  %67 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %68 = call i32 @brcmf_sdio_wd_timer(%struct.brcmf_sdio* %67, i32 0)
  %69 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %70 = load i32, i32* @CLK_AVAIL, align 4
  %71 = call i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio* %69, i32 %70, i32 0)
  %72 = call i32 @msleep(i32 20)
  %73 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %74 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @brcmf_chip_set_passive(i64 %75)
  %77 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %78 = load i32, i32* @CLK_NONE, align 4
  %79 = call i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio* %77, i32 %78, i32 0)
  %80 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %81 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sdio_release_host(i32 %84)
  br label %86

86:                                               ; preds = %60, %52
  %87 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %88 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @brcmf_chip_detach(i64 %89)
  br label %91

91:                                               ; preds = %86, %47
  %92 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %93 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %100 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @brcmf_release_module_param(i64 %103)
  br label %105

105:                                              ; preds = %98, %91
  %106 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %107 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %106, i32 0, i32 1
  %108 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %107, align 8
  %109 = call i32 @kfree(%struct.brcmf_sdio* %108)
  %110 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %111 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %110, i32 0, i32 0
  %112 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %111, align 8
  %113 = call i32 @kfree(%struct.brcmf_sdio* %112)
  %114 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %115 = call i32 @kfree(%struct.brcmf_sdio* %114)
  br label %116

116:                                              ; preds = %105, %1
  %117 = load i32, i32* @TRACE, align 4
  %118 = call i32 @brcmf_dbg(i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @send_sig(i32, i32*, i32) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @brcmf_sdiod_intr_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @brcmf_detach(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @brcmf_sdio_wd_timer(%struct.brcmf_sdio*, i32) #1

declare dso_local i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @brcmf_chip_set_passive(i64) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @brcmf_chip_detach(i64) #1

declare dso_local i32 @brcmf_release_module_param(i64) #1

declare dso_local i32 @kfree(%struct.brcmf_sdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
