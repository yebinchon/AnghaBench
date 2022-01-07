; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_ethtool_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_ethtool_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_CMD_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_INFO = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_SPEED = common dso_local global i64 0, align 8
@ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX = common dso_local global i64 0, align 8
@ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG = common dso_local global i64 0, align 8
@supported = common dso_local global i32 0, align 4
@TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @rocker_cmd_get_port_settings_ethtool_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_cmd_get_port_settings_ethtool_proc(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ethtool_link_ksettings*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.ethtool_link_ksettings*
  store %struct.ethtool_link_ksettings* %17, %struct.ethtool_link_ksettings** %8, align 8
  %18 = load i32, i32* @ROCKER_TLV_CMD_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca %struct.rocker_tlv*, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca %struct.rocker_tlv*, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load i32, i32* @ROCKER_TLV_CMD_MAX, align 4
  %28 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %29 = call i32 @rocker_tlv_parse_desc(%struct.rocker_tlv** %22, i32 %27, %struct.rocker_desc_info* %28)
  %30 = load i64, i64* @ROCKER_TLV_CMD_INFO, align 8
  %31 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %22, i64 %30
  %32 = load %struct.rocker_tlv*, %struct.rocker_tlv** %31, align 8
  %33 = icmp ne %struct.rocker_tlv* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %113

37:                                               ; preds = %3
  %38 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_MAX, align 4
  %39 = load i64, i64* @ROCKER_TLV_CMD_INFO, align 8
  %40 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %22, i64 %39
  %41 = load %struct.rocker_tlv*, %struct.rocker_tlv** %40, align 8
  %42 = call i32 @rocker_tlv_parse_nested(%struct.rocker_tlv** %26, i32 %38, %struct.rocker_tlv* %41)
  %43 = load i64, i64* @ROCKER_TLV_CMD_PORT_SETTINGS_SPEED, align 8
  %44 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %26, i64 %43
  %45 = load %struct.rocker_tlv*, %struct.rocker_tlv** %44, align 8
  %46 = icmp ne %struct.rocker_tlv* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %37
  %48 = load i64, i64* @ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX, align 8
  %49 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %26, i64 %48
  %50 = load %struct.rocker_tlv*, %struct.rocker_tlv** %49, align 8
  %51 = icmp ne %struct.rocker_tlv* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i64, i64* @ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG, align 8
  %54 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %26, i64 %53
  %55 = load %struct.rocker_tlv*, %struct.rocker_tlv** %54, align 8
  %56 = icmp ne %struct.rocker_tlv* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %47, %37
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %113

60:                                               ; preds = %52
  %61 = load i64, i64* @ROCKER_TLV_CMD_PORT_SETTINGS_SPEED, align 8
  %62 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %26, i64 %61
  %63 = load %struct.rocker_tlv*, %struct.rocker_tlv** %62, align 8
  %64 = call i32 @rocker_tlv_get_u32(%struct.rocker_tlv* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i64, i64* @ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX, align 8
  %66 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %26, i64 %65
  %67 = load %struct.rocker_tlv*, %struct.rocker_tlv** %66, align 8
  %68 = call i64 @rocker_tlv_get_u8(%struct.rocker_tlv* %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* @ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG, align 8
  %70 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %26, i64 %69
  %71 = load %struct.rocker_tlv*, %struct.rocker_tlv** %70, align 8
  %72 = call i64 @rocker_tlv_get_u8(%struct.rocker_tlv* %71)
  store i64 %72, i64* %14, align 8
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %74 = load i32, i32* @supported, align 4
  %75 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %73, i32 %74)
  %76 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %77 = load i32, i32* @supported, align 4
  %78 = load i32, i32* @TP, align 4
  %79 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %76, i32 %77, i32 %78)
  %80 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %81 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 255, i32* %82, align 4
  %83 = load i32, i32* @PORT_TP, align 4
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %85 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load i64, i64* %13, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %60
  %94 = load i32, i32* @DUPLEX_FULL, align 4
  br label %97

95:                                               ; preds = %60
  %96 = load i32, i32* @DUPLEX_HALF, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %100 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 4
  %102 = load i64, i64* %14, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %108

106:                                              ; preds = %97
  %107 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %111 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %113

113:                                              ; preds = %108, %57, %34
  %114 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rocker_tlv_parse_desc(%struct.rocker_tlv**, i32, %struct.rocker_desc_info*) #2

declare dso_local i32 @rocker_tlv_parse_nested(%struct.rocker_tlv**, i32, %struct.rocker_tlv*) #2

declare dso_local i32 @rocker_tlv_get_u32(%struct.rocker_tlv*) #2

declare dso_local i64 @rocker_tlv_get_u8(%struct.rocker_tlv*) #2

declare dso_local i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings*, i32) #2

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
