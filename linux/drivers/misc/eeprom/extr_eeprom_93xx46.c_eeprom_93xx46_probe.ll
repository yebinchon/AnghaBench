; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.eeprom_93xx46_platform_data*, i64 }
%struct.eeprom_93xx46_platform_data = type { i32 }
%struct.eeprom_93xx46_dev = type { i32, i32, i32, %struct.TYPE_9__, %struct.eeprom_93xx46_platform_data*, %struct.spi_device*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.eeprom_93xx46_dev*, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EE_ADDR8 = common dso_local global i32 0, align 4
@EE_ADDR16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unspecified address type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EE_READONLY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@eeprom_93xx46_read = common dso_local global i32 0, align 4
@eeprom_93xx46_write = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%d-bit eeprom %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"(readonly)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dev_attr_erase = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"can't create erase interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @eeprom_93xx46_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_93xx46_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.eeprom_93xx46_platform_data*, align 8
  %5 = alloca %struct.eeprom_93xx46_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = call i32 @eeprom_93xx46_probe_dt(%struct.spi_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %197

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %23, align 8
  store %struct.eeprom_93xx46_platform_data* %24, %struct.eeprom_93xx46_platform_data** %4, align 8
  %25 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %4, align 8
  %26 = icmp ne %struct.eeprom_93xx46_platform_data* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %197

33:                                               ; preds = %20
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.eeprom_93xx46_dev* @devm_kzalloc(%struct.TYPE_8__* %35, i32 112, i32 %36)
  store %struct.eeprom_93xx46_dev* %37, %struct.eeprom_93xx46_dev** %5, align 8
  %38 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %39 = icmp ne %struct.eeprom_93xx46_dev* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %197

43:                                               ; preds = %33
  %44 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %4, align 8
  %45 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EE_ADDR8, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %52 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %51, i32 0, i32 0
  store i32 7, i32* %52, align 8
  br label %70

53:                                               ; preds = %43
  %54 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %4, align 8
  %55 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EE_ADDR16, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %62 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %61, i32 0, i32 0
  store i32 6, i32* %62, align 8
  br label %69

63:                                               ; preds = %53
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %197

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %72 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %71, i32 0, i32 6
  %73 = call i32 @mutex_init(i32* %72)
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %76 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %75, i32 0, i32 5
  store %struct.spi_device* %74, %struct.spi_device** %76, align 8
  %77 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %4, align 8
  %78 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %79 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %78, i32 0, i32 4
  store %struct.eeprom_93xx46_platform_data* %77, %struct.eeprom_93xx46_platform_data** %79, align 8
  %80 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %81 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %80, i32 0, i32 1
  store i32 128, i32* %81, align 4
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 0
  %84 = call i32 @dev_name(%struct.TYPE_8__* %83)
  %85 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %86 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 12
  store i32 %84, i32* %87, align 8
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %88, i32 0, i32 0
  %90 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %91 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 11
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %92, align 8
  %93 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %4, align 8
  %94 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @EE_READONLY, align 4
  %97 = and i32 %95, %96
  %98 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %99 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %102 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* @THIS_MODULE, align 4
  %105 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %106 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 10
  store i32 %104, i32* %107, align 8
  %108 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %109 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  %111 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %112 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %111, i32 0, i32 0
  %113 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %114 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 9
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %115, align 8
  %116 = load i32, i32* @eeprom_93xx46_read, align 4
  %117 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %118 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 8
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* @eeprom_93xx46_write, align 4
  %121 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %122 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 7
  store i32 %120, i32* %123, align 8
  %124 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %125 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %126 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 6
  store %struct.eeprom_93xx46_dev* %124, %struct.eeprom_93xx46_dev** %127, align 8
  %128 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %129 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  store i32 4, i32* %130, align 4
  %131 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %132 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  store i32 1, i32* %133, align 8
  %134 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %135 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %138 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 5
  store i32 %136, i32* %139, align 4
  %140 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %141 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %140, i32 0, i32 0
  %142 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %143 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %142, i32 0, i32 3
  %144 = call i32 @devm_nvmem_register(%struct.TYPE_8__* %141, %struct.TYPE_9__* %143)
  %145 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %146 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %148 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @IS_ERR(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %70
  %153 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %154 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @PTR_ERR(i32 %155)
  store i32 %156, i32* %2, align 4
  br label %197

157:                                              ; preds = %70
  %158 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %159 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %158, i32 0, i32 0
  %160 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %4, align 8
  %161 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @EE_ADDR8, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 8, i32 16
  %168 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %4, align 8
  %169 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @EE_READONLY, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %176 = call i32 @dev_info(%struct.TYPE_8__* %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %167, i8* %175)
  %177 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %4, align 8
  %178 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @EE_READONLY, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %157
  %184 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %185 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %184, i32 0, i32 0
  %186 = call i64 @device_create_file(%struct.TYPE_8__* %185, i32* @dev_attr_erase)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %190 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %189, i32 0, i32 0
  %191 = call i32 @dev_err(%struct.TYPE_8__* %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %192

192:                                              ; preds = %188, %183
  br label %193

193:                                              ; preds = %192, %157
  %194 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %195 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %5, align 8
  %196 = call i32 @spi_set_drvdata(%struct.spi_device* %194, %struct.eeprom_93xx46_dev* %195)
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %193, %152, %63, %40, %27, %17
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @eeprom_93xx46_probe_dt(%struct.spi_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.eeprom_93xx46_dev* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_nvmem_register(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32, i8*) #1

declare dso_local i64 @device_create_file(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.eeprom_93xx46_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
