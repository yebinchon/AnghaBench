; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_rtt.c_ar9003_hw_rtt_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_rtt.c_ar9003_hw_rtt_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.ath9k_channel = type { i32 }

@SW_PKDET_DONE = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE = common dso_local global i32 0, align 4
@RTT_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not stop baseband\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_hw_rtt_restore(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

12:                                               ; preds = %2
  %13 = load i32, i32* @SW_PKDET_DONE, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %13, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %79

20:                                               ; preds = %12
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %22 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %26 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 0)
  %27 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %25, i32 %26, i32 %27, i32 %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 1)
  %38 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, align 4
  %39 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %36, i32 %37, i32 %38, i32 %45)
  br label %70

47:                                               ; preds = %20
  %48 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %49 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 0)
  %50 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR, align 4
  %51 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %48, i32 %49, i32 %50, i32 %57)
  %59 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %60 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 1)
  %61 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %59, i32 %60, i32 %61, i32 %68)
  br label %70

70:                                               ; preds = %47, %24
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 1)
  %73 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE, align 4
  %74 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %71, i32 %72, i32 %73, i32 1)
  %75 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %76 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 0)
  %77 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE, align 4
  %78 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %75, i32 %76, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %70, %12
  %80 = load i32, i32* @RTT_DONE, align 4
  %81 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %82 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = call i64 @test_bit(i32 %80, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %123

88:                                               ; preds = %79
  %89 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %90 = call i32 @ar9003_hw_rtt_enable(%struct.ath_hw* %89)
  %91 = load i32, i32* @SW_PKDET_DONE, align 4
  %92 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %93 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = call i64 @test_bit(i32 %91, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %100 = call i32 @ar9003_hw_rtt_set_mask(%struct.ath_hw* %99, i32 48)
  br label %104

101:                                              ; preds = %88
  %102 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %103 = call i32 @ar9003_hw_rtt_set_mask(%struct.ath_hw* %102, i32 16)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %106 = call i32 @ath9k_hw_rfbus_req(%struct.ath_hw* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %110 = call i32 @ath9k_hw_common(%struct.ath_hw* %109)
  %111 = call i32 @ath_err(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %117

112:                                              ; preds = %104
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = call i32 @ar9003_hw_rtt_load_hist(%struct.ath_hw* %113)
  %115 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %116 = call i32 @ar9003_hw_rtt_force_restore(%struct.ath_hw* %115)
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %112, %108
  %118 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %119 = call i32 @ath9k_hw_rfbus_done(%struct.ath_hw* %118)
  %120 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %121 = call i32 @ar9003_hw_rtt_disable(%struct.ath_hw* %120)
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %87, %11
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @AR_PHY_65NM_RXRF_AGC(i32) #1

declare dso_local i32 @ar9003_hw_rtt_enable(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_rtt_set_mask(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_rfbus_req(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_rtt_load_hist(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_rtt_force_restore(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_rfbus_done(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_rtt_disable(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
