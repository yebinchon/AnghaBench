; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ionic_lif = type { %struct.ionic* }
%struct.ionic = type { i32, %struct.ionic_dev }
%struct.ionic_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }

@IONIC_PORT_FEC_TYPE_NONE = common dso_local global i64 0, align 8
@DEVCMD_TIMEOUT = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@FEC_RS = common dso_local global i32 0, align 4
@FEC_BASER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Only select one FEC mode at a time\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IONIC_PORT_FEC_TYPE_FC = common dso_local global i64 0, align 8
@IONIC_PORT_FEC_TYPE_RS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ionic_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.ionic_lif*, align 8
  %7 = alloca %struct.ionic*, align 8
  %8 = alloca %struct.ionic_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %13)
  store %struct.ionic_lif* %14, %struct.ionic_lif** %6, align 8
  %15 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %16 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %15, i32 0, i32 0
  %17 = load %struct.ionic*, %struct.ionic** %16, align 8
  store %struct.ionic* %17, %struct.ionic** %7, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %19 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %18, i32 0, i32 0
  %20 = load %struct.ionic*, %struct.ionic** %19, align 8
  %21 = getelementptr inbounds %struct.ionic, %struct.ionic* %20, i32 0, i32 1
  store %struct.ionic_dev* %21, %struct.ionic_dev** %8, align 8
  %22 = load i64, i64* @IONIC_PORT_FEC_TYPE_NONE, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %28 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %26, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %2
  %35 = load %struct.ionic*, %struct.ionic** %7, align 8
  %36 = getelementptr inbounds %struct.ionic, %struct.ionic* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %39 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ionic_dev_cmd_port_autoneg(%struct.ionic_dev* %38, i64 %42)
  %44 = load %struct.ionic*, %struct.ionic** %7, align 8
  %45 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %46 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.ionic*, %struct.ionic** %7, align 8
  %48 = getelementptr inbounds %struct.ionic, %struct.ionic* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %3, align 4
  br label %156

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %61 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @le32_to_cpu(i32 %65)
  %67 = icmp ne i64 %59, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %55
  %69 = load %struct.ionic*, %struct.ionic** %7, align 8
  %70 = getelementptr inbounds %struct.ionic, %struct.ionic* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ionic_dev_cmd_port_speed(%struct.ionic_dev* %72, i64 %76)
  %78 = load %struct.ionic*, %struct.ionic** %7, align 8
  %79 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %80 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load %struct.ionic*, %struct.ionic** %7, align 8
  %82 = getelementptr inbounds %struct.ionic, %struct.ionic* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %68
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %3, align 4
  br label %156

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %88, %55
  %90 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %91 = load i32, i32* @advertising, align 4
  %92 = load i32, i32* @FEC_RS, align 4
  %93 = call i32 @ethtool_link_ksettings_test_link_mode(%struct.ethtool_link_ksettings* %90, i32 %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %95 = load i32, i32* @advertising, align 4
  %96 = load i32, i32* @FEC_BASER, align 4
  %97 = call i32 @ethtool_link_ksettings_test_link_mode(%struct.ethtool_link_ksettings* %94, i32 %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = call i32 @netdev_info(%struct.net_device* %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %156

108:                                              ; preds = %100, %89
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i64, i64* @IONIC_PORT_FEC_TYPE_FC, align 8
  store i64 %112, i64* %11, align 8
  br label %127

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i64, i64* @IONIC_PORT_FEC_TYPE_RS, align 8
  store i64 %117, i64* %11, align 8
  br label %126

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = load i64, i64* @IONIC_PORT_FEC_TYPE_NONE, align 8
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %123, %118
  br label %126

126:                                              ; preds = %125, %116
  br label %127

127:                                              ; preds = %126, %111
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %11, align 8
  %130 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %131 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %129, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %128
  %138 = load %struct.ionic*, %struct.ionic** %7, align 8
  %139 = getelementptr inbounds %struct.ionic, %struct.ionic* %138, i32 0, i32 0
  %140 = call i32 @mutex_lock(i32* %139)
  %141 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @ionic_dev_cmd_port_fec(%struct.ionic_dev* %141, i64 %142)
  %144 = load %struct.ionic*, %struct.ionic** %7, align 8
  %145 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %146 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %144, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load %struct.ionic*, %struct.ionic** %7, align 8
  %148 = getelementptr inbounds %struct.ionic, %struct.ionic* %147, i32 0, i32 0
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %137
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %3, align 4
  br label %156

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %128
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %152, %103, %86, %52
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ionic_dev_cmd_port_autoneg(%struct.ionic_dev*, i64) #1

declare dso_local i32 @ionic_dev_cmd_wait(%struct.ionic*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ionic_dev_cmd_port_speed(%struct.ionic_dev*, i64) #1

declare dso_local i32 @ethtool_link_ksettings_test_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @ionic_dev_cmd_port_fec(%struct.ionic_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
