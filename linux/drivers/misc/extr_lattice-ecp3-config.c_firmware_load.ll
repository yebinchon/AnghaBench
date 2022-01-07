; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_lattice-ecp3-config.c_firmware_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_lattice-ecp3-config.c_firmware_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.firmware = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.fpga_data = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Cannot load firmware, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error: Firmware size is 0!\0A\00", align 1
@FPGA_CMD_READ_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"FPGA JTAG ID=%08x\0A\00", align 1
@ecp3_dev = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Error: No supported FPGA detected (JEDEC_ID=%08x)!\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"FPGA %s detected\0A\00", align 1
@FPGA_CMD_READ_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"FPGA Status=%08x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Error: Can't allocate memory!\0A\00", align 1
@FPGA_CMD_WRITE_INC = common dso_local global i32 0, align 4
@FPGA_CMD_REFRESH = common dso_local global i32 0, align 4
@FPGA_CMD_WRITE_EN = common dso_local global i32 0, align 4
@FPGA_CMD_CLEAR = common dso_local global i32 0, align 4
@FPGA_CLEAR_LOOP_COUNT = common dso_local global i32 0, align 4
@FPGA_STATUS_CLEARED = common dso_local global i64 0, align 8
@FPGA_CLEAR_MSLEEP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"Error: Timeout waiting for FPGA to clear (status=%08x)!\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Configuring the FPGA...\0A\00", align 1
@FPGA_CMD_WRITE_DIS = common dso_local global i32 0, align 4
@FPGA_STATUS_DONE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"FPGA successfully configured!\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"FPGA not configured (DONE not set)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @firmware_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @firmware_load(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.fpga_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.spi_device*
  store %struct.spi_device* %16, %struct.spi_device** %5, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %18 = call %struct.fpga_data* @spi_get_drvdata(%struct.spi_device* %17)
  store %struct.fpga_data* %18, %struct.fpga_data** %6, align 8
  store i32 8, i32* %11, align 4
  %19 = load %struct.firmware*, %struct.firmware** %3, align 8
  %20 = icmp eq %struct.firmware* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %233

25:                                               ; preds = %2
  %26 = load %struct.firmware*, %struct.firmware** %3, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %233

34:                                               ; preds = %25
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @FPGA_CMD_READ_ID, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @spi_write_then_read(%struct.spi_device* %40, i32* %41, i32 8, i32* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %46 = call i64 @get_unaligned_be32(i32* %45)
  store i64 %46, i64* %13, align 8
  %47 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @dev_dbg(i32* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %67, %34
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ecp3_dev, align 8
  %54 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ecp3_dev, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %70

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %51

70:                                               ; preds = %65, %51
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ecp3_dev, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %72)
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %13, align 8
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  br label %233

80:                                               ; preds = %70
  %81 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ecp3_dev, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32*, i8*, ...) @dev_info(i32* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @FPGA_CMD_READ_STATUS, align 4
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %90, i32* %91, align 16
  %92 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @spi_write_then_read(%struct.spi_device* %92, i32* %93, i32 8, i32* %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %98 = call i64 @get_unaligned_be32(i32* %97)
  store i64 %98, i64* %14, align 8
  %99 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %100 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %99, i32 0, i32 0
  %101 = load i64, i64* %14, align 8
  %102 = call i32 @dev_dbg(i32* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %101)
  %103 = load %struct.firmware*, %struct.firmware** %3, align 8
  %104 = getelementptr inbounds %struct.firmware, %struct.firmware* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 8
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i32* @kzalloc(i32 %106, i32 %107)
  store i32* %108, i32** %7, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %80
  %112 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %113 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %112, i32 0, i32 0
  %114 = call i32 (i32*, i8*, ...) @dev_err(i32* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %233

115:                                              ; preds = %80
  %116 = load i32, i32* @FPGA_CMD_WRITE_INC, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %116, i32* %118, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 255, i32* %120, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32 255, i32* %122, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32 255, i32* %124, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load %struct.firmware*, %struct.firmware** %3, align 8
  %128 = getelementptr inbounds %struct.firmware, %struct.firmware* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.firmware*, %struct.firmware** %3, align 8
  %131 = getelementptr inbounds %struct.firmware, %struct.firmware* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @memcpy(i32* %126, i32 %129, i32 %132)
  %134 = load i32, i32* @FPGA_CMD_REFRESH, align 4
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %134, i32* %135, align 16
  %136 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %138 = call i32 @spi_write(%struct.spi_device* %136, i32* %137, i32 4)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* @FPGA_CMD_WRITE_EN, align 4
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %139, i32* %140, align 16
  %141 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %143 = call i32 @spi_write(%struct.spi_device* %141, i32* %142, i32 4)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* @FPGA_CMD_CLEAR, align 4
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %144, i32* %145, align 16
  %146 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %148 = call i32 @spi_write(%struct.spi_device* %146, i32* %147, i32 4)
  store i32 %148, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %170, %115
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @FPGA_CLEAR_LOOP_COUNT, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %149
  %154 = load i32, i32* @FPGA_CMD_READ_STATUS, align 4
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %154, i32* %155, align 16
  %156 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @spi_write_then_read(%struct.spi_device* %156, i32* %157, i32 8, i32* %158, i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %162 = call i64 @get_unaligned_be32(i32* %161)
  store i64 %162, i64* %14, align 8
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* @FPGA_STATUS_CLEARED, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  br label %173

167:                                              ; preds = %153
  %168 = load i32, i32* @FPGA_CLEAR_MSLEEP, align 4
  %169 = call i32 @msleep(i32 %168)
  br label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %149

173:                                              ; preds = %166, %149
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @FPGA_CLEAR_LOOP_COUNT, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %179 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %178, i32 0, i32 0
  %180 = load i64, i64* %14, align 8
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %179, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i64 %180)
  %182 = load i32*, i32** %7, align 8
  %183 = call i32 @kfree(i32* %182)
  br label %233

184:                                              ; preds = %173
  %185 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %186 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %185, i32 0, i32 0
  %187 = call i32 (i32*, i8*, ...) @dev_info(i32* %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %188 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %189 = load i32*, i32** %7, align 8
  %190 = load %struct.firmware*, %struct.firmware** %3, align 8
  %191 = getelementptr inbounds %struct.firmware, %struct.firmware* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 8
  %194 = call i32 @spi_write(%struct.spi_device* %188, i32* %189, i32 %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* @FPGA_CMD_WRITE_DIS, align 4
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %195, i32* %196, align 16
  %197 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %198 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %199 = call i32 @spi_write(%struct.spi_device* %197, i32* %198, i32 4)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* @FPGA_CMD_READ_STATUS, align 4
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %200, i32* %201, align 16
  %202 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %203 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @spi_write_then_read(%struct.spi_device* %202, i32* %203, i32 8, i32* %204, i32 %205)
  store i32 %206, i32* %8, align 4
  %207 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %208 = call i64 @get_unaligned_be32(i32* %207)
  store i64 %208, i64* %14, align 8
  %209 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %210 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %209, i32 0, i32 0
  %211 = load i64, i64* %14, align 8
  %212 = call i32 @dev_dbg(i32* %210, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %211)
  %213 = load i64, i64* %14, align 8
  %214 = load i64, i64* @FPGA_STATUS_DONE, align 8
  %215 = and i64 %213, %214
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %184
  %218 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %219 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %218, i32 0, i32 0
  %220 = call i32 (i32*, i8*, ...) @dev_info(i32* %219, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %225

221:                                              ; preds = %184
  %222 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %223 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %222, i32 0, i32 0
  %224 = call i32 (i32*, i8*, ...) @dev_info(i32* %223, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %225

225:                                              ; preds = %221, %217
  %226 = load %struct.firmware*, %struct.firmware** %3, align 8
  %227 = call i32 @release_firmware(%struct.firmware* %226)
  %228 = load i32*, i32** %7, align 8
  %229 = call i32 @kfree(i32* %228)
  %230 = load %struct.fpga_data*, %struct.fpga_data** %6, align 8
  %231 = getelementptr inbounds %struct.fpga_data, %struct.fpga_data* %230, i32 0, i32 0
  %232 = call i32 @complete(i32* %231)
  br label %233

233:                                              ; preds = %225, %177, %111, %75, %30, %21
  ret void
}

declare dso_local %struct.fpga_data* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
