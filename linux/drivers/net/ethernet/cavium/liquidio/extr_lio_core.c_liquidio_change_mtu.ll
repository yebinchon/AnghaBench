; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_liquidio_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { i32, i32, %struct.TYPE_8__, %struct.octeon_device* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.octeon_device = type { i32 }
%struct.octeon_soft_command = type { i32, i64, i32, i32, i64 }
%union.octnet_cmd = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@OCTNET_CMD_SIZE = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate soft command\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i64 0, align 8
@OCTNET_CMD_CHANGE_MTU = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_CMD = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to change MTU\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @liquidio_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca %struct.octeon_soft_command*, align 8
  %9 = alloca %union.octnet_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.lio* @GET_LIO(%struct.net_device* %11)
  store %struct.lio* %12, %struct.lio** %6, align 8
  %13 = load %struct.lio*, %struct.lio** %6, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 3
  %15 = load %struct.octeon_device*, %struct.octeon_device** %14, align 8
  store %struct.octeon_device* %15, %struct.octeon_device** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %17 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %18 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %16, i32 %17, i32 16, i32 0)
  %19 = inttoptr i64 %18 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %19, %struct.octeon_soft_command** %8, align 8
  %20 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %21 = icmp ne %struct.octeon_soft_command* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.lio*, %struct.lio** %6, align 8
  %24 = load i32, i32* @rx_err, align 4
  %25 = load %struct.lio*, %struct.lio** %6, align 8
  %26 = getelementptr inbounds %struct.lio, %struct.lio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_info(%struct.lio* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %121

31:                                               ; preds = %2
  %32 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %33 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %union.octnet_cmd*
  store %union.octnet_cmd* %35, %union.octnet_cmd** %9, align 8
  %36 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %37 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %36, i32 0, i32 3
  %38 = call i32 @init_completion(i32* %37)
  %39 = load i64, i64* @OCTEON_REQUEST_PENDING, align 8
  %40 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %41 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %union.octnet_cmd*, %union.octnet_cmd** %9, align 8
  %43 = bitcast %union.octnet_cmd* %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @OCTNET_CMD_CHANGE_MTU, align 4
  %45 = load %union.octnet_cmd*, %union.octnet_cmd** %9, align 8
  %46 = bitcast %union.octnet_cmd* %45 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %union.octnet_cmd*, %union.octnet_cmd** %9, align 8
  %50 = bitcast %union.octnet_cmd* %49 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %union.octnet_cmd*, %union.octnet_cmd** %9, align 8
  %53 = bitcast %union.octnet_cmd* %52 to i32*
  %54 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %55 = ashr i32 %54, 3
  %56 = call i32 @octeon_swap_8B_data(i32* %53, i32 %55)
  %57 = load %struct.lio*, %struct.lio** %6, align 8
  %58 = getelementptr inbounds %struct.lio, %struct.lio* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %66 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %68 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %69 = load i32, i32* @OPCODE_NIC, align 4
  %70 = load i32, i32* @OPCODE_NIC_CMD, align 4
  %71 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %67, %struct.octeon_soft_command* %68, i32 %69, i32 %70, i32 0, i32 0, i32 0)
  %72 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %73 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %74 = call i32 @octeon_send_soft_command(%struct.octeon_device* %72, %struct.octeon_soft_command* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @IQ_SEND_FAILED, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %31
  %79 = load %struct.lio*, %struct.lio** %6, align 8
  %80 = load i32, i32* @rx_err, align 4
  %81 = load %struct.lio*, %struct.lio** %6, align 8
  %82 = getelementptr inbounds %struct.lio, %struct.lio* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @netif_info(%struct.lio* %79, i32 %80, i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %86 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %87 = call i32 @octeon_free_soft_command(%struct.octeon_device* %85, %struct.octeon_soft_command* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %121

90:                                               ; preds = %31
  %91 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %92 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %93 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %91, %struct.octeon_soft_command* %92, i32 0)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %121

98:                                               ; preds = %90
  %99 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %100 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %105 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @WRITE_ONCE(i32 %106, i32 1)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %121

110:                                              ; preds = %98
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.lio*, %struct.lio** %6, align 8
  %116 = getelementptr inbounds %struct.lio, %struct.lio* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %118 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @WRITE_ONCE(i32 %119, i32 1)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %110, %103, %96, %78, %22
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

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
