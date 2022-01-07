; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunhme.c_hme_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunhme.c_hme_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i8*, i32, i64, i32 }
%struct.happy_meal = type { i32, i32, i32, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Full = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Half = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Full = common dso_local global i64 0, align 8
@SUPPORTED_Autoneg = common dso_local global i64 0, align 8
@SUPPORTED_TP = common dso_local global i64 0, align 8
@SUPPORTED_MII = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@LPA_10FULL = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @hme_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.happy_meal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.happy_meal* @netdev_priv(%struct.net_device* %8)
  store %struct.happy_meal* %9, %struct.happy_meal** %5, align 8
  %10 = load i64, i64* @SUPPORTED_10baseT_Half, align 8
  %11 = load i64, i64* @SUPPORTED_10baseT_Full, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @SUPPORTED_100baseT_Half, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @SUPPORTED_100baseT_Full, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @SUPPORTED_Autoneg, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @SUPPORTED_TP, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @SUPPORTED_MII, align 8
  %22 = or i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @PORT_TP, align 4
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %31 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %34 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %35 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MII_BMCR, align 4
  %38 = call i8* @happy_meal_tcvr_read(%struct.happy_meal* %33, i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %41 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %43 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %44 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MII_LPA, align 4
  %47 = call i8* @happy_meal_tcvr_read(%struct.happy_meal* %42, i32 %45, i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %50 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %52 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %55 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BMCR_ANENABLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %115

60:                                               ; preds = %2
  %61 = load i32, i32* @AUTONEG_ENABLE, align 4
  %62 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %63 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %66 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @LPA_100HALF, align 4
  %69 = load i32, i32* @LPA_100FULL, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i64, i64* @SPEED_100, align 8
  br label %77

75:                                               ; preds = %60
  %76 = load i64, i64* @SPEED_10, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @SPEED_100, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %84 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @LPA_100FULL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %93

91:                                               ; preds = %82
  %92 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i8* [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i8* %94, i8** %97, align 8
  br label %114

98:                                               ; preds = %77
  %99 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %100 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @LPA_10FULL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %109

107:                                              ; preds = %98
  %108 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i8* [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %112 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i8* %110, i8** %113, align 8
  br label %114

114:                                              ; preds = %109, %93
  br label %147

115:                                              ; preds = %2
  %116 = load i32, i32* @AUTONEG_DISABLE, align 4
  %117 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %118 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 8
  %120 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %121 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @BMCR_SPEED100, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = load i64, i64* @SPEED_100, align 8
  br label %130

128:                                              ; preds = %115
  %129 = load i64, i64* @SPEED_10, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i64 [ %127, %126 ], [ %129, %128 ]
  store i64 %131, i64* %6, align 8
  %132 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %133 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @BMCR_FULLDPLX, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %142

140:                                              ; preds = %130
  %141 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i8* [ %139, %138 ], [ %141, %140 ]
  %144 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %145 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i8* %143, i8** %146, align 8
  br label %147

147:                                              ; preds = %142, %114
  %148 = load i64, i64* %6, align 8
  %149 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %150 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i64 %148, i64* %151, align 8
  %152 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %153 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %155, i64 %156)
  ret i32 0
}

declare dso_local %struct.happy_meal* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @happy_meal_tcvr_read(%struct.happy_meal*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
