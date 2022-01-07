; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_is_gas_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_is_gas_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2psd_gas_pub_act_frame = type { i64, i64 }

@P2PSD_ACTION_CATEGORY = common dso_local global i64 0, align 8
@P2PSD_ACTION_ID_GAS_IREQ = common dso_local global i64 0, align 8
@P2PSD_ACTION_ID_GAS_IRESP = common dso_local global i64 0, align 8
@P2PSD_ACTION_ID_GAS_CREQ = common dso_local global i64 0, align 8
@P2PSD_ACTION_ID_GAS_CRESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @brcmf_p2p_is_gas_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_is_gas_action(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_p2psd_gas_pub_act_frame*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.brcmf_p2psd_gas_pub_act_frame*
  store %struct.brcmf_p2psd_gas_pub_act_frame* %12, %struct.brcmf_p2psd_gas_pub_act_frame** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 15
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %50

17:                                               ; preds = %10
  %18 = load %struct.brcmf_p2psd_gas_pub_act_frame*, %struct.brcmf_p2psd_gas_pub_act_frame** %6, align 8
  %19 = getelementptr inbounds %struct.brcmf_p2psd_gas_pub_act_frame, %struct.brcmf_p2psd_gas_pub_act_frame* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @P2PSD_ACTION_CATEGORY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %50

24:                                               ; preds = %17
  %25 = load %struct.brcmf_p2psd_gas_pub_act_frame*, %struct.brcmf_p2psd_gas_pub_act_frame** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_p2psd_gas_pub_act_frame, %struct.brcmf_p2psd_gas_pub_act_frame* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @P2PSD_ACTION_ID_GAS_IREQ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %48, label %30

30:                                               ; preds = %24
  %31 = load %struct.brcmf_p2psd_gas_pub_act_frame*, %struct.brcmf_p2psd_gas_pub_act_frame** %6, align 8
  %32 = getelementptr inbounds %struct.brcmf_p2psd_gas_pub_act_frame, %struct.brcmf_p2psd_gas_pub_act_frame* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @P2PSD_ACTION_ID_GAS_IRESP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load %struct.brcmf_p2psd_gas_pub_act_frame*, %struct.brcmf_p2psd_gas_pub_act_frame** %6, align 8
  %38 = getelementptr inbounds %struct.brcmf_p2psd_gas_pub_act_frame, %struct.brcmf_p2psd_gas_pub_act_frame* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @P2PSD_ACTION_ID_GAS_CREQ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.brcmf_p2psd_gas_pub_act_frame*, %struct.brcmf_p2psd_gas_pub_act_frame** %6, align 8
  %44 = getelementptr inbounds %struct.brcmf_p2psd_gas_pub_act_frame, %struct.brcmf_p2psd_gas_pub_act_frame* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @P2PSD_ACTION_ID_GAS_CRESP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %36, %30, %24
  store i32 1, i32* %3, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %23, %16, %9
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
