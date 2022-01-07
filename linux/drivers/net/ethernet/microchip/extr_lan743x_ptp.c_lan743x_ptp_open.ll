; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.lan743x_ptp }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.lan743x_ptp = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@PTP_TX_MOD2 = common dso_local global i32 0, align 4
@PTP_TX_MOD2_TX_PTP_CLR_UDPV4_CHKSUM_ = common dso_local global i32 0, align 4
@INT_EN_SET = common dso_local global i32 0, align 4
@INT_BIT_1588_ = common dso_local global i32 0, align 4
@PTP_INT_EN_SET = common dso_local global i32 0, align 4
@PTP_INT_BIT_TX_SWTS_ERR_ = common dso_local global i32 0, align 4
@PTP_INT_BIT_TX_TS_ = common dso_local global i32 0, align 4
@PTP_FLAG_ISR_ENABLED = common dso_local global i32 0, align 4
@CONFIG_PTP_1588_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"lan743x_ptp_pin_0\00", align 1
@PTP_PF_PEROUT = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%pm\00", align 1
@LAN743X_PTP_MAX_FREQ_ADJ_IN_PPB = common dso_local global i32 0, align 4
@lan743x_ptpci_adjfine = common dso_local global i32 0, align 4
@lan743x_ptpci_adjfreq = common dso_local global i32 0, align 4
@lan743x_ptpci_adjtime = common dso_local global i32 0, align 4
@lan743x_ptpci_gettime64 = common dso_local global i32 0, align 4
@lan743x_ptpci_settime64 = common dso_local global i32 0, align 4
@lan743x_ptpci_enable = common dso_local global i32 0, align 4
@lan743x_ptpci_do_aux_work = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@PTP_FLAG_PTP_CLOCK_REGISTERED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"successfully registered ptp clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lan743x_ptp_open(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca %struct.lan743x_ptp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  %7 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %7, i32 0, i32 2
  store %struct.lan743x_ptp* %8, %struct.lan743x_ptp** %4, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %12 = call i32 @lan743x_ptp_reset(%struct.lan743x_adapter* %11)
  %13 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %14 = call i32 @lan743x_ptp_sync_to_system_clock(%struct.lan743x_adapter* %13)
  %15 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %16 = load i32, i32* @PTP_TX_MOD2, align 4
  %17 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @PTP_TX_MOD2_TX_PTP_CLR_UDPV4_CHKSUM_, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %22 = load i32, i32* @PTP_TX_MOD2, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %21, i32 %22, i32 %23)
  %25 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %26 = call i32 @lan743x_ptp_enable(%struct.lan743x_adapter* %25)
  %27 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %28 = load i32, i32* @INT_EN_SET, align 4
  %29 = load i32, i32* @INT_BIT_1588_, align 4
  %30 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %27, i32 %28, i32 %29)
  %31 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %32 = load i32, i32* @PTP_INT_EN_SET, align 4
  %33 = load i32, i32* @PTP_INT_BIT_TX_SWTS_ERR_, align 4
  %34 = load i32, i32* @PTP_INT_BIT_TX_TS_, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %31, i32 %32, i32 %35)
  %37 = load i32, i32* @PTP_FLAG_ISR_ENABLED, align 4
  %38 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %39 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @CONFIG_PTP_1588_CLOCK, align 4
  %43 = call i32 @IS_ENABLED(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %177

46:                                               ; preds = %1
  %47 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %48 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %52, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %55 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %54, i32 0, i32 3
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @PTP_PF_PEROUT, align 4
  %60 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %61 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 8
  %65 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %66 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @THIS_MODULE, align 4
  %71 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %72 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 17
  store i32 %70, i32* %73, align 8
  %74 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %75 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 16
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %77, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @LAN743X_PTP_MAX_FREQ_ADJ_IN_PPB, align 4
  %85 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %86 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 15
  store i32 %84, i32* %87, align 8
  %88 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %89 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 14
  store i64 0, i64* %90, align 8
  %91 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %92 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 13
  store i64 0, i64* %93, align 8
  %94 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %95 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %98 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 12
  store i64 0, i64* %99, align 8
  %100 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %101 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 11
  store i64 0, i64* %102, align 8
  %103 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %104 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 10
  store i32* null, i32** %105, align 8
  %106 = load i32, i32* @lan743x_ptpci_adjfine, align 4
  %107 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %108 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 9
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @lan743x_ptpci_adjfreq, align 4
  %111 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %112 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 8
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* @lan743x_ptpci_adjtime, align 4
  %115 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %116 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 7
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @lan743x_ptpci_gettime64, align 4
  %119 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %120 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  store i32 %118, i32* %121, align 8
  %122 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %123 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 5
  store i32* null, i32** %124, align 8
  %125 = load i32, i32* @lan743x_ptpci_settime64, align 4
  %126 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %127 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 4
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* @lan743x_ptpci_enable, align 4
  %130 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %131 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @lan743x_ptpci_do_aux_work, align 4
  %134 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %135 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 8
  %137 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %138 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  %140 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %141 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %140, i32 0, i32 2
  %142 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %142, i32 0, i32 1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = call i32 @ptp_clock_register(%struct.TYPE_8__* %141, i32* %145)
  %147 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %148 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %150 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @IS_ERR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %46
  %155 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %156 = load i32, i32* @ifup, align 4
  %157 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %157, i32 0, i32 0
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = call i32 @netif_err(%struct.lan743x_adapter* %155, i32 %156, %struct.TYPE_9__* %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %173

161:                                              ; preds = %46
  %162 = load i32, i32* @PTP_FLAG_PTP_CLOCK_REGISTERED, align 4
  %163 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %164 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %168 = load i32, i32* @ifup, align 4
  %169 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %170 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = call i32 @netif_info(%struct.lan743x_adapter* %167, i32 %168, %struct.TYPE_9__* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %177

173:                                              ; preds = %154
  %174 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %175 = call i32 @lan743x_ptp_close(%struct.lan743x_adapter* %174)
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %173, %161, %45
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @lan743x_ptp_reset(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_ptp_sync_to_system_clock(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_ptp_enable(%struct.lan743x_adapter*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @ptp_clock_register(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @netif_err(%struct.lan743x_adapter*, i32, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @netif_info(%struct.lan743x_adapter*, i32, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @lan743x_ptp_close(%struct.lan743x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
