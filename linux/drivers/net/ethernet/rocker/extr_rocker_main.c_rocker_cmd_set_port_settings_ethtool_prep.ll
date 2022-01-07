; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_set_port_settings_ethtool_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_set_port_settings_ethtool_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_CMD_TYPE = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_TYPE_SET_PORT_SETTINGS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_INFO = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_PPORT = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_SPEED = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @rocker_cmd_set_port_settings_ethtool_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_cmd_set_port_settings_ethtool_prep(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ethtool_link_ksettings*, align 8
  %9 = alloca %struct.rocker_tlv*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.ethtool_link_ksettings*
  store %struct.ethtool_link_ksettings* %11, %struct.ethtool_link_ksettings** %8, align 8
  %12 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %13 = load i32, i32* @ROCKER_TLV_CMD_TYPE, align 4
  %14 = load i32, i32* @ROCKER_TLV_CMD_TYPE_SET_PORT_SETTINGS, align 4
  %15 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EMSGSIZE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %80

20:                                               ; preds = %3
  %21 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %22 = load i32, i32* @ROCKER_TLV_CMD_INFO, align 4
  %23 = call %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info* %21, i32 %22)
  store %struct.rocker_tlv* %23, %struct.rocker_tlv** %9, align 8
  %24 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %25 = icmp ne %struct.rocker_tlv* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %80

29:                                               ; preds = %20
  %30 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %31 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_PPORT, align 4
  %32 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %33 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EMSGSIZE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %80

40:                                               ; preds = %29
  %41 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %42 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_SPEED, align 4
  %43 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %44 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %41, i32 %42, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EMSGSIZE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %80

52:                                               ; preds = %40
  %53 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %54 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX, align 4
  %55 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @rocker_tlv_put_u8(%struct.rocker_desc_info* %53, i32 %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EMSGSIZE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %80

64:                                               ; preds = %52
  %65 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %66 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG, align 4
  %67 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %68 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @rocker_tlv_put_u8(%struct.rocker_desc_info* %65, i32 %66, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EMSGSIZE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %64
  %77 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %78 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %79 = call i32 @rocker_tlv_nest_end(%struct.rocker_desc_info* %77, %struct.rocker_tlv* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %73, %61, %49, %37, %26, %17
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info*, i32) #1

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_u8(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i32 @rocker_tlv_nest_end(%struct.rocker_desc_info*, %struct.rocker_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
