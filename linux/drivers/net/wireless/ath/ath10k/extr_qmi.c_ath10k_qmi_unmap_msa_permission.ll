; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_unmap_msa_permission.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_unmap_msa_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ath10k_msa_mem_info = type { i32, i32, i32 }
%struct.qcom_scm_vmperm = type { i32, i32 }

@QCOM_SCM_VMID_MSS_MSA = common dso_local global i32 0, align 4
@QCOM_SCM_VMID_WLAN = common dso_local global i32 0, align 4
@QCOM_SCM_VMID_WLAN_CE = common dso_local global i32 0, align 4
@QCOM_SCM_VMID_HLOS = common dso_local global i32 0, align 4
@QCOM_SCM_PERM_RW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to unmap msa permissions: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*, %struct.ath10k_msa_mem_info*)* @ath10k_qmi_unmap_msa_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_unmap_msa_permission(%struct.ath10k_qmi* %0, %struct.ath10k_msa_mem_info* %1) #0 {
  %3 = alloca %struct.ath10k_qmi*, align 8
  %4 = alloca %struct.ath10k_msa_mem_info*, align 8
  %5 = alloca %struct.qcom_scm_vmperm, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %3, align 8
  store %struct.ath10k_msa_mem_info* %1, %struct.ath10k_msa_mem_info** %4, align 8
  %9 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %9, i32 0, i32 0
  %11 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  store %struct.ath10k* %11, %struct.ath10k** %6, align 8
  %12 = load i32, i32* @QCOM_SCM_VMID_MSS_MSA, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = load i32, i32* @QCOM_SCM_VMID_WLAN, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = or i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ath10k_msa_mem_info*, %struct.ath10k_msa_mem_info** %4, align 8
  %18 = getelementptr inbounds %struct.ath10k_msa_mem_info, %struct.ath10k_msa_mem_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @QCOM_SCM_VMID_WLAN_CE, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @QCOM_SCM_VMID_HLOS, align 4
  %28 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @QCOM_SCM_PERM_RW, align 4
  %30 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ath10k_msa_mem_info*, %struct.ath10k_msa_mem_info** %4, align 8
  %32 = getelementptr inbounds %struct.ath10k_msa_mem_info, %struct.ath10k_msa_mem_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ath10k_msa_mem_info*, %struct.ath10k_msa_mem_info** %4, align 8
  %35 = getelementptr inbounds %struct.ath10k_msa_mem_info, %struct.ath10k_msa_mem_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @qcom_scm_assign_mem(i32 %33, i32 %36, i32* %7, %struct.qcom_scm_vmperm* %5, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ath10k_err(%struct.ath10k* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %26
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qcom_scm_assign_mem(i32, i32, i32*, %struct.qcom_scm_vmperm*, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
