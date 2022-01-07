; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_handle_driver_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_handle_driver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32 }

@FSF_AZ_DRIVER_EV_SUBCODE = common dso_local global i32 0, align 4
@FSF_AZ_DRIVER_EV_SUBDATA = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"channel %d TXQ %d flushed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"channel %d RXQ %d flushed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"channel %d EVQ %d initialised\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"channel %d SRAM update done\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"channel %d RXQ %d wakeup event\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"channel %d RX queue %d timer expired\0A\00", align 1
@rx_err = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"channel %d seen DRIVER RX_RESET event. Resetting.\0A\00", align 1
@RESET_TYPE_DISABLE = common dso_local global i32 0, align 4
@EFX_VI_BASE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [66 x i8] c"RX DMA Q %d reports descriptor fetch error. RX Q %d is disabled.\0A\00", align 1
@RESET_TYPE_DMA_ERROR = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"TX DMA Q %d reports descriptor fetch error. TX Q %d is disabled.\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"channel %d unknown driver event code %d data %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*, i32*)* @efx_farch_handle_driver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_farch_handle_driver_event(%struct.efx_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 1
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FSF_AZ_DRIVER_EV_SUBCODE, align 4
  %14 = call i32 @EFX_QWORD_FIELD(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FSF_AZ_DRIVER_EV_SUBDATA, align 4
  %18 = call i32 @EFX_QWORD_FIELD(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %141 [
    i32 131, label %20
    i32 134, label %34
    i32 135, label %48
    i32 133, label %59
    i32 130, label %69
    i32 132, label %80
    i32 136, label %91
    i32 129, label %107
    i32 128, label %124
  ]

20:                                               ; preds = %2
  %21 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %22 = load i32, i32* @hw, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %27 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @efx_farch_handle_tx_flush_done(%struct.efx_nic* %31, i32* %32)
  br label %153

34:                                               ; preds = %2
  %35 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %36 = load i32, i32* @hw, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %41 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @efx_farch_handle_rx_flush_done(%struct.efx_nic* %45, i32* %46)
  br label %153

48:                                               ; preds = %2
  %49 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %50 = load i32, i32* @hw, align 4
  %51 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %55 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @netif_dbg(%struct.efx_nic* %49, i32 %50, i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  br label %153

59:                                               ; preds = %2
  %60 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %61 = load i32, i32* @hw, align 4
  %62 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %63 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %66 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %60, i32 %61, i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %153

69:                                               ; preds = %2
  %70 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %71 = load i32, i32* @hw, align 4
  %72 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %73 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %76 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %78)
  br label %153

80:                                               ; preds = %2
  %81 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %82 = load i32, i32* @hw, align 4
  %83 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %84 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %87 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %81, i32 %82, i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %88, i32 %89)
  br label %153

91:                                               ; preds = %2
  %92 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %93 = load i32, i32* @rx_err, align 4
  %94 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %95 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %98 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.efx_nic* %92, i32 %93, i32 %96, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %102 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %101, i32 0, i32 1
  %103 = call i32 @atomic_inc(i32* %102)
  %104 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %105 = load i32, i32* @RESET_TYPE_DISABLE, align 4
  %106 = call i32 @efx_schedule_reset(%struct.efx_nic* %104, i32 %105)
  br label %153

107:                                              ; preds = %2
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @EFX_VI_BASE, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %113 = load i32, i32* @rx_err, align 4
  %114 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %115 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.efx_nic* %112, i32 %113, i32 %116, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %121 = load i32, i32* @RESET_TYPE_DMA_ERROR, align 4
  %122 = call i32 @efx_schedule_reset(%struct.efx_nic* %120, i32 %121)
  br label %123

123:                                              ; preds = %111, %107
  br label %153

124:                                              ; preds = %2
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @EFX_VI_BASE, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %130 = load i32, i32* @tx_err, align 4
  %131 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %132 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.efx_nic* %129, i32 %130, i32 %133, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %138 = load i32, i32* @RESET_TYPE_DMA_ERROR, align 4
  %139 = call i32 @efx_schedule_reset(%struct.efx_nic* %137, i32 %138)
  br label %140

140:                                              ; preds = %128, %124
  br label %153

141:                                              ; preds = %2
  %142 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %143 = load i32, i32* @hw, align 4
  %144 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %145 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %148 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %142, i32 %143, i32 %146, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %141, %140, %123, %91, %80, %69, %59, %48, %34, %20
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @efx_farch_handle_tx_flush_done(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_farch_handle_rx_flush_done(%struct.efx_nic*, i32*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
