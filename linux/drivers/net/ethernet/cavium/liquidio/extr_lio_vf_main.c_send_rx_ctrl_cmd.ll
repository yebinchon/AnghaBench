; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_send_rx_ctrl_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_send_rx_ctrl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { i64, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.octeon_soft_command = type { i32, i32, i32, i32, i64 }
%union.octnet_cmd = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@OCTNET_CMD_SIZE = common dso_local global i32 0, align 4
@OCTNET_CMD_RX_CTL = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_CMD = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to send RX Control message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lio*, i32)* @send_rx_ctrl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_rx_ctrl_cmd(%struct.lio* %0, i32 %1) #0 {
  %3 = alloca %struct.lio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.octeon_soft_command*, align 8
  %7 = alloca %union.octnet_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.lio*, %struct.lio** %3, align 8
  %10 = getelementptr inbounds %struct.lio, %struct.lio* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.octeon_device*
  store %struct.octeon_device* %12, %struct.octeon_device** %5, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load %struct.lio*, %struct.lio** %3, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %107

25:                                               ; preds = %2
  %26 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %27 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %28 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %26, i32 %27, i32 16, i32 0)
  %29 = inttoptr i64 %28 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %29, %struct.octeon_soft_command** %6, align 8
  %30 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %31 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %union.octnet_cmd*
  store %union.octnet_cmd* %33, %union.octnet_cmd** %7, align 8
  %34 = load %union.octnet_cmd*, %union.octnet_cmd** %7, align 8
  %35 = bitcast %union.octnet_cmd* %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @OCTNET_CMD_RX_CTL, align 4
  %37 = load %union.octnet_cmd*, %union.octnet_cmd** %7, align 8
  %38 = bitcast %union.octnet_cmd* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %union.octnet_cmd*, %union.octnet_cmd** %7, align 8
  %42 = bitcast %union.octnet_cmd* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %union.octnet_cmd*, %union.octnet_cmd** %7, align 8
  %45 = bitcast %union.octnet_cmd* %44 to i32*
  %46 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %47 = ashr i32 %46, 3
  %48 = call i32 @octeon_swap_8B_data(i32* %45, i32 %47)
  %49 = load %struct.lio*, %struct.lio** %3, align 8
  %50 = getelementptr inbounds %struct.lio, %struct.lio* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %58 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %60 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %61 = load i32, i32* @OPCODE_NIC, align 4
  %62 = load i32, i32* @OPCODE_NIC_CMD, align 4
  %63 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %59, %struct.octeon_soft_command* %60, i32 %61, i32 %62, i32 0, i32 0, i32 0)
  %64 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %65 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %64, i32 0, i32 2
  %66 = call i32 @init_completion(i32* %65)
  %67 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %68 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %69 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %71 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %72 = call i32 @octeon_send_soft_command(%struct.octeon_device* %70, %struct.octeon_soft_command* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @IQ_SEND_FAILED, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %25
  %77 = load %struct.lio*, %struct.lio** %3, align 8
  %78 = load i32, i32* @rx_err, align 4
  %79 = load %struct.lio*, %struct.lio** %3, align 8
  %80 = getelementptr inbounds %struct.lio, %struct.lio* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netif_info(%struct.lio* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %84 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %85 = call i32 @octeon_free_soft_command(%struct.octeon_device* %83, %struct.octeon_soft_command* %84)
  br label %107

86:                                               ; preds = %25
  %87 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %88 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %89 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %87, %struct.octeon_soft_command* %88, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %107

93:                                               ; preds = %86
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %96 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load %struct.lio*, %struct.lio** %3, align 8
  %99 = getelementptr inbounds %struct.lio, %struct.lio* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 %94, i32* %102, align 4
  %103 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %104 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @WRITE_ONCE(i32 %105, i32 1)
  br label %107

107:                                              ; preds = %24, %92, %93, %76
  ret void
}

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @wait_for_sc_completion_timeout(%struct.octeon_device*, %struct.octeon_soft_command*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
