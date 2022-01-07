; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_aci_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_aci_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i64, i64 }

@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_PHY_G_CRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_gphy_aci_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_gphy_aci_scan(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca [13 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  store %struct.b43_phy* %12, %struct.b43_phy** %4, align 8
  %13 = bitcast [13 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 52, i1 false)
  %14 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %18 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @B43_PHYTYPE_G, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %24 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %140

28:                                               ; preds = %22
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = call i32 @b43_phy_lock(%struct.b43_wldev* %29)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = call i32 @b43_radio_lock(%struct.b43_wldev* %31)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = call i32 @b43_phy_mask(%struct.b43_wldev* %33, i32 2050, i32 65532)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = load i32, i32* @B43_PHY_G_CRS, align 4
  %37 = call i32 @b43_phy_mask(%struct.b43_wldev* %35, i32 %36, i32 32767)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = call i32 @b43_set_all_gains(%struct.b43_wldev* %38, i32 3, i32 8, i32 1)
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 %40, 5
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = sub i32 %44, 5
  br label %47

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 1, %46 ]
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 5
  %51 = icmp ult i32 %50, 14
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 5
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 13, %55 ]
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %78, %56
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub i32 %64, %65
  %67 = call i32 @abs(i32 %66)
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @b43_gphy_aci_detect(%struct.b43_wldev* %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = sub i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %63
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %59

81:                                               ; preds = %59
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @b43_switch_channel(%struct.b43_wldev* %82, i32 %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = call i32 @b43_phy_maskset(%struct.b43_wldev* %85, i32 2050, i32 65532, i32 3)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %88 = call i32 @b43_phy_mask(%struct.b43_wldev* %87, i32 1027, i32 65528)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %90 = load i32, i32* @B43_PHY_G_CRS, align 4
  %91 = call i32 @b43_phy_set(%struct.b43_wldev* %89, i32 %90, i32 32768)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %93 = call i32 @b43_set_original_gains(%struct.b43_wldev* %92)
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %127, %81
  %95 = load i32, i32* %7, align 4
  %96 = icmp ult i32 %95, 13
  br i1 %96, label %97, label %130

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  br label %127

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 5
  %107 = icmp ult i32 %106, 13
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = add i32 %109, 5
  br label %112

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %108
  %113 = phi i32 [ %110, %108 ], [ 13, %111 ]
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %123, %112
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %121
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %115

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %103
  %128 = load i32, i32* %7, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %94

130:                                              ; preds = %94
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %132 = call i32 @b43_radio_unlock(%struct.b43_wldev* %131)
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %134 = call i32 @b43_phy_unlock(%struct.b43_wldev* %133)
  %135 = load i32, i32* %6, align 4
  %136 = sub i32 %135, 1
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %130, %27
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43_phy_lock(%struct.b43_wldev*) #2

declare dso_local i32 @b43_radio_lock(%struct.b43_wldev*) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_set_all_gains(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @abs(i32) #2

declare dso_local i32 @b43_gphy_aci_detect(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_set_original_gains(%struct.b43_wldev*) #2

declare dso_local i32 @b43_radio_unlock(%struct.b43_wldev*) #2

declare dso_local i32 @b43_phy_unlock(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
