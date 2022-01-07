; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vport_to_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vport_to_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }

@CHANNEL_TLV_VPORT_UPDATE_ACTIVATE = common dso_local global i32 0, align 4
@CHANNEL_TLV_VPORT_UPDATE_VLAN_STRIP = common dso_local global i32 0, align 4
@CHANNEL_TLV_VPORT_UPDATE_TX_SWITCH = common dso_local global i32 0, align 4
@CHANNEL_TLV_VPORT_UPDATE_MCAST = common dso_local global i32 0, align 4
@CHANNEL_TLV_VPORT_UPDATE_ACCEPT_PARAM = common dso_local global i32 0, align 4
@CHANNEL_TLV_VPORT_UPDATE_RSS = common dso_local global i32 0, align 4
@CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@CHANNEL_TLV_VPORT_UPDATE_SGE_TPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32)* @qed_iov_vport_to_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_vport_to_tlv(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 133, label %7
    i32 128, label %9
    i32 129, label %11
    i32 132, label %13
    i32 134, label %15
    i32 131, label %17
    i32 135, label %19
    i32 130, label %21
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_ACTIVATE, align 4
  store i32 %8, i32* %3, align 4
  br label %24

9:                                                ; preds = %2
  %10 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_VLAN_STRIP, align 4
  store i32 %10, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_TX_SWITCH, align 4
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_MCAST, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_ACCEPT_PARAM, align 4
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_RSS, align 4
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN, align 4
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_SGE_TPA, align 4
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %9, %7
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
