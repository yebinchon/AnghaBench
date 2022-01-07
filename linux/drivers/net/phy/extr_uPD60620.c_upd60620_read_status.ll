; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_uPD60620.c_upd60620_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_uPD60620.c_upd60620_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32, i64, i32, i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@PHY_PHYSCR = common dso_local global i32 0, align 4
@PHY_PHYSCR_10MB = common dso_local global i32 0, align 4
@PHY_PHYSCR_100MB = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@PHY_PHYSCR_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MII_LPA = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @upd60620_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upd60620_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_BMSR, align 4
  %7 = call i32 @phy_read(%struct.phy_device* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %109

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @linkmode_zero(i32 %17)
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %25 = load i32, i32* @BMSR_LSTATUS, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %108

29:                                               ; preds = %12
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = load i32, i32* @PHY_PHYSCR, align 4
  %32 = call i32 @phy_read(%struct.phy_device* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %109

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PHY_PHYSCR_10MB, align 4
  %40 = load i32, i32* @PHY_PHYSCR_100MB, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %107

44:                                               ; preds = %37
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @SPEED_10, align 4
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* @DUPLEX_HALF, align 8
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PHY_PHYSCR_100MB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load i32, i32* @SPEED_100, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %44
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @PHY_PHYSCR_DUPLEX, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* @DUPLEX_FULL, align 8
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = load i32, i32* @MII_LPA, align 4
  %73 = call i32 @phy_read(%struct.phy_device* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %109

78:                                               ; preds = %70
  %79 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %80 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @mii_lpa_to_linkmode_lpa_t(i32 %81, i32 %82)
  %84 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DUPLEX_FULL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %78
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %96 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %104 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %78
  br label %107

107:                                              ; preds = %106, %37
  br label %108

108:                                              ; preds = %107, %12
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %76, %35, %10
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @linkmode_zero(i32) #1

declare dso_local i32 @mii_lpa_to_linkmode_lpa_t(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
