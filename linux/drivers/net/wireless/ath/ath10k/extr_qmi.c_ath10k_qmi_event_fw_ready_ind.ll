; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_event_fw_ready_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_event_fw_ready_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { %struct.ath10k* }
%struct.ath10k = type { i32 }

@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wifi fw ready event received\0A\00", align 1
@ATH10K_QMI_EVENT_FW_READY_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*)* @ath10k_qmi_event_fw_ready_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_event_fw_ready_ind(%struct.ath10k_qmi* %0) #0 {
  %2 = alloca %struct.ath10k_qmi*, align 8
  %3 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %2, align 8
  %4 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %4, i32 0, i32 0
  %6 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  store %struct.ath10k* %6, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %9 = call i32 @ath10k_dbg(%struct.ath10k* %7, i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %11 = load i32, i32* @ATH10K_QMI_EVENT_FW_READY_IND, align 4
  %12 = call i32 @ath10k_snoc_fw_indication(%struct.ath10k* %10, i32 %11)
  ret i32 0
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_snoc_fw_indication(%struct.ath10k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
