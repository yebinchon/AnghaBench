; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_send_rx_ctrl_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_send_rx_ctrl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { i64, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.octeon_soft_command = type { i32, i32, i32, i32, i64 }
%union.octnet_cmd = type { i64 }
%struct.octeon_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@OCTNET_CMD_SIZE = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate octeon_soft_command\0A\00", align 1
@OCTNET_CMD_RX_CTL = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_CMD = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to send RX Control message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lio*, i32)* @send_rx_ctrl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_rx_ctrl_cmd(%struct.lio* %0, i32 %1) #0 {
  %3 = alloca %struct.lio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_soft_command*, align 8
  %6 = alloca %union.octnet_cmd*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.lio*, %struct.lio** %3, align 8
  %10 = getelementptr inbounds %struct.lio, %struct.lio* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.octeon_device*
  store %struct.octeon_device* %12, %struct.octeon_device** %7, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
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
  br label %117

25:                                               ; preds = %2
  %26 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %27 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %28 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %26, i32 %27, i32 16, i32 0)
  %29 = inttoptr i64 %28 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %29, %struct.octeon_soft_command** %5, align 8
  %30 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %31 = icmp ne %struct.octeon_soft_command* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.lio*, %struct.lio** %3, align 8
  %34 = load i32, i32* @rx_err, align 4
  %35 = load %struct.lio*, %struct.lio** %3, align 8
  %36 = getelementptr inbounds %struct.lio, %struct.lio* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netif_info(%struct.lio* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %117

39:                                               ; preds = %25
  %40 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %41 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %union.octnet_cmd*
  store %union.octnet_cmd* %43, %union.octnet_cmd** %6, align 8
  %44 = load %union.octnet_cmd*, %union.octnet_cmd** %6, align 8
  %45 = bitcast %union.octnet_cmd* %44 to i64*
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @OCTNET_CMD_RX_CTL, align 4
  %47 = load %union.octnet_cmd*, %union.octnet_cmd** %6, align 8
  %48 = bitcast %union.octnet_cmd* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %union.octnet_cmd*, %union.octnet_cmd** %6, align 8
  %52 = bitcast %union.octnet_cmd* %51 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %union.octnet_cmd*, %union.octnet_cmd** %6, align 8
  %55 = bitcast %union.octnet_cmd* %54 to i32*
  %56 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %57 = ashr i32 %56, 3
  %58 = call i32 @octeon_swap_8B_data(i32* %55, i32 %57)
  %59 = load %struct.lio*, %struct.lio** %3, align 8
  %60 = getelementptr inbounds %struct.lio, %struct.lio* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %68 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %70 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %71 = load i32, i32* @OPCODE_NIC, align 4
  %72 = load i32, i32* @OPCODE_NIC_CMD, align 4
  %73 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %69, %struct.octeon_soft_command* %70, i32 %71, i32 %72, i32 0, i32 0, i32 0)
  %74 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %75 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %74, i32 0, i32 2
  %76 = call i32 @init_completion(i32* %75)
  %77 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %78 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %79 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %81 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %82 = call i32 @octeon_send_soft_command(%struct.octeon_device* %80, %struct.octeon_soft_command* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @IQ_SEND_FAILED, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %39
  %87 = load %struct.lio*, %struct.lio** %3, align 8
  %88 = load i32, i32* @rx_err, align 4
  %89 = load %struct.lio*, %struct.lio** %3, align 8
  %90 = getelementptr inbounds %struct.lio, %struct.lio* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @netif_info(%struct.lio* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %94 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %95 = call i32 @octeon_free_soft_command(%struct.octeon_device* %93, %struct.octeon_soft_command* %94)
  br label %117

96:                                               ; preds = %39
  %97 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %98 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %99 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %97, %struct.octeon_soft_command* %98, i32 0)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %117

103:                                              ; preds = %96
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %106 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load %struct.lio*, %struct.lio** %3, align 8
  %109 = getelementptr inbounds %struct.lio, %struct.lio* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 %104, i32* %112, align 4
  %113 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %114 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @WRITE_ONCE(i32 %115, i32 1)
  br label %117

117:                                              ; preds = %24, %32, %86, %102, %103
  ret void
}

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @wait_for_sc_completion_timeout(%struct.octeon_device*, %struct.octeon_soft_command*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
