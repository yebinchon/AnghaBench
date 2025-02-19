; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_get_vdev_subtype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_get_vdev_subtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@WMI_TLV_VDEV_SUBTYPE_NONE = common dso_local global i32 0, align 4
@WMI_TLV_VDEV_SUBTYPE_P2P_DEV = common dso_local global i32 0, align 4
@WMI_TLV_VDEV_SUBTYPE_P2P_CLI = common dso_local global i32 0, align 4
@WMI_TLV_VDEV_SUBTYPE_P2P_GO = common dso_local global i32 0, align 4
@WMI_TLV_VDEV_SUBTYPE_PROXY_STA = common dso_local global i32 0, align 4
@WMI_TLV_VDEV_SUBTYPE_MESH_11S = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_wmi_tlv_op_get_vdev_subtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_op_get_vdev_subtype(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %22 [
    i32 132, label %7
    i32 130, label %9
    i32 131, label %11
    i32 129, label %13
    i32 128, label %15
    i32 134, label %17
    i32 133, label %19
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @WMI_TLV_VDEV_SUBTYPE_NONE, align 4
  store i32 %8, i32* %3, align 4
  br label %25

9:                                                ; preds = %2
  %10 = load i32, i32* @WMI_TLV_VDEV_SUBTYPE_P2P_DEV, align 4
  store i32 %10, i32* %3, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load i32, i32* @WMI_TLV_VDEV_SUBTYPE_P2P_CLI, align 4
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @WMI_TLV_VDEV_SUBTYPE_P2P_GO, align 4
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @WMI_TLV_VDEV_SUBTYPE_PROXY_STA, align 4
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @WMI_TLV_VDEV_SUBTYPE_MESH_11S, align 4
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %19, %17, %15, %13, %11, %9, %7
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
