; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_cmd_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }
%struct.iwl_host_cmd = type { i32, %struct.iwl_rx_packet* }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_cmd_response = type { i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cmd flags %x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ERFKILL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_send_cmd_status(%struct.iwl_mvm* %0, %struct.iwl_host_cmd* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_host_cmd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iwl_rx_packet*, align 8
  %9 = alloca %struct.iwl_cmd_response*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 2
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CMD_ASYNC, align 4
  %19 = load i32, i32* @CMD_WANT_SKB, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @WARN_ONCE(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %82

30:                                               ; preds = %3
  %31 = load i32, i32* @CMD_WANT_SKB, align 4
  %32 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %40 = call i32 @iwl_trans_send_cmd(i32 %38, %struct.iwl_host_cmd* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ERFKILL, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %82

46:                                               ; preds = %30
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %82

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %53, i32 0, i32 1
  %55 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %54, align 8
  store %struct.iwl_rx_packet* %55, %struct.iwl_rx_packet** %8, align 8
  %56 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %57 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 4
  %61 = zext i1 %60 to i32
  %62 = call i64 @WARN_ON_ONCE(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %78

67:                                               ; preds = %52
  %68 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %69 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = bitcast i8* %71 to %struct.iwl_cmd_response*
  store %struct.iwl_cmd_response* %72, %struct.iwl_cmd_response** %9, align 8
  %73 = load %struct.iwl_cmd_response*, %struct.iwl_cmd_response** %9, align 8
  %74 = getelementptr inbounds %struct.iwl_cmd_response, %struct.iwl_cmd_response* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %67, %64
  %79 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %80 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %49, %45, %27
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @iwl_trans_send_cmd(i32, %struct.iwl_host_cmd*) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
