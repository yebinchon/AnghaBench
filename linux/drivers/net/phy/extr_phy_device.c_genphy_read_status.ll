; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i64, i32, i32, i64, i64, i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = call i32 @genphy_update_link(%struct.phy_device* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %115

16:                                               ; preds = %1
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AUTONEG_ENABLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
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
  br label %115

31:                                               ; preds = %25, %22, %16
  %32 = load i32, i32* @SPEED_UNKNOWN, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = call i32 @genphy_read_lpa(%struct.phy_device* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %115

48:                                               ; preds = %31
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AUTONEG_ENABLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %61 = call i32 @phy_resolve_aneg_linkmode(%struct.phy_device* %60)
  br label %114

62:                                               ; preds = %54, %48
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AUTONEG_DISABLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %62
  %69 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %70 = load i32, i32* @MII_BMCR, align 4
  %71 = call i32 @phy_read(%struct.phy_device* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %115

76:                                               ; preds = %68
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @BMCR_FULLDPLX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @DUPLEX_FULL, align 4
  %83 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %84 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  br label %89

85:                                               ; preds = %76
  %86 = load i32, i32* @DUPLEX_HALF, align 4
  %87 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %88 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @BMCR_SPEED1000, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @SPEED_1000, align 4
  %96 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %97 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %112

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @BMCR_SPEED100, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @SPEED_100, align 4
  %105 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %106 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %111

107:                                              ; preds = %98
  %108 = load i32, i32* @SPEED_10, align 4
  %109 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %110 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111, %94
  br label %113

113:                                              ; preds = %112, %62
  br label %114

114:                                              ; preds = %113, %59
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %74, %46, %30, %14
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @genphy_update_link(%struct.phy_device*) #1

declare dso_local i32 @genphy_read_lpa(%struct.phy_device*) #1

declare dso_local i32 @phy_resolve_aneg_linkmode(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
