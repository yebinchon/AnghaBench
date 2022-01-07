; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_lxt.c_lxt973a2_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_lxt.c_lxt973a2_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i32, i32, i32, i8* }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@LPA_100FULL = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@LPA_10FULL = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @lxt973a2_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lxt973a2_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = call i32 @lxt973a2_update_link(%struct.phy_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %177

15:                                               ; preds = %1
  %16 = load i64, i64* @AUTONEG_ENABLE, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %122

21:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @MII_ADVERTISE, align 4
  %24 = call i32 @phy_read(%struct.phy_device* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %177

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %47, %29
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = load i32, i32* @MII_LPA, align 4
  %33 = call i32 @phy_read(%struct.phy_device* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %177

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  %46 = icmp ne i32 %44, 0
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %30, label %49

49:                                               ; preds = %47
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @mii_lpa_to_linkmode_lpa_t(i32 %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i8*, i8** @SPEED_10, align 8
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @DUPLEX_HALF, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 3
  store i32 0, i32* %66, align 4
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @LPA_100FULL, align 4
  %71 = load i32, i32* @LPA_100HALF, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %49
  %76 = load i8*, i8** @SPEED_100, align 8
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @LPA_100FULL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i64, i64* @DUPLEX_FULL, align 8
  %85 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %86 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %75
  br label %98

88:                                               ; preds = %49
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @LPA_10FULL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i64, i64* @DUPLEX_FULL, align 8
  %95 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %96 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97, %87
  %99 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %100 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DUPLEX_FULL, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %98
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  %119 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %120 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %104, %98
  br label %176

122:                                              ; preds = %15
  %123 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %124 = load i32, i32* @MII_BMCR, align 4
  %125 = call i32 @phy_read(%struct.phy_device* %123, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %177

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @BMCR_FULLDPLX, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i64, i64* @DUPLEX_FULL, align 8
  %137 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %138 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  br label %144

139:                                              ; preds = %130
  %140 = load i8*, i8** @DUPLEX_HALF, align 8
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %143 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %139, %135
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @BMCR_SPEED1000, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i8*, i8** @SPEED_1000, align 8
  %151 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %152 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %151, i32 0, i32 5
  store i8* %150, i8** %152, align 8
  br label %167

153:                                              ; preds = %144
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @BMCR_SPEED100, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i8*, i8** @SPEED_100, align 8
  %160 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %161 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %160, i32 0, i32 5
  store i8* %159, i8** %161, align 8
  br label %166

162:                                              ; preds = %153
  %163 = load i8*, i8** @SPEED_10, align 8
  %164 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %165 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %162, %158
  br label %167

167:                                              ; preds = %166, %149
  %168 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %169 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %168, i32 0, i32 3
  store i32 0, i32* %169, align 4
  %170 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %171 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %170, i32 0, i32 2
  store i32 0, i32* %171, align 8
  %172 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %173 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @linkmode_zero(i32 %174)
  br label %176

176:                                              ; preds = %167, %121
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %128, %36, %27, %13
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @lxt973a2_update_link(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @mii_lpa_to_linkmode_lpa_t(i32, i32) #1

declare dso_local i32 @linkmode_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
