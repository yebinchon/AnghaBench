; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at25.c_at25_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at25.c_at25_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.at25_data = type { i32, %struct.spi_eeprom, i32, %struct.TYPE_9__, %struct.spi_device*, i32 }
%struct.spi_eeprom = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.at25_data*, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32 }

@EE_ADDR1 = common dso_local global i32 0, align 4
@EE_ADDR2 = common dso_local global i32 0, align 4
@EE_ADDR3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported address type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AT25_RDSR = common dso_local global i32 0, align 4
@AT25_SR_nRDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"rdsr --> %d (%02x)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EE_READONLY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@at25_ee_read = common dso_local global i32 0, align 4
@at25_ee_write = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%d %s %s eeprom%s, pagesize %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Byte\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"KByte\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" (readonly)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @at25_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at25_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.at25_data*, align 8
  %5 = alloca %struct.spi_eeprom, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.at25_data* null, %struct.at25_data** %4, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = call i32 @at25_fw_to_chip(%struct.TYPE_8__* %16, %struct.spi_eeprom* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %215

22:                                               ; preds = %14
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.spi_eeprom*
  %29 = bitcast %struct.spi_eeprom* %5 to i8*
  %30 = bitcast %struct.spi_eeprom* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 16, i1 false)
  br label %31

31:                                               ; preds = %23, %22
  %32 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EE_ADDR1, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %60

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EE_ADDR2, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 2, i32* %8, align 4
  br label %59

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EE_ADDR3, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 3, i32* %8, align 4
  br label %58

52:                                               ; preds = %45
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_dbg(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %215

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %44
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = load i32, i32* @AT25_RDSR, align 4
  %63 = call i32 @spi_w8r8(%struct.spi_device* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @AT25_SR_nRDY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66, %60
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 0
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_dbg(%struct.TYPE_8__* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* @ENXIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %215

79:                                               ; preds = %66
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 0
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.at25_data* @devm_kzalloc(%struct.TYPE_8__* %81, i32 112, i32 %82)
  store %struct.at25_data* %83, %struct.at25_data** %4, align 8
  %84 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %85 = icmp ne %struct.at25_data* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %215

89:                                               ; preds = %79
  %90 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %91 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %90, i32 0, i32 5
  %92 = call i32 @mutex_init(i32* %91)
  %93 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %94 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %93, i32 0, i32 1
  %95 = bitcast %struct.spi_eeprom* %94 to i8*
  %96 = bitcast %struct.spi_eeprom* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 16, i1 false)
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %99 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %98, i32 0, i32 4
  store %struct.spi_device* %97, %struct.spi_device** %99, align 8
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %102 = call i32 @spi_set_drvdata(%struct.spi_device* %100, %struct.at25_data* %101)
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %105 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %107 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %106, i32 0, i32 0
  %108 = call i32 @dev_name(%struct.TYPE_8__* %107)
  %109 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %110 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 12
  store i32 %108, i32* %111, align 8
  %112 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %113 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %112, i32 0, i32 0
  %114 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %115 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 11
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %116, align 8
  %117 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @EE_READONLY, align 4
  %120 = and i32 %118, %119
  %121 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %122 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %125 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load i32, i32* @THIS_MODULE, align 4
  %128 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %129 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 10
  store i32 %127, i32* %130, align 8
  %131 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %132 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i32 1, i32* %133, align 8
  %134 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %135 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %134, i32 0, i32 0
  %136 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %137 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 9
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %138, align 8
  %139 = load i32, i32* @at25_ee_read, align 4
  %140 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %141 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 8
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @at25_ee_write, align 4
  %144 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %145 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 7
  store i32 %143, i32* %146, align 8
  %147 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %148 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %149 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 6
  store %struct.at25_data* %147, %struct.at25_data** %150, align 8
  %151 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %152 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 3
  store i32 4, i32* %153, align 4
  %154 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %155 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 4
  store i32 1, i32* %156, align 8
  %157 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %160 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 5
  store i32 %158, i32* %161, align 4
  %162 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %163 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %162, i32 0, i32 0
  %164 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %165 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %164, i32 0, i32 3
  %166 = call i32 @devm_nvmem_register(%struct.TYPE_8__* %163, %struct.TYPE_9__* %165)
  %167 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %168 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  %169 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %170 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @IS_ERR(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %89
  %175 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %176 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @PTR_ERR(i32 %177)
  store i32 %178, i32* %2, align 4
  br label %215

179:                                              ; preds = %89
  %180 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %181 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %183, 1024
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  br label %192

188:                                              ; preds = %179
  %189 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sdiv i32 %190, 1024
  br label %192

192:                                              ; preds = %188, %185
  %193 = phi i32 [ %187, %185 ], [ %191, %188 ]
  %194 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %195, 1024
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %199 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %200 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %5, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @EE_READONLY, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %210 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %211 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @dev_info(%struct.TYPE_8__* %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %193, i8* %198, i32 %202, i8* %209, i32 %213)
  store i32 0, i32* %2, align 4
  br label %215

215:                                              ; preds = %192, %174, %86, %71, %52, %20
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i32 @at25_fw_to_chip(%struct.TYPE_8__*, %struct.spi_eeprom*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local %struct.at25_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.at25_data*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_nvmem_register(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
