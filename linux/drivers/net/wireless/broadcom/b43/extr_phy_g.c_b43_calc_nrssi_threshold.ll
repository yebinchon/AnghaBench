; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_calc_nrssi_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_calc_nrssi_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, %struct.b43_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_phy = type { i64, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i64, i32*, i64, i32 }

@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_BFL_RSSI = common dso_local global i32 0, align 4
@B43_INTERFMODE_NONWLAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_calc_nrssi_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_calc_nrssi_threshold(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 1
  store %struct.b43_phy* %10, %struct.b43_phy** %3, align 8
  %11 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %12 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %11, i32 0, i32 2
  %13 = load %struct.b43_phy_g*, %struct.b43_phy_g** %12, align 8
  store %struct.b43_phy_g* %13, %struct.b43_phy_g** %4, align 8
  %14 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @B43_PHYTYPE_G, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @B43_WARN_ON(i32 %19)
  %21 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %22 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @B43_BFL_RSSI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %25, %1
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @b43_nrssi_hw_read(%struct.b43_wldev* %37, i32 32)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 32
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 64
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = call i32 @b43_phy_maskset(%struct.b43_wldev* %48, i32 1162, i32 61440, i32 2539)
  br label %53

50:                                               ; preds = %44
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = call i32 @b43_phy_maskset(%struct.b43_wldev* %51, i32 1162, i32 61440, i32 2797)
  br label %53

53:                                               ; preds = %50, %47
  br label %158

54:                                               ; preds = %25
  %55 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %56 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @B43_INTERFMODE_NONWLAN, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 14, i32* %5, align 4
  store i32 10, i32* %6, align 4
  br label %74

61:                                               ; preds = %54
  %62 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %63 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %68 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 19, i32* %5, align 4
  store i32 18, i32* %6, align 4
  br label %73

72:                                               ; preds = %66, %61
  store i32 14, i32* %5, align 4
  store i32 17, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %77 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %82 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %80, %85
  %87 = mul nsw i32 %75, %86
  store i32 %87, i32* %5, align 4
  %88 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %89 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 6
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 32
  br i1 %97, label %98, label %101

98:                                               ; preds = %74
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 31
  store i32 %100, i32* %5, align 4
  br label %104

101:                                              ; preds = %74
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 32
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %5, align 4
  %106 = ashr i32 %105, 6
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @clamp_val(i32 %107, i32 -31, i32 31)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %111 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %116 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %114, %119
  %121 = mul nsw i32 %109, %120
  store i32 %121, i32* %6, align 4
  %122 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %123 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 6
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 32
  br i1 %131, label %132, label %135

132:                                              ; preds = %104
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 31
  store i32 %134, i32* %6, align 4
  br label %138

135:                                              ; preds = %104
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 32
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %6, align 4
  %140 = ashr i32 %139, 6
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @clamp_val(i32 %141, i32 -31, i32 31)
  store i32 %142, i32* %6, align 4
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %144 = call i32 @b43_phy_read(%struct.b43_wldev* %143, i32 1162)
  %145 = and i32 %144, 61440
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, 63
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, 63
  %152 = shl i32 %151, 6
  %153 = load i32, i32* %8, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %8, align 4
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @b43_phy_write(%struct.b43_wldev* %155, i32 1162, i32 %156)
  br label %158

158:                                              ; preds = %138, %53
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_nrssi_hw_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
