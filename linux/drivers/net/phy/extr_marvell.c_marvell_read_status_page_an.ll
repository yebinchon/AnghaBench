; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_read_status_page_an.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_read_status_page_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i32, i32, i32 }

@MII_M1011_PHY_STATUS = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@MII_M1011_PHY_STATUS_FULLDUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@MII_M1011_PHY_STATUS_SPD_MASK = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@LPA_PAUSE_FIBER = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM_FIBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @marvell_read_status_page_an to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_read_status_page_an(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %10 = load i32, i32* @MII_M1011_PHY_STATUS, align 4
  %11 = call i32 @phy_read(%struct.phy_device* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %143

16:                                               ; preds = %2
  %17 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %18 = load i32, i32* @MII_LPA, align 4
  %19 = call i32 @phy_read(%struct.phy_device* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %143

24:                                               ; preds = %16
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = load i32, i32* @MII_STAT1000, align 4
  %27 = call i32 @phy_read(%struct.phy_device* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %143

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MII_M1011_PHY_STATUS_FULLDUPLEX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* @DUPLEX_FULL, align 8
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %45

41:                                               ; preds = %32
  %42 = load i64, i64* @DUPLEX_HALF, align 8
  %43 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MII_M1011_PHY_STATUS_SPD_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %6, align 4
  %49 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 2
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %62 [
    i32 128, label %54
    i32 129, label %58
  ]

54:                                               ; preds = %45
  %55 = load i32, i32* @SPEED_1000, align 4
  %56 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  br label %66

58:                                               ; preds = %45
  %59 = load i32, i32* @SPEED_100, align 4
  %60 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %45
  %63 = load i32, i32* @SPEED_10, align 4
  %64 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %65 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58, %54
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %66
  %70 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @mii_lpa_to_linkmode_lpa_t(i32 %72, i32 %73)
  %75 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %76 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @mii_stat1000_mod_linkmode_lpa_t(i32 %77, i32 %78)
  %80 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %81 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DUPLEX_FULL, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %69
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %93 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %101 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %85, %69
  br label %142

103:                                              ; preds = %66
  %104 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %105 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @fiber_lpa_mod_linkmode_lpa_t(i32 %106, i32 %107)
  %109 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %110 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DUPLEX_FULL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %103
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @LPA_PAUSE_FIBER, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %121 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %120, i32 0, i32 1
  store i32 0, i32* %121, align 8
  %122 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %123 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %122, i32 0, i32 2
  store i32 0, i32* %123, align 4
  br label %140

124:                                              ; preds = %114
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @LPA_PAUSE_ASYM_FIBER, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %131 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %130, i32 0, i32 1
  store i32 1, i32* %131, align 8
  %132 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %133 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %132, i32 0, i32 2
  store i32 1, i32* %133, align 4
  br label %139

134:                                              ; preds = %124
  %135 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %136 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %135, i32 0, i32 1
  store i32 1, i32* %136, align 8
  %137 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %138 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %137, i32 0, i32 2
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %129
  br label %140

140:                                              ; preds = %139, %119
  br label %141

141:                                              ; preds = %140, %103
  br label %142

142:                                              ; preds = %141, %102
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %30, %22, %14
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @mii_lpa_to_linkmode_lpa_t(i32, i32) #1

declare dso_local i32 @mii_stat1000_mod_linkmode_lpa_t(i32, i32) #1

declare dso_local i32 @fiber_lpa_mod_linkmode_lpa_t(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
