; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_handle_driver_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_handle_driver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { i32, %struct.ef4_nic* }
%struct.ef4_nic = type { i32, i32 }

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
@RESET_TYPE_RX_RECOVERY = common dso_local global i32 0, align 4
@RESET_TYPE_DISABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [66 x i8] c"RX DMA Q %d reports descriptor fetch error. RX Q %d is disabled.\0A\00", align 1
@RESET_TYPE_DMA_ERROR = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"TX DMA Q %d reports descriptor fetch error. TX Q %d is disabled.\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"channel %d unknown driver event code %d data %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_channel*, i32*)* @ef4_farch_handle_driver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_farch_handle_driver_event(%struct.ef4_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.ef4_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ef4_channel* %0, %struct.ef4_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %8, i32 0, i32 1
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  store %struct.ef4_nic* %10, %struct.ef4_nic** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FSF_AZ_DRIVER_EV_SUBCODE, align 4
  %14 = call i32 @EF4_QWORD_FIELD(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FSF_AZ_DRIVER_EV_SUBDATA, align 4
  %18 = call i32 @EF4_QWORD_FIELD(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %139 [
    i32 131, label %20
    i32 134, label %34
    i32 135, label %48
    i32 133, label %59
    i32 130, label %69
    i32 132, label %80
    i32 136, label %91
    i32 129, label %115
    i32 128, label %127
  ]

20:                                               ; preds = %2
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %22 = load i32, i32* @hw, align 4
  %23 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %24 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %27 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.ef4_nic* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ef4_farch_handle_tx_flush_done(%struct.ef4_nic* %31, i32* %32)
  br label %151

34:                                               ; preds = %2
  %35 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %36 = load i32, i32* @hw, align 4
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %38 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.ef4_nic* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @ef4_farch_handle_rx_flush_done(%struct.ef4_nic* %45, i32* %46)
  br label %151

48:                                               ; preds = %2
  %49 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %50 = load i32, i32* @hw, align 4
  %51 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %52 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %55 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @netif_dbg(%struct.ef4_nic* %49, i32 %50, i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  br label %151

59:                                               ; preds = %2
  %60 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %61 = load i32, i32* @hw, align 4
  %62 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %63 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %66 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.ef4_nic* %60, i32 %61, i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %151

69:                                               ; preds = %2
  %70 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %71 = load i32, i32* @hw, align 4
  %72 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %73 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %76 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.ef4_nic* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %78)
  br label %151

80:                                               ; preds = %2
  %81 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %82 = load i32, i32* @hw, align 4
  %83 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %84 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %87 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.ef4_nic* %81, i32 %82, i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %88, i32 %89)
  br label %151

91:                                               ; preds = %2
  %92 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %93 = load i32, i32* @rx_err, align 4
  %94 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %95 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %98 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.ef4_nic* %92, i32 %93, i32 %96, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %102 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %101, i32 0, i32 1
  %103 = call i32 @atomic_inc(i32* %102)
  %104 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %105 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %106 = call i32 @EF4_WORKAROUND_6555(%struct.ef4_nic* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %91
  %109 = load i32, i32* @RESET_TYPE_RX_RECOVERY, align 4
  br label %112

110:                                              ; preds = %91
  %111 = load i32, i32* @RESET_TYPE_DISABLE, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = call i32 @ef4_schedule_reset(%struct.ef4_nic* %104, i32 %113)
  br label %151

115:                                              ; preds = %2
  %116 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %117 = load i32, i32* @rx_err, align 4
  %118 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %119 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.ef4_nic* %116, i32 %117, i32 %120, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %125 = load i32, i32* @RESET_TYPE_DMA_ERROR, align 4
  %126 = call i32 @ef4_schedule_reset(%struct.ef4_nic* %124, i32 %125)
  br label %151

127:                                              ; preds = %2
  %128 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %129 = load i32, i32* @tx_err, align 4
  %130 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %131 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.ef4_nic* %128, i32 %129, i32 %132, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %137 = load i32, i32* @RESET_TYPE_DMA_ERROR, align 4
  %138 = call i32 @ef4_schedule_reset(%struct.ef4_nic* %136, i32 %137)
  br label %151

139:                                              ; preds = %2
  %140 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %141 = load i32, i32* @hw, align 4
  %142 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %143 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %146 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.ef4_nic* %140, i32 %141, i32 %144, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %139, %127, %115, %112, %80, %69, %59, %48, %34, %20
  ret void
}

declare dso_local i32 @EF4_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @netif_vdbg(%struct.ef4_nic*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ef4_farch_handle_tx_flush_done(%struct.ef4_nic*, i32*) #1

declare dso_local i32 @ef4_farch_handle_rx_flush_done(%struct.ef4_nic*, i32*) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ef4_schedule_reset(%struct.ef4_nic*, i32) #1

declare dso_local i32 @EF4_WORKAROUND_6555(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
