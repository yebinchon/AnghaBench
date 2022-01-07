; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_is_pub_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_is_pub_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_pub_act_frame = type { i64, i64, i64, i32 }

@P2P_PUB_AF_CATEGORY = common dso_local global i64 0, align 8
@P2P_PUB_AF_ACTION = common dso_local global i64 0, align 8
@P2P_VER = common dso_local global i64 0, align 8
@P2P_OUI = common dso_local global i32 0, align 4
@P2P_OUI_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @brcmf_p2p_is_pub_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_is_pub_action(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_p2p_pub_act_frame*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.brcmf_p2p_pub_act_frame*
  store %struct.brcmf_p2p_pub_act_frame* %12, %struct.brcmf_p2p_pub_act_frame** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 31
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %45

17:                                               ; preds = %10
  %18 = load %struct.brcmf_p2p_pub_act_frame*, %struct.brcmf_p2p_pub_act_frame** %6, align 8
  %19 = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, %struct.brcmf_p2p_pub_act_frame* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @P2P_PUB_AF_CATEGORY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.brcmf_p2p_pub_act_frame*, %struct.brcmf_p2p_pub_act_frame** %6, align 8
  %25 = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, %struct.brcmf_p2p_pub_act_frame* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @P2P_PUB_AF_ACTION, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.brcmf_p2p_pub_act_frame*, %struct.brcmf_p2p_pub_act_frame** %6, align 8
  %31 = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, %struct.brcmf_p2p_pub_act_frame* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @P2P_VER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.brcmf_p2p_pub_act_frame*, %struct.brcmf_p2p_pub_act_frame** %6, align 8
  %37 = getelementptr inbounds %struct.brcmf_p2p_pub_act_frame, %struct.brcmf_p2p_pub_act_frame* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @P2P_OUI, align 4
  %40 = load i32, i32* @P2P_OUI_LEN, align 4
  %41 = call i64 @memcmp(i32 %38, i32 %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %35, %29, %23, %17
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %16, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
