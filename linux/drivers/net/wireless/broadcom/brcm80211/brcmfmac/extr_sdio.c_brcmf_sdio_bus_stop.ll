; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { i64, i32, i32, %struct.brcmf_sdio* }
%struct.brcmf_sdio = type { i32, i64, i64, i32, i64, i32, i32, i32, i64, i32*, %struct.brcmf_core* }
%struct.brcmf_core = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@BRCMF_SDIOD_NOMEDIUM = common dso_local global i64 0, align 8
@hostintmask = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_CHIPCLKCSR = common dso_local global i32 0, align 4
@SBSDIO_HT_AVAIL_REQ = common dso_local global i32 0, align 4
@SBSDIO_FORCE_HT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to force clock for F2: err %d\0A\00", align 1
@INTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"disable SDIO interrupts\0A\00", align 1
@intstatus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @brcmf_sdio_bus_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_bus_stop(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.brcmf_bus*, align 8
  %4 = alloca %struct.brcmf_sdio_dev*, align 8
  %5 = alloca %struct.brcmf_sdio*, align 8
  %6 = alloca %struct.brcmf_core*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %11)
  store %struct.brcmf_bus* %12, %struct.brcmf_bus** %3, align 8
  %13 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %15, align 8
  store %struct.brcmf_sdio_dev* %16, %struct.brcmf_sdio_dev** %4, align 8
  %17 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %17, i32 0, i32 3
  %19 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %18, align 8
  store %struct.brcmf_sdio* %19, %struct.brcmf_sdio** %5, align 8
  %20 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %21 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %20, i32 0, i32 10
  %22 = load %struct.brcmf_core*, %struct.brcmf_core** %21, align 8
  store %struct.brcmf_core* %22, %struct.brcmf_core** %6, align 8
  %23 = load i32, i32* @TRACE, align 4
  %24 = call i32 @brcmf_dbg(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %26 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %25, i32 0, i32 9
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load i32, i32* @SIGTERM, align 4
  %31 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %32 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %31, i32 0, i32 9
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @send_sig(i32 %30, i32* %33, i32 1)
  %35 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %36 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %35, i32 0, i32 9
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kthread_stop(i32* %37)
  %39 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %40 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %39, i32 0, i32 9
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %29, %1
  %42 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %43 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BRCMF_SDIOD_NOMEDIUM, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %117

47:                                               ; preds = %41
  %48 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %49 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sdio_claim_host(i32 %50)
  %52 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %53 = call i32 @brcmf_sdio_bus_sleep(%struct.brcmf_sdio* %52, i32 0, i32 0)
  %54 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %55 = load %struct.brcmf_core*, %struct.brcmf_core** %6, align 8
  %56 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @hostintmask, align 4
  %59 = call i64 @SD_REG(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %54, i64 %60, i64 0, i32* null)
  %62 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %63 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %62, i32 0, i32 8
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  %65 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %66 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  %67 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %68 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %69 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %67, i32 %68, i32* %10)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %47
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %9, align 4
  %74 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %75 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @brcmf_chip_is_ulp(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @SBSDIO_HT_AVAIL_REQ, align 4
  br label %83

81:                                               ; preds = %72
  %82 = load i32, i32* @SBSDIO_FORCE_HT, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %88 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %87, i32 %88, i32 %89, i32* %10)
  br label %91

91:                                               ; preds = %83, %47
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @brcmf_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @INTR, align 4
  %99 = call i32 @brcmf_dbg(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %101 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @sdio_disable_func(i32 %102)
  %104 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %105 = load %struct.brcmf_core*, %struct.brcmf_core** %6, align 8
  %106 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @intstatus, align 4
  %109 = call i64 @SD_REG(i32 %108)
  %110 = add nsw i64 %107, %109
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %104, i64 %110, i64 %111, i32* null)
  %113 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %114 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @sdio_release_host(i32 %115)
  br label %117

117:                                              ; preds = %97, %41
  %118 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %119 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %118, i32 0, i32 6
  %120 = call i32 @brcmu_pktq_flush(i32* %119, i32 1, i32* null, i32* null)
  %121 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %122 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @brcmu_pkt_buf_free_skb(i32 %123)
  %125 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %126 = call i32 @brcmf_sdio_free_glom(%struct.brcmf_sdio* %125)
  %127 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %128 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %127, i32 0, i32 3
  %129 = call i32 @spin_lock_bh(i32* %128)
  %130 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %131 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %133 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %132, i32 0, i32 3
  %134 = call i32 @spin_unlock_bh(i32* %133)
  %135 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %136 = call i32 @brcmf_sdio_dcmd_resp_wake(%struct.brcmf_sdio* %135)
  %137 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %138 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  %139 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %140 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %142 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %141, i32 0, i32 2
  store i64 0, i64* %142, align 8
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @send_sig(i32, i32*, i32) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @brcmf_sdio_bus_sleep(%struct.brcmf_sdio*, i32, i32) #1

declare dso_local i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev*, i64, i64, i32*) #1

declare dso_local i64 @SD_REG(i32) #1

declare dso_local i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i64 @brcmf_chip_is_ulp(i32) #1

declare dso_local i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @brcmf_err(i8*, i32) #1

declare dso_local i32 @sdio_disable_func(i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @brcmu_pktq_flush(i32*, i32, i32*, i32*) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(i32) #1

declare dso_local i32 @brcmf_sdio_free_glom(%struct.brcmf_sdio*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @brcmf_sdio_dcmd_resp_wake(%struct.brcmf_sdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
