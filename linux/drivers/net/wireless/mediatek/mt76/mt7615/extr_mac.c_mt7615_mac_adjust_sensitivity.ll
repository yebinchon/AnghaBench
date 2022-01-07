; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_adjust_sensitivity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_adjust_sensitivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32, i32, i32, i32, i32, i32 }

@MT_WF_PHY_B0_MIN_PRI_PWR = common dso_local global i32 0, align 4
@MT_WF_PHY_B0_PD_OFDM_MASK = common dso_local global i32 0, align 4
@MT_WF_PHY_B0_RXTD_CCK_PD = common dso_local global i32 0, align 4
@MT_WF_PHY_B0_PD_CCK_MASK = common dso_local global i32 0, align 4
@MT_WF_PHY_B1_RXTD_CCK_PD = common dso_local global i32 0, align 4
@MT_WF_PHY_B1_PD_CCK_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7615_dev*, i64, i32)* @mt7615_mac_adjust_sensitivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_mac_adjust_sensitivity(%struct.mt7615_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7615_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %18, %15 ], [ %22, %19 ]
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 -98, i32 -110
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %32, i32 0, i32 2
  br label %37

34:                                               ; preds = %23
  %35 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %35, i32 0, i32 3
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32* [ %33, %31 ], [ %36, %34 ]
  store i32* %38, i32** %10, align 8
  %39 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %39, i32 0, i32 5
  %41 = call i32 @mt76_get_min_avg_rssi(i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %46 = call i32 @mt7615_mac_set_default_sensitivity(%struct.mt7615_dev* %45)
  br label %146

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @min(i32 %48, i32 -72)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 500
  br i1 %51, label %52, label %79

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @MT_FRAC(i32 40, i32 100)
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %146

57:                                               ; preds = %52
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, -90
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32*, i32** %10, align 8
  store i32 -90, i32* %66, align 4
  store i32 1, i32* %9, align 4
  br label %78

67:                                               ; preds = %62, %57
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 2
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %74, align 4
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %67
  br label %78

78:                                               ; preds = %77, %65
  br label %101

79:                                               ; preds = %47
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 50
  br i1 %84, label %89, label %85

85:                                               ; preds = %82, %79
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @MT_FRAC(i32 60, i32 100)
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85, %82
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 2
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 2
  store i32 %98, i32* %96, align 4
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %95, %89
  br label %100

100:                                              ; preds = %99, %85
  br label %101

101:                                              ; preds = %100, %78
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  %108 = load i32*, i32** %10, align 8
  store i32 %107, i32* %108, align 4
  store i32 1, i32* %9, align 4
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %146

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, 2
  %119 = add nsw i32 %118, 512
  store i32 %119, i32* %12, align 4
  %120 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %121 = load i32, i32* @MT_WF_PHY_B0_MIN_PRI_PWR, align 4
  %122 = load i32, i32* @MT_WF_PHY_B0_PD_OFDM_MASK, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @MT_WF_PHY_B0_PD_OFDM(i32 %123)
  %125 = call i32 @mt76_rmw(%struct.mt7615_dev* %120, i32 %121, i32 %122, i32 %124)
  br label %142

126:                                              ; preds = %112
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 256
  store i32 %129, i32* %12, align 4
  %130 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %131 = load i32, i32* @MT_WF_PHY_B0_RXTD_CCK_PD, align 4
  %132 = load i32, i32* @MT_WF_PHY_B0_PD_CCK_MASK, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @MT_WF_PHY_B0_PD_CCK(i32 %133)
  %135 = call i32 @mt76_rmw(%struct.mt7615_dev* %130, i32 %131, i32 %132, i32 %134)
  %136 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %137 = load i32, i32* @MT_WF_PHY_B1_RXTD_CCK_PD, align 4
  %138 = load i32, i32* @MT_WF_PHY_B1_PD_CCK_MASK, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @MT_WF_PHY_B1_PD_CCK(i32 %139)
  %141 = call i32 @mt76_rmw(%struct.mt7615_dev* %136, i32 %137, i32 %138, i32 %140)
  br label %142

142:                                              ; preds = %126, %115
  %143 = load i32, i32* @jiffies, align 4
  %144 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %145 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %44, %56, %142, %109
  ret void
}

declare dso_local i32 @mt76_get_min_avg_rssi(i32*) #1

declare dso_local i32 @mt7615_mac_set_default_sensitivity(%struct.mt7615_dev*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @MT_FRAC(i32, i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt7615_dev*, i32, i32, i32) #1

declare dso_local i32 @MT_WF_PHY_B0_PD_OFDM(i32) #1

declare dso_local i32 @MT_WF_PHY_B0_PD_CCK(i32) #1

declare dso_local i32 @MT_WF_PHY_B1_PD_CCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
