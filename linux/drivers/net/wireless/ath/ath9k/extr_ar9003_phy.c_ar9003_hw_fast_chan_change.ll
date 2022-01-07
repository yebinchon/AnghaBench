; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_fast_chan_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_fast_chan_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.ath9k_channel = type { i32 }

@ATH_INI_POST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32*)* @ar9003_hw_fast_chan_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_fast_chan_change(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %11 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %15 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  store i32 %18, i32* %8, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %21 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 3, i32 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = call i64 @AR_SREV_9531(%struct.ath_hw* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 1, %29 ], [ %31, %30 ]
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  store i32 0, i32* %40, align 4
  br label %142

41:                                               ; preds = %32
  %42 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 10
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @ATH_INI_POST, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %42, i32* %47, i32 %48)
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 9
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @ATH_INI_POST, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %50, i32* %55, i32 %56)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @ATH_INI_POST, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %58, i32* %63, i32 %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %67 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %68 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @ATH_INI_POST, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %66, i32* %71, i32 %72)
  %74 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %75 = call i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %41
  %78 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %79 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %80 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %79, i32 0, i32 6
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %78, i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %41
  %84 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %85 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %84, i32 0, i32 5
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @REG_WRITE_ARRAY(i32* %85, i32 %86, i32 %87)
  %89 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %90 = call i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %83
  %93 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %94 = call i32 @ar9003_hw_get_rx_gain_idx(%struct.ath_hw* %93)
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %98 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %97, i32 0, i32 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @REG_WRITE_ARRAY(i32* %98, i32 1, i32 %99)
  %101 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %102 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %101, i32 0, i32 3
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @REG_WRITE_ARRAY(i32* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %96, %92
  br label %107

107:                                              ; preds = %106, %83
  %108 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %109 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %110 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %108, %struct.ath9k_channel* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %113, i32 0, i32 2
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @REG_WRITE_ARRAY(i32* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %120 = call i64 @AR_SREV_9565(%struct.ath_hw* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %124 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %123, i32 0, i32 2
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @REG_WRITE_ARRAY(i32* %124, i32 1, i32 %125)
  br label %127

127:                                              ; preds = %122, %118
  %128 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %129 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 2484
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %134 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %135 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %134, i32 0, i32 1
  %136 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %133, i32* %135, i32 1)
  br label %137

137:                                              ; preds = %132, %127
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %140 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32*, i32** %6, align 8
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %39
  %143 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %144 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %145 = call i32 @ar9003_hw_set_rfmode(%struct.ath_hw* %143, %struct.ath9k_channel* %144)
  ret i32 0
}

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_prog_ini(%struct.ath_hw*, i32*, i32) #1

declare dso_local i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE_ARRAY(i32*, i32, i32) #1

declare dso_local i32 @ar9003_hw_get_rx_gain_idx(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_rfmode(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
