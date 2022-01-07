; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i64, i64, i32, i32, i32, i64, i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@AT803X_SPECIFIC_STATUS = common dso_local global i32 0, align 4
@AT803X_SS_SPEED_DUPLEX_RESOLVED = common dso_local global i32 0, align 4
@AT803X_SS_SPEED_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@AT803X_SS_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AT803X_SS_MDIX = common dso_local global i32 0, align 4
@ETH_TP_MDI_X = common dso_local global i32 0, align 4
@ETH_TP_MDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @at803x_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at803x_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = call i32 @genphy_update_link(%struct.phy_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %119

16:                                               ; preds = %1
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AUTONEG_ENABLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %119

31:                                               ; preds = %25, %22, %16
  %32 = load i32, i32* @SPEED_UNKNOWN, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = call i32 @genphy_read_lpa(%struct.phy_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %119

48:                                               ; preds = %31
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = load i32, i32* @AT803X_SPECIFIC_STATUS, align 4
  %51 = call i32 @phy_read(%struct.phy_device* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %119

56:                                               ; preds = %48
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @AT803X_SS_SPEED_DUPLEX_RESOLVED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @AT803X_SS_SPEED_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %77 [
    i32 130, label %65
    i32 129, label %69
    i32 128, label %73
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* @SPEED_10, align 4
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  br label %77

69:                                               ; preds = %61
  %70 = load i32, i32* @SPEED_100, align 4
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %61
  %74 = load i32, i32* @SPEED_1000, align 4
  %75 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %76 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %61, %73, %69, %65
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @AT803X_SS_DUPLEX, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @DUPLEX_FULL, align 4
  %84 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %77
  %87 = load i32, i32* @DUPLEX_HALF, align 4
  %88 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %89 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @AT803X_SS_MDIX, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @ETH_TP_MDI_X, align 4
  %97 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %98 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  br label %103

99:                                               ; preds = %90
  %100 = load i32, i32* @ETH_TP_MDI, align 4
  %101 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %102 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %56
  %105 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %106 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AUTONEG_ENABLE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %117 = call i32 @phy_resolve_aneg_pause(%struct.phy_device* %116)
  br label %118

118:                                              ; preds = %115, %110, %104
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %54, %46, %30, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @genphy_update_link(%struct.phy_device*) #1

declare dso_local i32 @genphy_read_lpa(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_resolve_aneg_pause(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
