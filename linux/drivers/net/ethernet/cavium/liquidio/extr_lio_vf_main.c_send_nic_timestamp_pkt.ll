; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_send_nic_timestamp_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_send_nic_timestamp_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.octnic_data_pkt = type { i32, i32, i32 }
%struct.octnet_buf_free_info = type { i32, %struct.octeon_soft_command*, %struct.lio* }
%struct.octeon_soft_command = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lio = type { i32 }
%struct.octeon_instr_ih3 = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"No memory for timestamped data packet\0A\00", align 1
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@REQTYPE_NORESP_NET = common dso_local global i32 0, align 4
@REQTYPE_RESP_NET = common dso_local global i32 0, align 4
@REQTYPE_NORESP_NET_SG = common dso_local global i32 0, align 4
@REQTYPE_RESP_NET_SG = common dso_local global i32 0, align 4
@handle_timestamp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"timestamp data packet failed status: %x\0A\00", align 1
@tx_queued = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Queued timestamp packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, %struct.octnic_data_pkt*, %struct.octnet_buf_free_info*, i32)* @send_nic_timestamp_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_nic_timestamp_pkt(%struct.octeon_device* %0, %struct.octnic_data_pkt* %1, %struct.octnet_buf_free_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca %struct.octnic_data_pkt*, align 8
  %8 = alloca %struct.octnet_buf_free_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.octeon_soft_command*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %6, align 8
  store %struct.octnic_data_pkt* %1, %struct.octnic_data_pkt** %7, align 8
  store %struct.octnet_buf_free_info* %2, %struct.octnet_buf_free_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %8, align 8
  %16 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %15, i32 0, i32 2
  %17 = load %struct.lio*, %struct.lio** %16, align 8
  store %struct.lio* %17, %struct.lio** %12, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %19 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %7, align 8
  %20 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %19, i32 0, i32 2
  %21 = call %struct.octeon_soft_command* @octeon_alloc_soft_command_resp(%struct.octeon_device* %18, i32* %20, i32 4)
  store %struct.octeon_soft_command* %21, %struct.octeon_soft_command** %10, align 8
  %22 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %23 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %8, align 8
  %24 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %23, i32 0, i32 1
  store %struct.octeon_soft_command* %22, %struct.octeon_soft_command** %24, align 8
  %25 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %26 = icmp ne %struct.octeon_soft_command* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %4
  %28 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @IQ_SEND_FAILED, align 4
  store i32 %33, i32* %5, align 4
  br label %115

34:                                               ; preds = %4
  %35 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %7, align 8
  %36 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @REQTYPE_NORESP_NET, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @REQTYPE_RESP_NET, align 4
  %42 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %7, align 8
  %43 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %55

44:                                               ; preds = %34
  %45 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %7, align 8
  %46 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @REQTYPE_NORESP_NET_SG, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @REQTYPE_RESP_NET_SG, align 4
  %52 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %7, align 8
  %53 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* @handle_timestamp, align 4
  %57 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %58 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %8, align 8
  %60 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %63 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %7, align 8
  %65 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %68 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %70 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = bitcast i32* %72 to %struct.octeon_instr_ih3*
  %74 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 4
  store i64 %75, i64* %14, align 8
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %81 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %82 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %86 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %85, i32 0, i32 0
  %87 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %7, align 8
  %90 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @octeon_send_command(%struct.octeon_device* %80, i32 %83, i32 %84, %struct.TYPE_6__* %86, %struct.octeon_soft_command* %87, i64 %88, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @IQ_SEND_FAILED, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %55
  %97 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %98 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %104 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %105 = call i32 @octeon_free_soft_command(%struct.octeon_device* %103, %struct.octeon_soft_command* %104)
  br label %113

106:                                              ; preds = %55
  %107 = load %struct.lio*, %struct.lio** %12, align 8
  %108 = load i32, i32* @tx_queued, align 4
  %109 = load %struct.lio*, %struct.lio** %12, align 8
  %110 = getelementptr inbounds %struct.lio, %struct.lio* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @netif_info(%struct.lio* %107, i32 %108, i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %106, %96
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %27
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.octeon_soft_command* @octeon_alloc_soft_command_resp(%struct.octeon_device*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @octeon_send_command(%struct.octeon_device*, i32, i32, %struct.TYPE_6__*, %struct.octeon_soft_command*, i64, i32) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
