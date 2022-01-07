; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_ULi_ethtool_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_ULi_ethtool_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uli526x_board_info = type { i64, i32, i64, i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@ULI526X_100MHF = common dso_local global i64 0, align 8
@ULI526X_100MFD = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@ULI526X_10MFD = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@ULI526X_AUTO = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uli526x_board_info*, %struct.ethtool_link_ksettings*)* @ULi_ethtool_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ULi_ethtool_get_link_ksettings(%struct.uli526x_board_info* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.uli526x_board_info*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uli526x_board_info* %0, %struct.uli526x_board_info** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %7 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %8 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_MII, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %19 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ADVERTISED_MII, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %32, i32 %33)
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %38, i32 %39)
  %41 = load i32, i32* @PORT_MII, align 4
  %42 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 4
  %45 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %46 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @SPEED_10, align 4
  %52 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @DUPLEX_HALF, align 4
  %56 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %60 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ULI526X_100MHF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %2
  %65 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %66 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ULI526X_100MFD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64, %2
  %71 = load i32, i32* @SPEED_100, align 4
  %72 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %64
  %76 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %77 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ULI526X_10MFD, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %83 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ULI526X_100MFD, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @DUPLEX_FULL, align 4
  %89 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %90 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %81
  %93 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %94 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i32, i32* @SPEED_UNKNOWN, align 4
  %99 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %100 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %103 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %104 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %97, %92
  %107 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %108 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ULI526X_AUTO, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32, i32* @AUTONEG_ENABLE, align 4
  %115 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %116 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %113, %106
  ret void
}

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
