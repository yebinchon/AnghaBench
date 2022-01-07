; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { %struct.TYPE_4__, i64, i64, i64, %struct.efx_nic* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i64 }
%struct.efx_channel = type { i64 }

@inbuf = common dso_local global i32 0, align 4
@EFX_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@EFX_BUF_SIZE = common dso_local global i32 0, align 4
@MC_CMD_INIT_RXQ_OUT_LEN = common dso_local global i64 0, align 8
@INIT_RXQ_IN_SIZE = common dso_local global i32 0, align 4
@INIT_RXQ_IN_TARGET_EVQ = common dso_local global i32 0, align 4
@INIT_RXQ_IN_LABEL = common dso_local global i32 0, align 4
@INIT_RXQ_IN_INSTANCE = common dso_local global i32 0, align 4
@INIT_RXQ_IN_FLAGS = common dso_local global i32 0, align 4
@INIT_RXQ_IN_FLAG_PREFIX = common dso_local global i32 0, align 4
@INIT_RXQ_IN_FLAG_TIMESTAMP = common dso_local global i32 0, align 4
@INIT_RXQ_IN_OWNER_ID = common dso_local global i32 0, align 4
@INIT_RXQ_IN_PORT_ID = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pushing RXQ %d. %zu entries (%llx)\0A\00", align 1
@INIT_RXQ_IN_DMA_ADDR = common dso_local global i32 0, align 4
@MC_CMD_INIT_RXQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to initialise RXQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_rx_queue*)* @efx_ef10_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_rx_init(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_ef10_nic_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %11 = load i32, i32* @inbuf, align 4
  %12 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %13 = mul nsw i32 %12, 8
  %14 = load i32, i32* @EFX_BUF_SIZE, align 4
  %15 = sdiv i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = call i64 @MC_CMD_INIT_RXQ_IN_LEN(i64 %16)
  %18 = call i32 @MCDI_DECLARE_BUF(i32 %11, i64 %17)
  %19 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %20 = call %struct.efx_channel* @efx_rx_queue_channel(%struct.efx_rx_queue* %19)
  store %struct.efx_channel* %20, %struct.efx_channel** %3, align 8
  %21 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %22 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EFX_BUF_SIZE, align 4
  %27 = sdiv i32 %25, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %4, align 8
  %29 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %30 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %29, i32 0, i32 4
  %31 = load %struct.efx_nic*, %struct.efx_nic** %30, align 8
  store %struct.efx_nic* %31, %struct.efx_nic** %5, align 8
  %32 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 1
  %34 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %33, align 8
  store %struct.efx_ef10_nic_data* %34, %struct.efx_ef10_nic_data** %6, align 8
  %35 = load i64, i64* @MC_CMD_INIT_RXQ_OUT_LEN, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUILD_BUG_ON(i32 %37)
  %39 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %40 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %42 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @inbuf, align 4
  %44 = load i32, i32* @INIT_RXQ_IN_SIZE, align 4
  %45 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %46 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @MCDI_SET_DWORD(i32 %43, i32 %44, i64 %48)
  %50 = load i32, i32* @inbuf, align 4
  %51 = load i32, i32* @INIT_RXQ_IN_TARGET_EVQ, align 4
  %52 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %53 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @MCDI_SET_DWORD(i32 %50, i32 %51, i64 %54)
  %56 = load i32, i32* @inbuf, align 4
  %57 = load i32, i32* @INIT_RXQ_IN_LABEL, align 4
  %58 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %59 = call i64 @efx_rx_queue_index(%struct.efx_rx_queue* %58)
  %60 = call i32 @MCDI_SET_DWORD(i32 %56, i32 %57, i64 %59)
  %61 = load i32, i32* @inbuf, align 4
  %62 = load i32, i32* @INIT_RXQ_IN_INSTANCE, align 4
  %63 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %64 = call i64 @efx_rx_queue_index(%struct.efx_rx_queue* %63)
  %65 = call i32 @MCDI_SET_DWORD(i32 %61, i32 %62, i64 %64)
  %66 = load i32, i32* @inbuf, align 4
  %67 = load i32, i32* @INIT_RXQ_IN_FLAGS, align 4
  %68 = load i32, i32* @INIT_RXQ_IN_FLAG_PREFIX, align 4
  %69 = load i32, i32* @INIT_RXQ_IN_FLAG_TIMESTAMP, align 4
  %70 = call i32 @MCDI_POPULATE_DWORD_2(i32 %66, i32 %67, i32 %68, i32 1, i32 %69, i32 1)
  %71 = load i32, i32* @inbuf, align 4
  %72 = load i32, i32* @INIT_RXQ_IN_OWNER_ID, align 4
  %73 = call i32 @MCDI_SET_DWORD(i32 %71, i32 %72, i64 0)
  %74 = load i32, i32* @inbuf, align 4
  %75 = load i32, i32* @INIT_RXQ_IN_PORT_ID, align 4
  %76 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %77 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @MCDI_SET_DWORD(i32 %74, i32 %75, i64 %78)
  %80 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %81 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %8, align 8
  %85 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %86 = load i32, i32* @hw, align 4
  %87 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %88 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %91 = call i64 @efx_rx_queue_index(%struct.efx_rx_queue* %90)
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* %8, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @netif_dbg(%struct.efx_nic* %85, i32 %86, i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %92, i32 %94)
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %111, %1
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %4, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load i32, i32* @inbuf, align 4
  %103 = load i32, i32* @INIT_RXQ_IN_DMA_ADDR, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @MCDI_SET_ARRAY_QWORD(i32 %102, i32 %103, i32 %104, i64 %105)
  %107 = load i32, i32* @EFX_BUF_SIZE, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %8, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %8, align 8
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %96

114:                                              ; preds = %96
  %115 = load i64, i64* %4, align 8
  %116 = call i64 @MC_CMD_INIT_RXQ_IN_LEN(i64 %115)
  store i64 %116, i64* %7, align 8
  %117 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %118 = load i32, i32* @MC_CMD_INIT_RXQ, align 4
  %119 = load i32, i32* @inbuf, align 4
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %117, i32 %118, i32 %119, i64 %120, i32* null, i32 0, i32* null)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %114
  %125 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %126 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %129 = call i64 @efx_rx_queue_index(%struct.efx_rx_queue* %128)
  %130 = call i32 @netdev_WARN(i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %124, %114
  ret void
}

declare dso_local i32 @MCDI_DECLARE_BUF(i32, i64) #1

declare dso_local i64 @MC_CMD_INIT_RXQ_IN_LEN(i64) #1

declare dso_local %struct.efx_channel* @efx_rx_queue_channel(%struct.efx_rx_queue*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @MCDI_SET_DWORD(i32, i32, i64) #1

declare dso_local i64 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @MCDI_POPULATE_DWORD_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64, i64, i32) #1

declare dso_local i32 @MCDI_SET_ARRAY_QWORD(i32, i32, i32, i64) #1

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32, i64, i32*, i32, i32*) #1

declare dso_local i32 @netdev_WARN(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
