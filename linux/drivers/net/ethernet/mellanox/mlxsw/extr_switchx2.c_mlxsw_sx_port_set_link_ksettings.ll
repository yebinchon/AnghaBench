; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sx_port = type { i32, %struct.mlxsw_sx* }
%struct.mlxsw_sx = type { i32 }

@MLXSW_REG_PTYS_LEN = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ptys = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to get proto\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Not supported proto admin requested\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to set proto admin\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to get oper status\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to set admin status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @mlxsw_sx_port_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_port_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.mlxsw_sx_port*, align 8
  %7 = alloca %struct.mlxsw_sx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.mlxsw_sx_port* @netdev_priv(%struct.net_device* %18)
  store %struct.mlxsw_sx_port* %19, %struct.mlxsw_sx_port** %6, align 8
  %20 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %20, i32 0, i32 1
  %22 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %21, align 8
  store %struct.mlxsw_sx* %22, %struct.mlxsw_sx** %7, align 8
  %23 = load i32, i32* @MLXSW_REG_PTYS_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %14, i32 %34)
  %36 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AUTONEG_ENABLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @mlxsw_sx_to_ptys_advert_link(i32 %43)
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @mlxsw_sx_to_ptys_speed(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %44, %42 ], [ %47, %45 ]
  store i32 %49, i32* %11, align 4
  %50 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mlxsw_reg_ptys_eth_pack(i8* %26, i32 %52, i32 0, i32 0)
  %54 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ptys, align 4
  %58 = call i32 @MLXSW_REG(i32 %57)
  %59 = call i32 @mlxsw_reg_query(i32 %56, i32 %58, i8* %26)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %133

66:                                               ; preds = %48
  %67 = call i32 @mlxsw_reg_ptys_eth_unpack(i8* %26, i32* %12, i32* %13, i32* null)
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = call i32 @netdev_err(%struct.net_device* %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %133

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %133

83:                                               ; preds = %78
  %84 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %85 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @mlxsw_reg_ptys_eth_pack(i8* %26, i32 %86, i32 %87, i32 1)
  %89 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ptys, align 4
  %93 = call i32 @MLXSW_REG(i32 %92)
  %94 = call i32 @mlxsw_reg_write(i32 %91, i32 %93, i8* %26)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = call i32 @netdev_err(%struct.net_device* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %133

101:                                              ; preds = %83
  %102 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %103 = call i32 @mlxsw_sx_port_oper_status_get(%struct.mlxsw_sx_port* %102, i32* %15)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i32 @netdev_err(%struct.net_device* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %133

110:                                              ; preds = %101
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %133

114:                                              ; preds = %110
  %115 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %116 = call i32 @mlxsw_sx_port_admin_status_set(%struct.mlxsw_sx_port* %115, i32 0)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = call i32 @netdev_err(%struct.net_device* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %133

123:                                              ; preds = %114
  %124 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %125 = call i32 @mlxsw_sx_port_admin_status_set(%struct.mlxsw_sx_port* %124, i32 1)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.net_device*, %struct.net_device** %4, align 8
  %130 = call i32 @netdev_err(%struct.net_device* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %133

132:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %133

133:                                              ; preds = %132, %128, %119, %113, %106, %97, %82, %73, %62
  %134 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.mlxsw_sx_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i32 @mlxsw_sx_to_ptys_advert_link(i32) #1

declare dso_local i32 @mlxsw_sx_to_ptys_speed(i32) #1

declare dso_local i32 @mlxsw_reg_ptys_eth_pack(i8*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mlxsw_reg_ptys_eth_unpack(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @mlxsw_sx_port_oper_status_get(%struct.mlxsw_sx_port*, i32*) #1

declare dso_local i32 @mlxsw_sx_port_admin_status_set(%struct.mlxsw_sx_port*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
