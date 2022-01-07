; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_rx_handlers = type { i64, i64, i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*)* }
%struct.iwl_mvm.0 = type opaque
%struct.iwl_rx_cmd_buffer.1 = type opaque
%struct.iwl_mvm = type { i32, i32, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32, i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%union.iwl_dbg_tlv_tp_data = type { %struct.iwl_rx_packet* }
%struct.iwl_async_handler_entry = type { i64, i32, i32 (%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@IWL_FW_INI_TIME_POINT_FW_RSP_OR_NOTIF = common dso_local global i32 0, align 4
@iwl_mvm_rx_handlers = common dso_local global %struct.iwl_rx_handlers* null, align 8
@RX_HANDLER_SYNC = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_packet*)* @iwl_mvm_rx_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_rx_common(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_packet* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca %struct.iwl_rx_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.iwl_dbg_tlv_tp_data, align 8
  %9 = alloca %struct.iwl_rx_handlers*, align 8
  %10 = alloca %struct.iwl_async_handler_entry*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %5, align 8
  store %struct.iwl_rx_packet* %2, %struct.iwl_rx_packet** %6, align 8
  %11 = bitcast %union.iwl_dbg_tlv_tp_data* %8 to %struct.iwl_rx_packet**
  %12 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  store %struct.iwl_rx_packet* %12, %struct.iwl_rx_packet** %11, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 4
  %15 = load i32, i32* @IWL_FW_INI_TIME_POINT_FW_RSP_OR_NOTIF, align 4
  %16 = call i32 @iwl_dbg_tlv_time_point(i32* %14, i32 %15, %union.iwl_dbg_tlv_tp_data* %8)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %18 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %19 = call i32 @iwl_mvm_rx_check_trigger(%struct.iwl_mvm* %17, %struct.iwl_rx_packet* %18)
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 3
  %22 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %23 = call i32 @iwl_notification_wait_notify(i32* %21, %struct.iwl_rx_packet* %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %112, %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** @iwl_mvm_rx_handlers, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.iwl_rx_handlers* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %115

29:                                               ; preds = %24
  %30 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** @iwl_mvm_rx_handlers, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %30, i64 %32
  store %struct.iwl_rx_handlers* %33, %struct.iwl_rx_handlers** %9, align 8
  %34 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** %9, align 8
  %35 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %38 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @WIDE_ID(i32 %40, i32 %44)
  %46 = icmp ne i64 %36, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %112

48:                                               ; preds = %29
  %49 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RX_HANDLER_SYNC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** %9, align 8
  %56 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %55, i32 0, i32 2
  %57 = load i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*)*, i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*)** %56, align 8
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %59 = bitcast %struct.iwl_mvm* %58 to %struct.iwl_mvm.0*
  %60 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %61 = bitcast %struct.iwl_rx_cmd_buffer* %60 to %struct.iwl_rx_cmd_buffer.1*
  %62 = call i32 %57(%struct.iwl_mvm.0* %59, %struct.iwl_rx_cmd_buffer.1* %61)
  br label %115

63:                                               ; preds = %48
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.iwl_async_handler_entry* @kzalloc(i32 40, i32 %64)
  store %struct.iwl_async_handler_entry* %65, %struct.iwl_async_handler_entry** %10, align 8
  %66 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %10, align 8
  %67 = icmp ne %struct.iwl_async_handler_entry* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %115

69:                                               ; preds = %63
  %70 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %71 = call i32 @rxb_steal_page(%struct.iwl_rx_cmd_buffer* %70)
  %72 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %10, align 8
  %73 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %76 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %10, align 8
  %79 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %82 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %10, align 8
  %85 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** %9, align 8
  %88 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %87, i32 0, i32 2
  %89 = load i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*)*, i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*)** %88, align 8
  %90 = bitcast i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*)* %89 to i32 (%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*)*
  %91 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %10, align 8
  %92 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %91, i32 0, i32 2
  store i32 (%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*)* %90, i32 (%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*)** %92, align 8
  %93 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** %9, align 8
  %94 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %10, align 8
  %97 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %98, i32 0, i32 1
  %100 = call i32 @spin_lock(i32* %99)
  %101 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %10, align 8
  %102 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %101, i32 0, i32 1
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %103, i32 0, i32 2
  %105 = call i32 @list_add_tail(i32* %102, i32* %104)
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 1
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %110 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %109, i32 0, i32 0
  %111 = call i32 @schedule_work(i32* %110)
  br label %115

112:                                              ; preds = %47
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %24

115:                                              ; preds = %54, %68, %69, %24
  ret void
}

declare dso_local i32 @iwl_dbg_tlv_time_point(i32*, i32, %union.iwl_dbg_tlv_tp_data*) #1

declare dso_local i32 @iwl_mvm_rx_check_trigger(%struct.iwl_mvm*, %struct.iwl_rx_packet*) #1

declare dso_local i32 @iwl_notification_wait_notify(i32*, %struct.iwl_rx_packet*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iwl_rx_handlers*) #1

declare dso_local i64 @WIDE_ID(i32, i32) #1

declare dso_local %struct.iwl_async_handler_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @rxb_steal_page(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
