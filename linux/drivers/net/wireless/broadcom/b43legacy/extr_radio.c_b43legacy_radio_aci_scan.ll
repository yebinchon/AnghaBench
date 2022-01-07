; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_aci_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_aci_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i64, i64 }

@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_PHY_G_CRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_radio_aci_scan(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_phy*, align 8
  %5 = alloca [13 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %11, i32 0, i32 0
  store %struct.b43legacy_phy* %12, %struct.b43legacy_phy** %4, align 8
  %13 = bitcast [13 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 52, i1 false)
  %14 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %15 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %18 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %24 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %158

28:                                               ; preds = %22
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %30 = call i32 @b43legacy_phy_lock(%struct.b43legacy_wldev* %29)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %32 = call i32 @b43legacy_radio_lock(%struct.b43legacy_wldev* %31)
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %34 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %35 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %34, i32 2050)
  %36 = and i32 %35, 65532
  %37 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %33, i32 2050, i32 %36)
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %39 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %40 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %41 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %42 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %40, i32 %41)
  %43 = and i32 %42, 32767
  %44 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %38, i32 %39, i32 %43)
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %46 = call i32 @b43legacy_set_all_gains(%struct.b43legacy_wldev* %45, i32 3, i32 8, i32 1)
  %47 = load i32, i32* %6, align 4
  %48 = sub i32 %47, 5
  %49 = icmp ugt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %28
  %51 = load i32, i32* %6, align 4
  %52 = sub i32 %51, 5
  br label %54

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 1, %53 ]
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 5
  %58 = icmp ult i32 %57, 14
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 5
  br label %63

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 13, %62 ]
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %85, %63
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ule i32 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sub i32 %71, %72
  %74 = call i32 @abs(i32 %73)
  %75 = icmp sgt i32 %74, 2
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @b43legacy_radio_aci_detect(%struct.b43legacy_wldev* %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = sub i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %70
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %66

88:                                               ; preds = %66
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %89, i32 %90, i32 0)
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %93 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %94 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %93, i32 2050)
  %95 = and i32 %94, 65532
  %96 = or i32 %95, 3
  %97 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %92, i32 2050, i32 %96)
  %98 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %99 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %100 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %99, i32 1027)
  %101 = and i32 %100, 65528
  %102 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %98, i32 1027, i32 %101)
  %103 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %104 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %106 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %107 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %105, i32 %106)
  %108 = or i32 %107, 32768
  %109 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %103, i32 %104, i32 %108)
  %110 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %111 = call i32 @b43legacy_set_original_gains(%struct.b43legacy_wldev* %110)
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %145, %88
  %113 = load i32, i32* %7, align 4
  %114 = icmp ult i32 %113, 13
  br i1 %114, label %115, label %148

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  br label %145

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 5
  %125 = icmp ult i32 %124, 13
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, 5
  br label %130

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %126
  %131 = phi i32 [ %128, %126 ], [ 13, %129 ]
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %141, %130
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %139
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %133

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %121
  %146 = load i32, i32* %7, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %112

148:                                              ; preds = %112
  %149 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %150 = call i32 @b43legacy_radio_unlock(%struct.b43legacy_wldev* %149)
  %151 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %152 = call i32 @b43legacy_phy_unlock(%struct.b43legacy_wldev* %151)
  %153 = load i32, i32* %6, align 4
  %154 = sub i32 %153, 1
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %148, %27
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43legacy_phy_lock(%struct.b43legacy_wldev*) #2

declare dso_local i32 @b43legacy_radio_lock(%struct.b43legacy_wldev*) #2

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_set_all_gains(%struct.b43legacy_wldev*, i32, i32, i32) #2

declare dso_local i32 @abs(i32) #2

declare dso_local i32 @b43legacy_radio_aci_detect(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_set_original_gains(%struct.b43legacy_wldev*) #2

declare dso_local i32 @b43legacy_radio_unlock(%struct.b43legacy_wldev*) #2

declare dso_local i32 @b43legacy_phy_unlock(%struct.b43legacy_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
