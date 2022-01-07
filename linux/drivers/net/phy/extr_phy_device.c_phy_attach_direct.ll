; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_attach_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_attach_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 (%struct.device*)*, %struct.module* }
%struct.device = type { %struct.TYPE_17__*, i32 }
%struct.module = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_17__ }
%struct.TYPE_11__ = type { i32 }
%struct.net_device = type { %struct.phy_device*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.module* }
%struct.phy_device = type { i32, %struct.net_device*, i32, i32, i32, %struct.TYPE_16__, i32, i64 }
%struct.TYPE_16__ = type { %struct.device, %struct.mii_bus* }
%struct.mii_bus = type { %struct.module* }

@.str = private unnamed_addr constant [30 x i8] c"failed to get the bus module\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@genphy_c45_driver = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@genphy_driver = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to get the device driver module\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"PHY already attached\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@phy_link_change = common dso_local global i32 0, align 4
@dev_attr_phy_standalone = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"error creating 'phy_standalone' sysfs entry\0A\00", align 1
@PHY_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_attach_direct(%struct.net_device* %0, %struct.phy_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mii_bus*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.module*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.phy_device* %1, %struct.phy_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.mii_bus*, %struct.mii_bus** %17, align 8
  store %struct.mii_bus* %18, %struct.mii_bus** %10, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %11, align 8
  store %struct.module* null, %struct.module** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.module*, %struct.module** %31, align 8
  store %struct.module* %32, %struct.module** %12, align 8
  br label %33

33:                                               ; preds = %24, %4
  %34 = load %struct.module*, %struct.module** %12, align 8
  %35 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 0
  %37 = load %struct.module*, %struct.module** %36, align 8
  %38 = icmp ne %struct.module* %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %41 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %40, i32 0, i32 0
  %42 = load %struct.module*, %struct.module** %41, align 8
  %43 = call i32 @try_module_get(%struct.module* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %47 = call i32 @phydev_err(%struct.phy_device* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %203

50:                                               ; preds = %39, %33
  %51 = load %struct.device*, %struct.device** %11, align 8
  %52 = call i32 @get_device(%struct.device* %51)
  %53 = load %struct.device*, %struct.device** %11, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = icmp ne %struct.TYPE_17__* %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %50
  %58 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %59 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %11, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  store %struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @genphy_c45_driver, i32 0, i32 0, i32 0), %struct.TYPE_17__** %64, align 8
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.device*, %struct.device** %11, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 0
  store %struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @genphy_driver, i32 0, i32 0, i32 0), %struct.TYPE_17__** %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  store i32 1, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %50
  %70 = load %struct.device*, %struct.device** %11, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load %struct.module*, %struct.module** %73, align 8
  %75 = call i32 @try_module_get(%struct.module* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %69
  %78 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %79 = call i32 @phydev_err(%struct.phy_device* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  br label %188

82:                                               ; preds = %69
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load %struct.device*, %struct.device** %11, align 8
  %87 = getelementptr inbounds %struct.device, %struct.device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32 (%struct.device*)*, i32 (%struct.device*)** %89, align 8
  %91 = load %struct.device*, %struct.device** %11, align 8
  %92 = call i32 %90(%struct.device* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load %struct.device*, %struct.device** %11, align 8
  %97 = call i32 @device_bind_driver(%struct.device* %96)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %95, %85
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %181

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %82
  %104 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %105 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %104, i32 0, i32 1
  %106 = load %struct.net_device*, %struct.net_device** %105, align 8
  %107 = icmp ne %struct.net_device* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = call i32 @dev_err(%struct.TYPE_20__* %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @EBUSY, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %14, align 4
  br label %177

114:                                              ; preds = %103
  %115 = load i32, i32* @phy_link_change, align 4
  %116 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %117 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.net_device*, %struct.net_device** %6, align 8
  %119 = icmp ne %struct.net_device* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %123 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %122, i32 0, i32 1
  store %struct.net_device* %121, %struct.net_device** %123, align 8
  %124 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %125 = load %struct.net_device*, %struct.net_device** %6, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  store %struct.phy_device* %124, %struct.phy_device** %126, align 8
  br label %127

127:                                              ; preds = %120, %114
  %128 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %129 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %131 = call i32 @phy_sysfs_create_links(%struct.phy_device* %130)
  %132 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %133 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %132, i32 0, i32 1
  %134 = load %struct.net_device*, %struct.net_device** %133, align 8
  %135 = icmp ne %struct.net_device* %134, null
  br i1 %135, label %148, label %136

136:                                              ; preds = %127
  %137 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %138 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.device, %struct.device* %139, i32 0, i32 1
  %141 = call i32 @sysfs_create_file(i32* %140, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dev_attr_phy_standalone, i32 0, i32 0))
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %146 = call i32 @phydev_err(%struct.phy_device* %145, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %136
  br label %148

148:                                              ; preds = %147, %127
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %151 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %154 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @PHY_READY, align 4
  %156 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %157 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.net_device*, %struct.net_device** %6, align 8
  %159 = icmp ne %struct.net_device* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %148
  %161 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %162 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %161, i32 0, i32 1
  %163 = load %struct.net_device*, %struct.net_device** %162, align 8
  %164 = call i32 @netif_carrier_off(%struct.net_device* %163)
  br label %165

165:                                              ; preds = %160, %148
  %166 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %167 = call i32 @phy_init_hw(%struct.phy_device* %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %177

171:                                              ; preds = %165
  %172 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %173 = call i32 @phy_resume(%struct.phy_device* %172)
  %174 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %175 = call i32 @phy_led_triggers_register(%struct.phy_device* %174)
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %5, align 4
  br label %203

177:                                              ; preds = %170, %108
  %178 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %179 = call i32 @phy_detach(%struct.phy_device* %178)
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %5, align 4
  br label %203

181:                                              ; preds = %101
  %182 = load %struct.device*, %struct.device** %11, align 8
  %183 = getelementptr inbounds %struct.device, %struct.device* %182, i32 0, i32 0
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = load %struct.module*, %struct.module** %185, align 8
  %187 = call i32 @module_put(%struct.module* %186)
  br label %188

188:                                              ; preds = %181, %77
  %189 = load %struct.device*, %struct.device** %11, align 8
  %190 = call i32 @put_device(%struct.device* %189)
  %191 = load %struct.module*, %struct.module** %12, align 8
  %192 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %193 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %192, i32 0, i32 0
  %194 = load %struct.module*, %struct.module** %193, align 8
  %195 = icmp ne %struct.module* %191, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %198 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %197, i32 0, i32 0
  %199 = load %struct.module*, %struct.module** %198, align 8
  %200 = call i32 @module_put(%struct.module* %199)
  br label %201

201:                                              ; preds = %196, %188
  %202 = load i32, i32* %14, align 4
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %201, %177, %171, %45
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @device_bind_driver(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @phy_sysfs_create_links(%struct.phy_device*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_init_hw(%struct.phy_device*) #1

declare dso_local i32 @phy_resume(%struct.phy_device*) #1

declare dso_local i32 @phy_led_triggers_register(%struct.phy_device*) #1

declare dso_local i32 @phy_detach(%struct.phy_device*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
