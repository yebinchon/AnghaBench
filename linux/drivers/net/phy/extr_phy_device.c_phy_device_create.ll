; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.phy_c45_device_ids, i32, i32, i64, i64, i64, i64, %struct.mdio_device }
%struct.phy_c45_device_ids = type { i32*, i32 }
%struct.mdio_device = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.mii_bus* }
%struct.TYPE_3__ = type { i32*, i32*, i32* }
%struct.mii_bus = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdio_bus_type = common dso_local global i32 0, align 4
@mdio_bus_phy_type = common dso_local global i32 0, align 4
@phy_bus_match = common dso_local global i32 0, align 4
@MDIO_DEVICE_FLAG_PHY = common dso_local global i32 0, align 4
@phy_mdio_device_free = common dso_local global i32 0, align 4
@phy_mdio_device_remove = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@PHY_ID_FMT = common dso_local global i32 0, align 4
@PHY_DOWN = common dso_local global i32 0, align 4
@phy_state_machine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @phy_device_create(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3, %struct.phy_c45_device_ids* %4) #0 {
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.phy_c45_device_ids*, align 8
  %12 = alloca %struct.phy_device*, align 8
  %13 = alloca %struct.mdio_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.phy_c45_device_ids* %4, %struct.phy_c45_device_ids** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.phy_device* @kzalloc(i32 144, i32 %17)
  store %struct.phy_device* %18, %struct.phy_device** %12, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %20 = icmp ne %struct.phy_device* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.phy_device* @ERR_PTR(i32 %23)
  store %struct.phy_device* %24, %struct.phy_device** %6, align 8
  br label %174

25:                                               ; preds = %5
  %26 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 14
  store %struct.mdio_device* %27, %struct.mdio_device** %13, align 8
  %28 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %29 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %28, i32 0, i32 2
  %30 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %31 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32* %29, i32** %32, align 8
  %33 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %34 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32* @mdio_bus_type, i32** %35, align 8
  %36 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %37 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32* @mdio_bus_phy_type, i32** %38, align 8
  %39 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %40 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %41 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %40, i32 0, i32 6
  store %struct.mii_bus* %39, %struct.mii_bus** %41, align 8
  %42 = load i32, i32* @phy_bus_match, align 4
  %43 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %44 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %47 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @MDIO_DEVICE_FLAG_PHY, align 4
  %49 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %50 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @phy_mdio_device_free, align 4
  %52 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %53 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @phy_mdio_device_remove, align 4
  %55 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %56 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 13
  store i64 0, i64* %58, align 8
  %59 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  %61 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 12
  store i64 0, i64* %62, align 8
  %63 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 11
  store i64 0, i64* %64, align 8
  %65 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 10
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  %68 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @AUTONEG_ENABLE, align 4
  %71 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %11, align 8
  %80 = icmp ne %struct.phy_c45_device_ids* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %25
  %82 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %83 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %82, i32 0, i32 7
  %84 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %11, align 8
  %85 = bitcast %struct.phy_c45_device_ids* %83 to i8*
  %86 = bitcast %struct.phy_c45_device_ids* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  br label %87

87:                                               ; preds = %81, %25
  %88 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %89 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %96 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %98 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %97, i32 0, i32 1
  %99 = load i32, i32* @PHY_ID_FMT, align 4
  %100 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %101 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @dev_set_name(%struct.TYPE_3__* %98, i32 %99, i32 %102, i32 %103)
  %105 = load i32, i32* @PHY_DOWN, align 4
  %106 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %107 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %109 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %108, i32 0, i32 4
  %110 = call i32 @mutex_init(i32* %109)
  %111 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 3
  %113 = load i32, i32* @phy_state_machine, align 4
  %114 = call i32 @INIT_DELAYED_WORK(i32* %112, i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %156

117:                                              ; preds = %87
  %118 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %11, align 8
  %119 = icmp ne %struct.phy_c45_device_ids* %118, null
  br i1 %119, label %120, label %156

120:                                              ; preds = %117
  %121 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %11, align 8
  %122 = getelementptr inbounds %struct.phy_c45_device_ids, %struct.phy_c45_device_ids* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @ARRAY_SIZE(i32* %123)
  store i32 %124, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %125

125:                                              ; preds = %152, %120
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %125
  %130 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %11, align 8
  %131 = getelementptr inbounds %struct.phy_c45_device_ids, %struct.phy_c45_device_ids* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = shl i32 1, %133
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %129
  br label %152

138:                                              ; preds = %129
  %139 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %140 = load %struct.phy_c45_device_ids*, %struct.phy_c45_device_ids** %11, align 8
  %141 = getelementptr inbounds %struct.phy_c45_device_ids, %struct.phy_c45_device_ids* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @phy_request_driver_module(%struct.phy_device* %139, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %155

151:                                              ; preds = %138
  br label %152

152:                                              ; preds = %151, %137
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %125

155:                                              ; preds = %150, %125
  br label %160

156:                                              ; preds = %117, %87
  %157 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @phy_request_driver_module(%struct.phy_device* %157, i32 %158)
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %156, %155
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %165 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %164, i32 0, i32 1
  %166 = call i32 @device_initialize(%struct.TYPE_3__* %165)
  br label %172

167:                                              ; preds = %160
  %168 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %169 = call i32 @kfree(%struct.phy_device* %168)
  %170 = load i32, i32* %14, align 4
  %171 = call %struct.phy_device* @ERR_PTR(i32 %170)
  store %struct.phy_device* %171, %struct.phy_device** %12, align 8
  br label %172

172:                                              ; preds = %167, %163
  %173 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %173, %struct.phy_device** %6, align 8
  br label %174

174:                                              ; preds = %172, %21
  %175 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  ret %struct.phy_device* %175
}

declare dso_local %struct.phy_device* @kzalloc(i32, i32) #1

declare dso_local %struct.phy_device* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @phy_request_driver_module(%struct.phy_device*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
