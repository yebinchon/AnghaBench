; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_event_server_arrive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_event_server_arrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i64, %struct.ath10k* }
%struct.ath10k = type { i32 }

@ATH10K_QMI_EVENT_FW_READY_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_qmi*)* @ath10k_qmi_event_server_arrive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_qmi_event_server_arrive(%struct.ath10k_qmi* %0) #0 {
  %2 = alloca %struct.ath10k_qmi*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %2, align 8
  %5 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %6 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %5, i32 0, i32 1
  %7 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  store %struct.ath10k* %7, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %9 = call i32 @ath10k_qmi_ind_register_send_sync_msg(%struct.ath10k_qmi* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %15 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = load i32, i32* @ATH10K_QMI_EVENT_FW_READY_IND, align 4
  %21 = call i32 @ath10k_snoc_fw_indication(%struct.ath10k* %19, i32 %20)
  br label %56

22:                                               ; preds = %13
  %23 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %24 = call i32 @ath10k_qmi_host_cap_send_sync(%struct.ath10k_qmi* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %56

28:                                               ; preds = %22
  %29 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %30 = call i32 @ath10k_qmi_msa_mem_info_send_sync_msg(%struct.ath10k_qmi* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %56

34:                                               ; preds = %28
  %35 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %36 = call i32 @ath10k_qmi_setup_msa_permissions(%struct.ath10k_qmi* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %56

40:                                               ; preds = %34
  %41 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %42 = call i32 @ath10k_qmi_msa_ready_send_sync_msg(%struct.ath10k_qmi* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %53

46:                                               ; preds = %40
  %47 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %48 = call i32 @ath10k_qmi_cap_send_sync_msg(%struct.ath10k_qmi* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46
  br label %56

53:                                               ; preds = %51, %45
  %54 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %55 = call i32 @ath10k_qmi_remove_msa_permission(%struct.ath10k_qmi* %54)
  br label %56

56:                                               ; preds = %53, %52, %39, %33, %27, %18, %12
  ret void
}

declare dso_local i32 @ath10k_qmi_ind_register_send_sync_msg(%struct.ath10k_qmi*) #1

declare dso_local i32 @ath10k_snoc_fw_indication(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_qmi_host_cap_send_sync(%struct.ath10k_qmi*) #1

declare dso_local i32 @ath10k_qmi_msa_mem_info_send_sync_msg(%struct.ath10k_qmi*) #1

declare dso_local i32 @ath10k_qmi_setup_msa_permissions(%struct.ath10k_qmi*) #1

declare dso_local i32 @ath10k_qmi_msa_ready_send_sync_msg(%struct.ath10k_qmi*) #1

declare dso_local i32 @ath10k_qmi_cap_send_sync_msg(%struct.ath10k_qmi*) #1

declare dso_local i32 @ath10k_qmi_remove_msa_permission(%struct.ath10k_qmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
