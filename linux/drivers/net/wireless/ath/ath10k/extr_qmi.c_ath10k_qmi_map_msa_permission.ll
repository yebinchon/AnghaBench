; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_map_msa_permission.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_map_msa_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ath10k_msa_mem_info = type { i32, i32, i64 }
%struct.qcom_scm_vmperm = type { i8*, i32 }

@QCOM_SCM_VMID_HLOS = common dso_local global i32 0, align 4
@QCOM_SCM_VMID_MSS_MSA = common dso_local global i32 0, align 4
@QCOM_SCM_PERM_RW = common dso_local global i8* null, align 8
@QCOM_SCM_VMID_WLAN = common dso_local global i32 0, align 4
@QCOM_SCM_VMID_WLAN_CE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to assign msa map permissions: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*, %struct.ath10k_msa_mem_info*)* @ath10k_qmi_map_msa_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_map_msa_permission(%struct.ath10k_qmi* %0, %struct.ath10k_msa_mem_info* %1) #0 {
  %3 = alloca %struct.ath10k_qmi*, align 8
  %4 = alloca %struct.ath10k_msa_mem_info*, align 8
  %5 = alloca [3 x %struct.qcom_scm_vmperm], align 16
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %3, align 8
  store %struct.ath10k_msa_mem_info* %1, %struct.ath10k_msa_mem_info** %4, align 8
  %10 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %10, i32 0, i32 0
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  store %struct.ath10k* %12, %struct.ath10k** %6, align 8
  %13 = load i32, i32* @QCOM_SCM_VMID_HLOS, align 4
  %14 = call i32 @BIT(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @QCOM_SCM_VMID_MSS_MSA, align 4
  %16 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], [3 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 0
  %17 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** @QCOM_SCM_PERM_RW, align 8
  %19 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], [3 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 0
  %20 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 16
  %21 = load i32, i32* @QCOM_SCM_VMID_WLAN, align 4
  %22 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], [3 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 1
  %23 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** @QCOM_SCM_PERM_RW, align 8
  %25 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], [3 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 1
  %26 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 16
  %27 = load %struct.ath10k_msa_mem_info*, %struct.ath10k_msa_mem_info** %4, align 8
  %28 = getelementptr inbounds %struct.ath10k_msa_mem_info, %struct.ath10k_msa_mem_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 2, i32* %8, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @QCOM_SCM_VMID_WLAN_CE, align 4
  %34 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], [3 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 2
  %35 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** @QCOM_SCM_PERM_RW, align 8
  %37 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], [3 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 2
  %38 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 16
  store i32 3, i32* %8, align 4
  br label %39

39:                                               ; preds = %32, %31
  %40 = load %struct.ath10k_msa_mem_info*, %struct.ath10k_msa_mem_info** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k_msa_mem_info, %struct.ath10k_msa_mem_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ath10k_msa_mem_info*, %struct.ath10k_msa_mem_info** %4, align 8
  %44 = getelementptr inbounds %struct.ath10k_msa_mem_info, %struct.ath10k_msa_mem_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], [3 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @qcom_scm_assign_mem(i32 %42, i32 %45, i32* %7, %struct.qcom_scm_vmperm* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ath10k_err(%struct.ath10k* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %39
  %56 = load i32, i32* %9, align 4
  ret i32 %56
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
