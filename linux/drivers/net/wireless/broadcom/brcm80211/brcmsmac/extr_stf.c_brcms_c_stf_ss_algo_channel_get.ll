; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_ss_algo_channel_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_ss_algo_channel_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tx_power = type { i64* }

@WL_TX_POWER_MCS40_SISO_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS20_SISO_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS40_CDD_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS20_CDD_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS40_STBC_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS20_STBC_FIRST = common dso_local global i64 0, align 8
@PHY_TXC1_MODE_SISO = common dso_local global i32 0, align 4
@PHY_TXC1_MODE_CDD = common dso_local global i32 0, align 4
@PHY_TXC1_MODE_STBC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_stf_ss_algo_channel_get(%struct.brcms_c_info* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tx_power, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = bitcast %struct.tx_power* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  %12 = load i64*, i64** %5, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %14 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i64*, i64** %5, align 8
  store i64 -1, i64* %20, align 8
  br label %94

21:                                               ; preds = %3
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @CHSPEC_CHANNEL(i64 %27)
  %29 = call i32 @wlc_phy_txpower_get_current(i32 %26, %struct.tx_power* %7, i32 %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @CHSPEC_IS40(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i64, i64* @WL_TX_POWER_MCS40_SISO_FIRST, align 8
  br label %37

35:                                               ; preds = %21
  %36 = load i64, i64* @WL_TX_POWER_MCS20_SISO_FIRST, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i64 [ %34, %33 ], [ %36, %35 ]
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @CHSPEC_IS40(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @WL_TX_POWER_MCS40_CDD_FIRST, align 8
  br label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @WL_TX_POWER_MCS20_CDD_FIRST, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @CHSPEC_IS40(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* @WL_TX_POWER_MCS40_STBC_FIRST, align 8
  br label %55

53:                                               ; preds = %46
  %54 = load i64, i64* @WL_TX_POWER_MCS20_STBC_FIRST, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %10, align 8
  %57 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %7, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %7, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 12
  %68 = icmp sgt i64 %61, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load i64*, i64** %5, align 8
  %71 = load i32, i32* @PHY_TXC1_MODE_SISO, align 4
  %72 = call i32 @setbit(i64* %70, i32 %71)
  br label %77

73:                                               ; preds = %55
  %74 = load i64*, i64** %5, align 8
  %75 = load i32, i32* @PHY_TXC1_MODE_CDD, align 4
  %76 = call i32 @setbit(i64* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %7, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %7, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 12
  %89 = icmp sle i64 %82, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load i64*, i64** %5, align 8
  %92 = load i32, i32* @PHY_TXC1_MODE_STBC, align 4
  %93 = call i32 @setbit(i64* %91, i32 %92)
  br label %94

94:                                               ; preds = %19, %90, %77
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wlc_phy_txpower_get_current(i32, %struct.tx_power*, i32) #2

declare dso_local i32 @CHSPEC_CHANNEL(i64) #2

declare dso_local i64 @CHSPEC_IS40(i64) #2

declare dso_local i32 @setbit(i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
