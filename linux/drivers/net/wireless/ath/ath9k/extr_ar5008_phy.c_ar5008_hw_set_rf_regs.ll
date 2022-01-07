; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_rf_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_rf_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32*, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.ath9k_channel = type { i32 }

@EEP_OB_2 = common dso_local global i32 0, align 4
@EEP_DB_2 = common dso_local global i32 0, align 4
@EEP_OB_5 = common dso_local global i32 0, align 4
@EEP_DB_5 = common dso_local global i32 0, align 4
@bank0 = common dso_local global i32 0, align 4
@bank1 = common dso_local global i32 0, align 4
@bank2 = common dso_local global i32 0, align 4
@bank3 = common dso_local global i32 0, align 4
@bank7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32)* @ar5008_hw_set_rf_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5008_hw_set_rf_regs(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %16 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %125

19:                                               ; preds = %3
  %20 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %23, align 8
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = call i32 %24(%struct.ath_hw* %25)
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %46, %19
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 2
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @INI_RA(%struct.TYPE_4__* %36, i32 %37, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %111

52:                                               ; preds = %49
  %53 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %54 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %58 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %60, align 8
  %62 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %63 = load i32, i32* @EEP_OB_2, align 4
  %64 = call i32 %61(%struct.ath_hw* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %68, align 8
  %70 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %71 = load i32, i32* @EEP_DB_2, align 4
  %72 = call i32 %69(%struct.ath_hw* %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @ar5008_hw_phy_modify_rx_buffer(i32* %75, i32 %76, i32 3, i32 197, i32 0)
  %78 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %79 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @ar5008_hw_phy_modify_rx_buffer(i32* %80, i32 %81, i32 3, i32 194, i32 0)
  br label %110

83:                                               ; preds = %52
  %84 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %85 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %87, align 8
  %89 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %90 = load i32, i32* @EEP_OB_5, align 4
  %91 = call i32 %88(%struct.ath_hw* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %93 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %95, align 8
  %97 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %98 = load i32, i32* @EEP_DB_5, align 4
  %99 = call i32 %96(%struct.ath_hw* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %101 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @ar5008_hw_phy_modify_rx_buffer(i32* %102, i32 %103, i32 3, i32 203, i32 0)
  %105 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %106 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @ar5008_hw_phy_modify_rx_buffer(i32* %107, i32 %108, i32 3, i32 200, i32 0)
  br label %110

110:                                              ; preds = %83, %56
  br label %111

111:                                              ; preds = %110, %49
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @REG_WRITE_ARRAY(i32* @bank0, i32 1, i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @REG_WRITE_ARRAY(i32* @bank1, i32 1, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @REG_WRITE_ARRAY(i32* @bank2, i32 1, i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @REG_WRITE_ARRAY(i32* @bank3, i32 %118, i32 %119)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %122 = call i32 @ar5008_write_bank6(%struct.ath_hw* %121, i32* %13)
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @REG_WRITE_ARRAY(i32* @bank7, i32 1, i32 %123)
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %111, %18
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @INI_RA(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_phy_modify_rx_buffer(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE_ARRAY(i32*, i32, i32) #1

declare dso_local i32 @ar5008_write_bank6(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
