; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_spi_ks8995.c_ks8995_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_spi_ks8995.c_ks8995_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.spi_device = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.ks8995_switch = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.spi_device*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@max_variant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad chip variant %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ks8995_chip = common dso_local global %struct.TYPE_13__* null, align 8
@OF_GPIO_ACTIVE_LOW = common dso_local global i64 0, align 8
@GPIOF_ACTIVE_LOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"switch-reset\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to get reset-gpios: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"spi_setup failed, err=%d\0A\00", align 1
@ks8995_registers_attr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"unable to create sysfs file, err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s device found, Chip ID:%x, Revision:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ks8995_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8995_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ks8995_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.TYPE_12__* @spi_get_device_id(%struct.spi_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @max_variant, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 1
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(%struct.TYPE_14__* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %219

22:                                               ; preds = %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.TYPE_14__* %24, i32 48, i32 %25)
  %27 = bitcast i8* %26 to %struct.ks8995_switch*
  store %struct.ks8995_switch* %27, %struct.ks8995_switch** %4, align 8
  %28 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %29 = icmp ne %struct.ks8995_switch* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %219

33:                                               ; preds = %22
  %34 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %35 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %34, i32 0, i32 5
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %39 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %38, i32 0, i32 4
  store %struct.spi_device* %37, %struct.spi_device** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ks8995_chip, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %42
  %44 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %45 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %44, i32 0, i32 1
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %45, align 8
  %46 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %47 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %46, i32 0, i32 4
  %48 = load %struct.spi_device*, %struct.spi_device** %47, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %33
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 1
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @devm_kzalloc(%struct.TYPE_14__* %55, i32 16, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_10__*
  %59 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %60 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %59, i32 0, i32 3
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %60, align 8
  %61 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %62 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %61, i32 0, i32 3
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %219

68:                                               ; preds = %53
  %69 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %70 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %69, i32 0, i32 3
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %74 = call i32 @ks8995_parse_dt(%struct.ks8995_switch* %73)
  br label %75

75:                                               ; preds = %68, %33
  %76 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %77 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %86 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %85, i32 0, i32 3
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %86, align 8
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %89 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %88, i32 0, i32 3
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %92, label %139

92:                                               ; preds = %87
  %93 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %94 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @gpio_is_valid(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %92
  %101 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %102 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %101, i32 0, i32 3
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @OF_GPIO_ACTIVE_LOW, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i64, i64* @GPIOF_ACTIVE_LOW, align 8
  br label %111

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i64 [ %109, %108 ], [ 0, %110 ]
  store i64 %112, i64* %7, align 8
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %113, i32 0, i32 1
  %115 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %116 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %115, i32 0, i32 3
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @devm_gpio_request_one(%struct.TYPE_14__* %114, i32 %119, i64 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %111
  %125 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %126 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %125, i32 0, i32 1
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @dev_err(%struct.TYPE_14__* %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %219

131:                                              ; preds = %111
  %132 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %133 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %132, i32 0, i32 3
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @gpio_to_desc(i32 %136)
  %138 = call i32 @gpiod_set_value(i32 %137, i32 0)
  br label %139

139:                                              ; preds = %131, %92, %87
  %140 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %141 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %142 = call i32 @spi_set_drvdata(%struct.spi_device* %140, %struct.ks8995_switch* %141)
  %143 = load i32, i32* @SPI_MODE_0, align 4
  %144 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %145 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %147 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %146, i32 0, i32 0
  store i32 8, i32* %147, align 8
  %148 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %149 = call i32 @spi_setup(%struct.spi_device* %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %139
  %153 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %154 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %153, i32 0, i32 1
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @dev_err(%struct.TYPE_14__* %154, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %219

158:                                              ; preds = %139
  %159 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %160 = call i32 @ks8995_get_revision(%struct.ks8995_switch* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %2, align 4
  br label %219

165:                                              ; preds = %158
  %166 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %167 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %166, i32 0, i32 2
  %168 = call i32 @memcpy(%struct.TYPE_11__* %167, i32* @ks8995_registers_attr, i32 8)
  %169 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %170 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %169, i32 0, i32 1
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %175 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  %177 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %178 = call i32 @ks8995_reset(%struct.ks8995_switch* %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %165
  %182 = load i32, i32* %5, align 4
  store i32 %182, i32* %2, align 4
  br label %219

183:                                              ; preds = %165
  %184 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %185 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = call i32 @sysfs_attr_init(i32* %186)
  %188 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %189 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %192 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %191, i32 0, i32 2
  %193 = call i32 @sysfs_create_bin_file(i32* %190, %struct.TYPE_11__* %192)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %183
  %197 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %198 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %197, i32 0, i32 1
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @dev_err(%struct.TYPE_14__* %198, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %5, align 4
  store i32 %201, i32* %2, align 4
  br label %219

202:                                              ; preds = %183
  %203 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %204 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %203, i32 0, i32 1
  %205 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %206 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %205, i32 0, i32 1
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %211 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %210, i32 0, i32 1
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ks8995_switch*, %struct.ks8995_switch** %4, align 8
  %216 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @dev_info(%struct.TYPE_14__* %204, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %209, i32 %214, i32 %217)
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %202, %196, %181, %163, %152, %124, %65, %30, %15
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_12__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ks8995_parse_dt(%struct.ks8995_switch*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_14__*, i32, i64, i8*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @gpio_to_desc(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ks8995_switch*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @ks8995_get_revision(%struct.ks8995_switch*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @ks8995_reset(%struct.ks8995_switch*) #1

declare dso_local i32 @sysfs_attr_init(i32*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
