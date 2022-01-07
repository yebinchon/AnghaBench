; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c___mdiobus_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c___mdiobus_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i64, i32, %struct.TYPE_6__, %struct.phy_device*, %struct.mdio_device**, i32*, i32 (%struct.mii_bus*)*, i32, i32, i32, i32, %struct.module*, i32*, i32* }
%struct.TYPE_6__ = type { i32*, i32*, i32 }
%struct.phy_device = type { i32 }
%struct.mdio_device = type { i32 (%struct.mdio_device*)*, i32 (%struct.mdio_device*)* }
%struct.module = type { i32 }
%struct.gpio_desc = type opaque

@EINVAL = common dso_local global i32 0, align 4
@MDIOBUS_ALLOCATED = common dso_local global i64 0, align 8
@MDIOBUS_UNREGISTERED = common dso_local global i64 0, align 8
@mdio_bus_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"mii_bus %s failed to register\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"mii_bus %s couldn't get reset GPIO\0A\00", align 1
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mdiobus_create_device = common dso_local global i32 0, align 4
@MDIOBUS_REGISTERED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"%s: probed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mdiobus_register(%struct.mii_bus* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.mdio_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca %struct.phy_device*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %11 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %12 = icmp eq %struct.mii_bus* null, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* null, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %20 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %19, i32 0, i32 13
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* null, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %25 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %24, i32 0, i32 12
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* null, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %18, %13, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %223

31:                                               ; preds = %23
  %32 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MDIOBUS_ALLOCATED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %39 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MDIOBUS_UNREGISTERED, align 8
  %42 = icmp ne i64 %40, %41
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i1 [ false, %31 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.module*, %struct.module** %5, align 8
  %48 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %49 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %48, i32 0, i32 11
  store %struct.module* %47, %struct.module** %49, align 8
  %50 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %51 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %54 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %57 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32* @mdio_bus_class, i32** %58, align 8
  %59 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %60 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %63 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %62, i32 0, i32 2
  %64 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %65 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_set_name(%struct.TYPE_6__* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %69 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %68, i32 0, i32 2
  %70 = call i32 @device_register(%struct.TYPE_6__* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %43
  %74 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %75 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %223

80:                                               ; preds = %43
  %81 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %82 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %81, i32 0, i32 9
  %83 = call i32 @mutex_init(i32* %82)
  %84 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %85 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %84, i32 0, i32 2
  %86 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %87 = call %struct.phy_device* @devm_gpiod_get_optional(%struct.TYPE_6__* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = bitcast %struct.phy_device* %87 to %struct.gpio_desc*
  store %struct.gpio_desc* %88, %struct.gpio_desc** %9, align 8
  %89 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %90 = bitcast %struct.gpio_desc* %89 to %struct.phy_device*
  %91 = call i64 @IS_ERR(%struct.phy_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %80
  %94 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %95 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %94, i32 0, i32 2
  %96 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %97 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_err(%struct.TYPE_6__* %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %101 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %100, i32 0, i32 2
  %102 = call i32 @device_del(%struct.TYPE_6__* %101)
  %103 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %104 = bitcast %struct.gpio_desc* %103 to %struct.phy_device*
  %105 = call i32 @PTR_ERR(%struct.phy_device* %104)
  store i32 %105, i32* %3, align 4
  br label %223

106:                                              ; preds = %80
  %107 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %108 = icmp ne %struct.gpio_desc* %107, null
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %111 = bitcast %struct.gpio_desc* %110 to %struct.phy_device*
  %112 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %113 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %112, i32 0, i32 3
  store %struct.phy_device* %111, %struct.phy_device** %113, align 8
  %114 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %115 = bitcast %struct.gpio_desc* %114 to %struct.phy_device*
  %116 = call i32 @gpiod_set_value_cansleep(%struct.phy_device* %115, i32 1)
  %117 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %118 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @udelay(i32 %119)
  %121 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %122 = bitcast %struct.gpio_desc* %121 to %struct.phy_device*
  %123 = call i32 @gpiod_set_value_cansleep(%struct.phy_device* %122, i32 0)
  br label %124

124:                                              ; preds = %109, %106
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %127 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %126, i32 0, i32 6
  %128 = load i32 (%struct.mii_bus*)*, i32 (%struct.mii_bus*)** %127, align 8
  %129 = icmp ne i32 (%struct.mii_bus*)* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %132 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %131, i32 0, i32 6
  %133 = load i32 (%struct.mii_bus*)*, i32 (%struct.mii_bus*)** %132, align 8
  %134 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %135 = call i32 %133(%struct.mii_bus* %134)
  br label %136

136:                                              ; preds = %130, %125
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %167, %136
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @PHY_MAX_ADDR, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %137
  %142 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %143 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = shl i32 1, %145
  %147 = and i32 %144, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %141
  %150 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call %struct.phy_device* @mdiobus_scan(%struct.mii_bus* %150, i32 %151)
  store %struct.phy_device* %152, %struct.phy_device** %10, align 8
  %153 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %154 = call i64 @IS_ERR(%struct.phy_device* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %158 = call i32 @PTR_ERR(%struct.phy_device* %157)
  %159 = load i32, i32* @ENODEV, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %164 = call i32 @PTR_ERR(%struct.phy_device* %163)
  store i32 %164, i32* %8, align 4
  br label %181

165:                                              ; preds = %156, %149
  br label %166

166:                                              ; preds = %165, %141
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %137

170:                                              ; preds = %137
  %171 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %172 = load i32, i32* @mdiobus_create_device, align 4
  %173 = call i32 @mdiobus_setup_mdiodev_from_board_info(%struct.mii_bus* %171, i32 %172)
  %174 = load i64, i64* @MDIOBUS_REGISTERED, align 8
  %175 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %176 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %178 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %179)
  store i32 0, i32* %3, align 4
  br label %223

181:                                              ; preds = %162
  br label %182

182:                                              ; preds = %197, %196, %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %7, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %182
  %187 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %188 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %187, i32 0, i32 4
  %189 = load %struct.mdio_device**, %struct.mdio_device*** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.mdio_device*, %struct.mdio_device** %189, i64 %191
  %193 = load %struct.mdio_device*, %struct.mdio_device** %192, align 8
  store %struct.mdio_device* %193, %struct.mdio_device** %6, align 8
  %194 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %195 = icmp ne %struct.mdio_device* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %186
  br label %182

197:                                              ; preds = %186
  %198 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %199 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %198, i32 0, i32 1
  %200 = load i32 (%struct.mdio_device*)*, i32 (%struct.mdio_device*)** %199, align 8
  %201 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %202 = call i32 %200(%struct.mdio_device* %201)
  %203 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %204 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %203, i32 0, i32 0
  %205 = load i32 (%struct.mdio_device*)*, i32 (%struct.mdio_device*)** %204, align 8
  %206 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %207 = call i32 %205(%struct.mdio_device* %206)
  br label %182

208:                                              ; preds = %182
  %209 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %210 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %209, i32 0, i32 3
  %211 = load %struct.phy_device*, %struct.phy_device** %210, align 8
  %212 = icmp ne %struct.phy_device* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %215 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %214, i32 0, i32 3
  %216 = load %struct.phy_device*, %struct.phy_device** %215, align 8
  %217 = call i32 @gpiod_set_value_cansleep(%struct.phy_device* %216, i32 1)
  br label %218

218:                                              ; preds = %213, %208
  %219 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %220 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %219, i32 0, i32 2
  %221 = call i32 @device_del(%struct.TYPE_6__* %220)
  %222 = load i32, i32* %8, align 4
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %218, %170, %93, %73, %28
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.phy_device* @devm_gpiod_get_optional(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @device_del(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.phy_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local %struct.phy_device* @mdiobus_scan(%struct.mii_bus*, i32) #1

declare dso_local i32 @mdiobus_setup_mdiodev_from_board_info(%struct.mii_bus*, i32) #1

declare dso_local i32 @pr_info(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
