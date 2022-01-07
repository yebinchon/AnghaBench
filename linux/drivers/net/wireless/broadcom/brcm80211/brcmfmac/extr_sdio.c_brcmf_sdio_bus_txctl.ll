; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_txctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_txctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { i64, %struct.brcmf_sdio* }
%struct.brcmf_sdio = type { i8*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_SDIOD_DATA = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@CTL_DONE_TIMEOUT = common dso_local global i32 0, align 4
@SDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ctrl_frame timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ctrl_frame complete, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @brcmf_sdio_bus_txctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_bus_txctl(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcmf_bus*, align 8
  %9 = alloca %struct.brcmf_sdio_dev*, align 8
  %10 = alloca %struct.brcmf_sdio*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %12)
  store %struct.brcmf_bus* %13, %struct.brcmf_bus** %8, align 8
  %14 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %15 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %16, align 8
  store %struct.brcmf_sdio_dev* %17, %struct.brcmf_sdio_dev** %9, align 8
  %18 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %9, align 8
  %19 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %18, i32 0, i32 1
  %20 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %19, align 8
  store %struct.brcmf_sdio* %20, %struct.brcmf_sdio** %10, align 8
  %21 = load i32, i32* @TRACE, align 4
  %22 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %9, align 8
  %24 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BRCMF_SDIOD_DATA, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %113

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %34 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %37 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = call i32 (...) @wmb()
  %39 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %40 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %42 = call i32 @brcmf_sdio_trigger_dpc(%struct.brcmf_sdio* %41)
  %43 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %44 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %47 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @CTL_DONE_TIMEOUT, align 4
  %53 = call i32 @wait_event_interruptible_timeout(i32 %45, i32 %51, i32 %52)
  store i32 0, i32* %11, align 4
  %54 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %55 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %31
  %59 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %60 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %59, i32 0, i32 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sdio_claim_host(i32 %63)
  %65 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %66 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load i32, i32* @SDIO, align 4
  %71 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %73 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %72, i32 0, i32 1
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %69, %58
  %77 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %78 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %77, i32 0, i32 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sdio_release_host(i32 %81)
  br label %83

83:                                               ; preds = %76, %31
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @SDIO, align 4
  %88 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %89 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = call i32 (...) @rmb()
  %93 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %94 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %86, %83
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %101 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %111

105:                                              ; preds = %96
  %106 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %107 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %99
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %28
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @brcmf_sdio_trigger_dpc(%struct.brcmf_sdio*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
