; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_radar_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_radar_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }
%struct.ath_hw_radar_conf = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FFT_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FIRPWR = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_HEIGHT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_PRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_INBAND = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_MAXLEN = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELSTEP_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELPWR_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_MAX_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_BLOCK_CHECK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath_hw_radar_conf*)* @ar9003_hw_set_radar_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_set_radar_params(%struct.ath_hw* %0, %struct.ath_hw_radar_conf* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_hw_radar_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_hw_radar_conf* %1, %struct.ath_hw_radar_conf** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %9 = icmp ne %struct.ath_hw_radar_conf* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %13 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %14 = call i32 @REG_CLR_BIT(%struct.ath_hw* %11, i32 %12, i32 %13)
  br label %140

15:                                               ; preds = %2
  %16 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %17 = load i32, i32* @AR_PHY_RADAR_0_FFT_ENA, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %22 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %25 = call i32 @SM(i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %32 = call i32 @SM(i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %36 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %39 = call i32 @SM(i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %43 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AR_PHY_RADAR_0_PRSSI, align 4
  %46 = call i32 @SM(i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %50 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AR_PHY_RADAR_0_INBAND, align 4
  %53 = call i32 @SM(i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %58 = call i32 @REG_READ(%struct.ath_hw* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @AR_PHY_RADAR_1_MAXLEN, align 4
  %60 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_THRESH, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_THRESH, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @AR_PHY_RADAR_1_MAX_RRSSI, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @AR_PHY_RADAR_1_BLOCK_CHECK, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %74 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @AR_PHY_RADAR_1_MAXLEN, align 4
  %77 = call i32 @SM(i32 %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %81 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_THRESH, align 4
  %84 = call i32 @SM(i32 %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %88 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_THRESH, align 4
  %91 = call i32 @SM(i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @REG_WRITE(%struct.ath_hw* %94, i32 %95, i32 %96)
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @REG_WRITE(%struct.ath_hw* %98, i32 %99, i32 %100)
  %102 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %103 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %15
  %107 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %108 = load i32, i32* @AR_PHY_RADAR_EXT, align 4
  %109 = load i32, i32* @AR_PHY_RADAR_EXT_ENA, align 4
  %110 = call i32 @REG_SET_BIT(%struct.ath_hw* %107, i32 %108, i32 %109)
  br label %116

111:                                              ; preds = %15
  %112 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %113 = load i32, i32* @AR_PHY_RADAR_EXT, align 4
  %114 = load i32, i32* @AR_PHY_RADAR_EXT_ENA, align 4
  %115 = call i32 @REG_CLR_BIT(%struct.ath_hw* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %118 = call i64 @AR_SREV_9300(%struct.ath_hw* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = call i64 @AR_SREV_9340(%struct.ath_hw* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %126 = call i64 @AR_SREV_9580(%struct.ath_hw* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %124, %120, %116
  %129 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %130 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %129, i32 0, i32 1
  %131 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %132 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @IS_CHAN_HT40(i32 %133)
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 2, i32 1
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @REG_WRITE_ARRAY(i32* %130, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %10, %128, %124
  ret void
}

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9300(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE_ARRAY(i32*, i32, i32) #1

declare dso_local i64 @IS_CHAN_HT40(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
