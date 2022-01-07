; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_prepare_adjusted_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_prepare_adjusted_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_prepare_adjusted_power_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_prepare_adjusted_power_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  store %struct.b43_phy_n* %11, %struct.b43_phy_n** %3, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %17 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %24 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %12

32:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %136, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %139

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %74 [
    i32 0, label %38
    i32 1, label %56
    i32 2, label %62
    i32 3, label %68
  ]

38:                                               ; preds = %36
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @b43_is_40mhz(%struct.b43_wldev* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 5
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 68, i32* %4, align 4
  br label %55

49:                                               ; preds = %42, %38
  store i32 1, i32* %5, align 4
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = call i32 @b43_is_40mhz(%struct.b43_wldev* %50)
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 52, i32 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %48
  br label %74

56:                                               ; preds = %36
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = call i32 @b43_is_40mhz(%struct.b43_wldev* %57)
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 76, i32 28
  store i32 %61, i32* %4, align 4
  br label %74

62:                                               ; preds = %36
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = call i32 @b43_is_40mhz(%struct.b43_wldev* %63)
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 84, i32 36
  store i32 %67, i32* %4, align 4
  br label %74

68:                                               ; preds = %36
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = call i32 @b43_is_40mhz(%struct.b43_wldev* %69)
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 92, i32 44
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %36, %68, %62, %56, %55
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %132, %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 20
  br i1 %77, label %78, label %135

78:                                               ; preds = %75
  %79 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %80 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %87 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 4, %89
  %91 = add nsw i32 4, %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %88, i64 %94
  store i32 %85, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %78
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %78
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 14
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 1, %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %105, %102
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %128, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %128, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 7
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 8
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 11
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 13
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %122, %119, %116, %113, %110
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %75

135:                                              ; preds = %75
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %33

139:                                              ; preds = %33
  ret void
}

declare dso_local i32 @b43_is_40mhz(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
