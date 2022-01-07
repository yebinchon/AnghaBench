; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_set_decrypted_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_set_decrypted_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@RXON_FILTER_DIS_DECRYPT_MSK = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PROTECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"decrypt_res:0x%x\0A\00", align 1
@RX_RES_STATUS_SEC_TYPE_MSK = common dso_local global i32 0, align 4
@RX_RES_STATUS_DECRYPT_TYPE_MSK = common dso_local global i32 0, align 4
@RX_RES_STATUS_BAD_KEY_TTAK = common dso_local global i32 0, align 4
@RX_RES_STATUS_BAD_ICV_MIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Packet destroyed\0A\00", align 1
@RX_RES_STATUS_DECRYPT_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"hw decrypt successfully!!!\0A\00", align 1
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_set_decrypted_flag(%struct.il_priv* %0, %struct.ieee80211_hdr* %1, i32 %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %9, align 8
  %11 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RXON_FILTER_DIS_DECRYPT_MSK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %68

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @IEEE80211_FCTL_PROTECTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %68

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i8*, ...) @D_RX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RX_RES_STATUS_SEC_TYPE_MSK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %66 [
    i32 129, label %35
    i32 128, label %43
    i32 130, label %52
  ]

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @RX_RES_STATUS_DECRYPT_TYPE_MSK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @RX_RES_STATUS_BAD_KEY_TTAK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %67

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %29, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @RX_RES_STATUS_DECRYPT_TYPE_MSK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @RX_RES_STATUS_BAD_ICV_MIC, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @D_RX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %68

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %29, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @RX_RES_STATUS_DECRYPT_TYPE_MSK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @RX_RES_STATUS_DECRYPT_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = call i32 (i8*, ...) @D_RX(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %61 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %52
  br label %67

66:                                               ; preds = %29
  br label %67

67:                                               ; preds = %66, %65, %41
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %49, %28, %22
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @D_RX(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
