; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_port_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_port_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, i32, i32, i32, i32, %struct.ksz_port* }
%struct.ksz_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i8* }

@P_BCAST_STORM_CTRL = common dso_local global i32 0, align 4
@PORT_BROADCAST_STORM = common dso_local global i32 0, align 4
@P_PRIO_CTRL = common dso_local global i32 0, align 4
@PORT_DIFFSERV_ENABLE = common dso_local global i32 0, align 4
@P_802_1P_CTRL = common dso_local global i32 0, align 4
@PORT_802_1P_REMAPPING = common dso_local global i32 0, align 4
@PORT_802_1P_ENABLE = common dso_local global i32 0, align 4
@REG_PORT_5_CTRL_6 = common dso_local global i32 0, align 4
@PORT_INTERFACE_TYPE = common dso_local global i32 0, align 4
@PORT_GMII_1GPS_MODE = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@PORT_INTERFACE_RMII = common dso_local global i32 0, align 4
@PORT_INTERFACE_GMII = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@PORT_RGMII_ID_IN_ENABLE = common dso_local global i32 0, align 4
@PORT_RGMII_ID_OUT_ENABLE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i32 0, align 4
@PORT_INTERFACE_RGMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, i32)* @ksz8795_port_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_port_setup(%struct.ksz_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ksz_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %11 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %10, i32 0, i32 5
  %12 = load %struct.ksz_port*, %struct.ksz_port** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %12, i64 %14
  store %struct.ksz_port* %15, %struct.ksz_port** %7, align 8
  %16 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @P_BCAST_STORM_CTRL, align 4
  %19 = load i32, i32* @PORT_BROADCAST_STORM, align 4
  %20 = call i32 @ksz_port_cfg(%struct.ksz_device* %16, i32 %17, i32 %18, i32 %19, i32 1)
  %21 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ksz8795_set_prio_queue(%struct.ksz_device* %21, i32 %22, i32 4)
  %24 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @P_PRIO_CTRL, align 4
  %27 = load i32, i32* @PORT_DIFFSERV_ENABLE, align 4
  %28 = call i32 @ksz_port_cfg(%struct.ksz_device* %24, i32 %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @P_802_1P_CTRL, align 4
  %32 = load i32, i32* @PORT_802_1P_REMAPPING, align 4
  %33 = call i32 @ksz_port_cfg(%struct.ksz_device* %29, i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @P_PRIO_CTRL, align 4
  %37 = load i32, i32* @PORT_802_1P_ENABLE, align 4
  %38 = call i32 @ksz_port_cfg(%struct.ksz_device* %34, i32 %35, i32 %36, i32 %37, i32 1)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %152

41:                                               ; preds = %3
  %42 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %43 = load i32, i32* @REG_PORT_5_CTRL_6, align 4
  %44 = call i32 @ksz_read8(%struct.ksz_device* %42, i32 %43, i32* %8)
  %45 = load i32, i32* @PORT_INTERFACE_TYPE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @PORT_GMII_1GPS_MODE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %54 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %80 [
    i32 129, label %56
    i32 128, label %61
    i32 130, label %69
  ]

56:                                               ; preds = %41
  %57 = load i8*, i8** @SPEED_100, align 8
  %58 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %59 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  br label %131

61:                                               ; preds = %41
  %62 = load i32, i32* @PORT_INTERFACE_RMII, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i8*, i8** @SPEED_100, align 8
  %66 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %67 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  br label %131

69:                                               ; preds = %41
  %70 = load i32, i32* @PORT_GMII_1GPS_MODE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @PORT_INTERFACE_GMII, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i8*, i8** @SPEED_1000, align 8
  %77 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %78 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i8* %76, i8** %79, align 8
  br label %131

80:                                               ; preds = %41
  %81 = load i32, i32* @PORT_RGMII_ID_IN_ENABLE, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @PORT_RGMII_ID_OUT_ENABLE, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %90 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_ID, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %80
  %95 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %96 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_RXID, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94, %80
  %101 = load i32, i32* @PORT_RGMII_ID_IN_ENABLE, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %106 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_ID, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %112 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_TXID, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110, %104
  %117 = load i32, i32* @PORT_RGMII_ID_OUT_ENABLE, align 4
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %116, %110
  %121 = load i32, i32* @PORT_GMII_1GPS_MODE, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* @PORT_INTERFACE_RGMII, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i8*, i8** @SPEED_1000, align 8
  %128 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %129 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  store i8* %127, i8** %130, align 8
  br label %131

131:                                              ; preds = %120, %69, %61, %56
  %132 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %133 = load i32, i32* @REG_PORT_5_CTRL_6, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @ksz_write8(%struct.ksz_device* %132, i32 %133, i32 %134)
  %136 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %137 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %140 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %9, align 4
  %142 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %143 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %146 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %148 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %151 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  br label %179

152:                                              ; preds = %3
  %153 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %154 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %157 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %155, %158
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @BIT(i32 %160)
  %162 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %163 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %167 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %152
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @BIT(i32 %172)
  %174 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %175 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %171, %152
  br label %179

179:                                              ; preds = %178, %131
  %180 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @ksz8795_cfg_port_member(%struct.ksz_device* %180, i32 %181, i32 %182)
  ret void
}

declare dso_local i32 @ksz_port_cfg(%struct.ksz_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ksz8795_set_prio_queue(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz_read8(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @ksz_write8(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ksz8795_cfg_port_member(%struct.ksz_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
