; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i64, i64, i32, i64, i64, i64, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@SDIO_CCCR_INTx = common dso_local global i32 0, align 4
@INTR_STATUS_FUNC1 = common dso_local global i32 0, align 4
@INTR_STATUS_FUNC2 = common dso_local global i32 0, align 4
@CLK_AVAIL = common dso_local global i64 0, align 8
@SDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"idle\0A\00", align 1
@BRCMF_SDIOD_DATA = common dso_local global i64 0, align 8
@BRCMF_WD_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_sdio*)* @brcmf_sdio_bus_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_bus_watchdog(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca %struct.brcmf_sdio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %2, align 8
  %5 = load i32, i32* @TIMER, align 4
  %6 = call i32 @brcmf_dbg(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %8 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %7, i32 0, i32 16
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %99, label %11

11:                                               ; preds = %1
  %12 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %13 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %12, i32 0, i32 15
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %11
  %17 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %22 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %99

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  %26 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %27 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %29 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %34 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %33, i32 0, i32 10
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %38 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %37, i32 0, i32 10
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %32, %25
  %43 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %44 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %42
  %48 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %49 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %48, i32 0, i32 7
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sdio_claim_host(i32 %52)
  %54 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %55 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %54, i32 0, i32 7
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* @SDIO_CCCR_INTx, align 4
  %58 = call i32 @brcmf_sdiod_func0_rb(%struct.TYPE_6__* %56, i32 %57, i32* null)
  store i32 %58, i32* %4, align 4
  %59 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %60 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %59, i32 0, i32 7
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sdio_release_host(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @INTR_STATUS_FUNC1, align 4
  %67 = load i32, i32* @INTR_STATUS_FUNC2, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %47, %42
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %75 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %80 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %79, i32 0, i32 13
  %81 = call i32 @atomic_set(i32* %80, i32 1)
  %82 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %83 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %85 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %88 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %87, i32 0, i32 11
  %89 = call i32 @queue_work(i32 %86, i32* %88)
  br label %90

90:                                               ; preds = %73, %70
  br label %91

91:                                               ; preds = %90, %32
  %92 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %93 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %92, i32 0, i32 10
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %97 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %96, i32 0, i32 10
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  br label %99

99:                                               ; preds = %91, %16, %11, %1
  %100 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %101 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %159, label %104

104:                                              ; preds = %99
  %105 = call i32 (...) @rmb()
  %106 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %107 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %155, label %110

110:                                              ; preds = %104
  %111 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %112 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %155

115:                                              ; preds = %110
  %116 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %117 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @CLK_AVAIL, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %155

121:                                              ; preds = %115
  %122 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %123 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %127 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %130 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %121
  %134 = load i32, i32* @SDIO, align 4
  %135 = call i32 @brcmf_dbg(i32 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %137 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %136, i32 0, i32 7
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @sdio_claim_host(i32 %140)
  %142 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %143 = call i32 @brcmf_sdio_wd_timer(%struct.brcmf_sdio* %142, i32 0)
  %144 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %145 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %144, i32 0, i32 6
  store i64 0, i64* %145, align 8
  %146 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %147 = call i32 @brcmf_sdio_bus_sleep(%struct.brcmf_sdio* %146, i32 1, i32 0)
  %148 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %149 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %148, i32 0, i32 7
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @sdio_release_host(i32 %152)
  br label %154

154:                                              ; preds = %133, %121
  br label %158

155:                                              ; preds = %115, %110, %104
  %156 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %157 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %156, i32 0, i32 6
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %155, %154
  br label %162

159:                                              ; preds = %99
  %160 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %161 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %160, i32 0, i32 6
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %159, %158
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @brcmf_sdiod_func0_rb(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @brcmf_sdio_wd_timer(%struct.brcmf_sdio*, i32) #1

declare dso_local i32 @brcmf_sdio_bus_sleep(%struct.brcmf_sdio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
