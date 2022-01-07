; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_send_nic_timestamp_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_send_nic_timestamp_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.octnic_data_pkt = type { i32, i32, i32 }
%struct.octnet_buf_free_info = type { i32, %struct.octeon_soft_command*, %struct.lio* }
%struct.octeon_soft_command = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.lio = type { i32 }
%struct.octeon_instr_ih3 = type { i64 }
%struct.octeon_instr_ih2 = type { i64 }

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
  %10 = alloca i32, align 4
  %11 = alloca %struct.octeon_soft_command*, align 8
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
  store %struct.octeon_soft_command* %21, %struct.octeon_soft_command** %11, align 8
  %22 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %23 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %8, align 8
  %24 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %23, i32 0, i32 1
  store %struct.octeon_soft_command* %22, %struct.octeon_soft_command** %24, align 8
  %25 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %26 = icmp ne %struct.octeon_soft_command* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %4
  %28 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @IQ_SEND_FAILED, align 4
  store i32 %33, i32* %5, align 4
  br label %128

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
  %57 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %58 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %8, align 8
  %60 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %63 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %7, align 8
  %65 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %68 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %70 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %55
  %73 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %74 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = bitcast i32* %76 to %struct.octeon_instr_ih3*
  %78 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 4
  store i64 %79, i64* %14, align 8
  br label %88

80:                                               ; preds = %55
  %81 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %82 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = bitcast i32* %84 to %struct.octeon_instr_ih2*
  %86 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 4
  store i64 %87, i64* %14, align 8
  br label %88

88:                                               ; preds = %80, %72
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %13, align 4
  %93 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %94 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %95 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %99 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %98, i32 0, i32 0
  %100 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %7, align 8
  %103 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @octeon_send_command(%struct.octeon_device* %93, i32 %96, i32 %97, %struct.TYPE_8__* %99, %struct.octeon_soft_command* %100, i64 %101, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @IQ_SEND_FAILED, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %88
  %110 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %111 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %113, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %117 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %118 = call i32 @octeon_free_soft_command(%struct.octeon_device* %116, %struct.octeon_soft_command* %117)
  br label %126

119:                                              ; preds = %88
  %120 = load %struct.lio*, %struct.lio** %12, align 8
  %121 = load i32, i32* @tx_queued, align 4
  %122 = load %struct.lio*, %struct.lio** %12, align 8
  %123 = getelementptr inbounds %struct.lio, %struct.lio* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @netif_info(%struct.lio* %120, i32 %121, i32 %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %119, %109
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %27
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.octeon_soft_command* @octeon_alloc_soft_command_resp(%struct.octeon_device*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @octeon_send_command(%struct.octeon_device*, i32, i32, %struct.TYPE_8__*, %struct.octeon_soft_command*, i64, i32) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
