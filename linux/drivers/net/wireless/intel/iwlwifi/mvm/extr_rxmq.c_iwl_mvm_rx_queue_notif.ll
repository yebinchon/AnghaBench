; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_queue_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_queue_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i32, i32 }
%struct.napi_struct = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_rxq_sync_notification = type { i64 }
%struct.iwl_mvm_internal_rxq_notif = type { i64, i32, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Received expired RX queue sync message\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid identifier %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_queue_notif(%struct.iwl_mvm* %0, %struct.napi_struct* %1, %struct.iwl_rx_cmd_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_rx_packet*, align 8
  %10 = alloca %struct.iwl_rxq_sync_notification*, align 8
  %11 = alloca %struct.iwl_mvm_internal_rxq_notif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store %struct.iwl_rx_cmd_buffer* %2, %struct.iwl_rx_cmd_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %13 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %12)
  store %struct.iwl_rx_packet* %13, %struct.iwl_rx_packet** %9, align 8
  %14 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %9, align 8
  %15 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.iwl_rxq_sync_notification*
  store %struct.iwl_rxq_sync_notification* %18, %struct.iwl_rxq_sync_notification** %10, align 8
  %19 = load %struct.iwl_rxq_sync_notification*, %struct.iwl_rxq_sync_notification** %10, align 8
  %20 = getelementptr inbounds %struct.iwl_rxq_sync_notification, %struct.iwl_rxq_sync_notification* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.iwl_mvm_internal_rxq_notif*
  store %struct.iwl_mvm_internal_rxq_notif* %23, %struct.iwl_mvm_internal_rxq_notif** %11, align 8
  %24 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %11, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %11, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %79

38:                                               ; preds = %28, %4
  %39 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %11, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %60 [
    i32 130, label %42
    i32 129, label %43
    i32 128, label %51
  ]

42:                                               ; preds = %38
  br label %65

43:                                               ; preds = %38
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %11, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @iwl_mvm_del_ba(%struct.iwl_mvm* %44, i32 %45, i8* %49)
  br label %65

51:                                               ; preds = %38
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %53 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %11, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @iwl_mvm_nssn_sync(%struct.iwl_mvm* %52, %struct.napi_struct* %53, i32 %54, i8* %58)
  br label %65

60:                                               ; preds = %38
  %61 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %11, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %51, %43, %42
  %66 = load %struct.iwl_mvm_internal_rxq_notif*, %struct.iwl_mvm_internal_rxq_notif** %11, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm_internal_rxq_notif, %struct.iwl_mvm_internal_rxq_notif* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %71, i32 0, i32 2
  %73 = call i32 @atomic_dec_return(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 1
  %78 = call i32 @wake_up(i32* %77)
  br label %79

79:                                               ; preds = %36, %75, %70, %65
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, ...) #1

declare dso_local i32 @iwl_mvm_del_ba(%struct.iwl_mvm*, i32, i8*) #1

declare dso_local i32 @iwl_mvm_nssn_sync(%struct.iwl_mvm*, %struct.napi_struct*, i32, i8*) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
