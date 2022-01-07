; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.sd = type { i32, i32, i32, i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@WARM_BOOT_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"unexpected systemstate: %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CPIA_COMMAND_DiscardFrame = common dso_local global i32 0, align 4
@CPIA_COMMAND_ModifyCameraStatus = common dso_local global i32 0, align 4
@STREAMSTATE = common dso_local global i32 0, align 4
@STREAM_NOT_READY = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetCameraStatus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"fatal_error: %04x, vp_status: %04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetVPVersion = common dso_local global i32 0, align 4
@VIDEOSIZE_QCIF = common dso_local global i32 0, align 4
@VIDEOSIZE_CIF = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetGrabMode = common dso_local global i32 0, align 4
@CPIA_GRAB_CONTINEOUS = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetCompression = common dso_local global i32 0, align 4
@CPIA_COMPRESSION_NONE = common dso_local global i32 0, align 4
@NO_DECIMATION = common dso_local global i32 0, align 4
@EXPOSURE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = call i32 @goto_low_power(%struct.gspca_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %1
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WARM_BOOT_STATE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %12
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (%struct.gspca_dev*, i8*, i64, ...) @gspca_err(%struct.gspca_dev* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 5
  %31 = call i32 @printstatus(%struct.gspca_dev* %28, %struct.TYPE_16__* %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %340

34:                                               ; preds = %12
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = call i32 @goto_high_power(%struct.gspca_dev* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %340

41:                                               ; preds = %34
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = load i32, i32* @CPIA_COMMAND_DiscardFrame, align 4
  %44 = call i32 @do_command(%struct.gspca_dev* %42, i32 %43, i32 0, i32 0, i32 0, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %340

49:                                               ; preds = %41
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = call i32 @goto_low_power(%struct.gspca_dev* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %340

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.sd*, %struct.sd** %4, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = call i32 @get_version_information(%struct.gspca_dev* %62)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = load i32, i32* @CPIA_COMMAND_ModifyCameraStatus, align 4
  %66 = load i32, i32* @STREAMSTATE, align 4
  %67 = load i32, i32* @STREAM_NOT_READY, align 4
  %68 = call i32 @do_command(%struct.gspca_dev* %64, i32 %65, i32 %66, i32 0, i32 %67, i32 0)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %340

73:                                               ; preds = %57
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %75 = call i32 @goto_high_power(%struct.gspca_dev* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %340

80:                                               ; preds = %73
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %82 = load i32, i32* @CPIA_COMMAND_GetCameraStatus, align 4
  %83 = call i32 @do_command(%struct.gspca_dev* %81, i32 %82, i32 0, i32 0, i32 0, i32 0)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %340

88:                                               ; preds = %80
  %89 = load %struct.sd*, %struct.sd** %4, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %88
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %97 = load %struct.sd*, %struct.sd** %4, align 8
  %98 = getelementptr inbounds %struct.sd, %struct.sd* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sd*, %struct.sd** %4, align 8
  %103 = getelementptr inbounds %struct.sd, %struct.sd* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.gspca_dev*, i8*, i64, ...) @gspca_err(%struct.gspca_dev* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %101, i32 %106)
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %340

110:                                              ; preds = %88
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %112 = load i32, i32* @CPIA_COMMAND_GetVPVersion, align 4
  %113 = call i32 @do_command(%struct.gspca_dev* %111, i32 %112, i32 0, i32 0, i32 0, i32 0)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %340

118:                                              ; preds = %110
  %119 = load %struct.sd*, %struct.sd** %4, align 8
  %120 = getelementptr inbounds %struct.sd, %struct.sd* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  store i32 120, i32* %121, align 8
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %123 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %127 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %118
  %136 = load %struct.sd*, %struct.sd** %4, align 8
  %137 = getelementptr inbounds %struct.sd, %struct.sd* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  store i32 2, i32* %139, align 4
  %140 = load %struct.sd*, %struct.sd** %4, align 8
  %141 = getelementptr inbounds %struct.sd, %struct.sd* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  store i32 6, i32* %143, align 4
  br label %153

144:                                              ; preds = %118
  %145 = load %struct.sd*, %struct.sd** %4, align 8
  %146 = getelementptr inbounds %struct.sd, %struct.sd* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 4
  %149 = load %struct.sd*, %struct.sd** %4, align 8
  %150 = getelementptr inbounds %struct.sd, %struct.sd* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %144, %135
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, 2
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %153
  %158 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  %159 = load %struct.sd*, %struct.sd** %4, align 8
  %160 = getelementptr inbounds %struct.sd, %struct.sd* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 4
  %163 = load %struct.sd*, %struct.sd** %4, align 8
  %164 = getelementptr inbounds %struct.sd, %struct.sd* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sdiv i32 %167, 2
  store i32 %168, i32* %166, align 4
  %169 = load %struct.sd*, %struct.sd** %4, align 8
  %170 = getelementptr inbounds %struct.sd, %struct.sd* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sdiv i32 %173, 2
  store i32 %174, i32* %172, align 4
  %175 = load %struct.sd*, %struct.sd** %4, align 8
  %176 = getelementptr inbounds %struct.sd, %struct.sd* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sdiv i32 %178, 2
  store i32 %179, i32* %177, align 8
  br label %186

180:                                              ; preds = %153
  %181 = load i32, i32* @VIDEOSIZE_CIF, align 4
  %182 = load %struct.sd*, %struct.sd** %4, align 8
  %183 = getelementptr inbounds %struct.sd, %struct.sd* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  store i32 %181, i32* %185, align 4
  br label %186

186:                                              ; preds = %180, %157
  %187 = load %struct.sd*, %struct.sd** %4, align 8
  %188 = getelementptr inbounds %struct.sd, %struct.sd* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %193 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = ashr i32 %195, 3
  %197 = add nsw i32 %191, %196
  %198 = load %struct.sd*, %struct.sd** %4, align 8
  %199 = getelementptr inbounds %struct.sd, %struct.sd* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  store i32 %197, i32* %201, align 4
  %202 = load %struct.sd*, %struct.sd** %4, align 8
  %203 = getelementptr inbounds %struct.sd, %struct.sd* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %208 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = ashr i32 %210, 2
  %212 = add nsw i32 %206, %211
  %213 = load %struct.sd*, %struct.sd** %4, align 8
  %214 = getelementptr inbounds %struct.sd, %struct.sd* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 3
  store i32 %212, i32* %216, align 4
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %218 = load i32, i32* @CPIA_COMMAND_SetGrabMode, align 4
  %219 = load i32, i32* @CPIA_GRAB_CONTINEOUS, align 4
  %220 = call i32 @do_command(%struct.gspca_dev* %217, i32 %218, i32 %219, i32 0, i32 0, i32 0)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %186
  %224 = load i32, i32* %6, align 4
  store i32 %224, i32* %2, align 4
  br label %340

225:                                              ; preds = %186
  %226 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %227 = load i32, i32* @CPIA_COMMAND_SetCompression, align 4
  %228 = load i32, i32* @CPIA_COMPRESSION_NONE, align 4
  %229 = load i32, i32* @NO_DECIMATION, align 4
  %230 = call i32 @do_command(%struct.gspca_dev* %226, i32 %227, i32 %228, i32 %229, i32 0, i32 0)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %225
  %234 = load i32, i32* %6, align 4
  store i32 %234, i32* %2, align 4
  br label %340

235:                                              ; preds = %225
  %236 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %237 = call i32 @command_setcompressiontarget(%struct.gspca_dev* %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = load i32, i32* %6, align 4
  store i32 %241, i32* %2, align 4
  br label %340

242:                                              ; preds = %235
  %243 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %244 = call i32 @command_setcolourparams(%struct.gspca_dev* %243)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i32, i32* %6, align 4
  store i32 %248, i32* %2, align 4
  br label %340

249:                                              ; preds = %242
  %250 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %251 = call i32 @command_setformat(%struct.gspca_dev* %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = load i32, i32* %6, align 4
  store i32 %255, i32* %2, align 4
  br label %340

256:                                              ; preds = %249
  %257 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %258 = call i32 @command_setyuvtresh(%struct.gspca_dev* %257)
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i32, i32* %6, align 4
  store i32 %262, i32* %2, align 4
  br label %340

263:                                              ; preds = %256
  %264 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %265 = call i32 @command_setecptiming(%struct.gspca_dev* %264)
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = load i32, i32* %6, align 4
  store i32 %269, i32* %2, align 4
  br label %340

270:                                              ; preds = %263
  %271 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %272 = call i32 @command_setcompressionparams(%struct.gspca_dev* %271)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = load i32, i32* %6, align 4
  store i32 %276, i32* %2, align 4
  br label %340

277:                                              ; preds = %270
  %278 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %279 = call i32 @command_setexposure(%struct.gspca_dev* %278)
  store i32 %279, i32* %6, align 4
  %280 = load i32, i32* %6, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = load i32, i32* %6, align 4
  store i32 %283, i32* %2, align 4
  br label %340

284:                                              ; preds = %277
  %285 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %286 = call i32 @command_setcolourbalance(%struct.gspca_dev* %285)
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = load i32, i32* %6, align 4
  store i32 %290, i32* %2, align 4
  br label %340

291:                                              ; preds = %284
  %292 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %293 = call i32 @command_setsensorfps(%struct.gspca_dev* %292)
  store i32 %293, i32* %6, align 4
  %294 = load i32, i32* %6, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %291
  %297 = load i32, i32* %6, align 4
  store i32 %297, i32* %2, align 4
  br label %340

298:                                              ; preds = %291
  %299 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %300 = call i32 @command_setapcor(%struct.gspca_dev* %299)
  store i32 %300, i32* %6, align 4
  %301 = load i32, i32* %6, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = load i32, i32* %6, align 4
  store i32 %304, i32* %2, align 4
  br label %340

305:                                              ; preds = %298
  %306 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %307 = call i32 @command_setflickerctrl(%struct.gspca_dev* %306)
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %305
  %311 = load i32, i32* %6, align 4
  store i32 %311, i32* %2, align 4
  br label %340

312:                                              ; preds = %305
  %313 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %314 = call i32 @command_setvloffset(%struct.gspca_dev* %313)
  store i32 %314, i32* %6, align 4
  %315 = load i32, i32* %6, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load i32, i32* %6, align 4
  store i32 %318, i32* %2, align 4
  br label %340

319:                                              ; preds = %312
  %320 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %321 = call i32 @command_resume(%struct.gspca_dev* %320)
  store i32 %321, i32* %6, align 4
  %322 = load i32, i32* %6, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = load i32, i32* %6, align 4
  store i32 %325, i32* %2, align 4
  br label %340

326:                                              ; preds = %319
  %327 = load %struct.sd*, %struct.sd** %4, align 8
  %328 = getelementptr inbounds %struct.sd, %struct.sd* %327, i32 0, i32 0
  store i32 6, i32* %328, align 8
  %329 = load i32, i32* @EXPOSURE_NORMAL, align 4
  %330 = load %struct.sd*, %struct.sd** %4, align 8
  %331 = getelementptr inbounds %struct.sd, %struct.sd* %330, i32 0, i32 4
  store i32 %329, i32* %331, align 8
  %332 = load %struct.sd*, %struct.sd** %4, align 8
  %333 = getelementptr inbounds %struct.sd, %struct.sd* %332, i32 0, i32 3
  store i64 0, i64* %333, align 8
  %334 = load %struct.sd*, %struct.sd** %4, align 8
  %335 = getelementptr inbounds %struct.sd, %struct.sd* %334, i32 0, i32 2
  %336 = call i32 @atomic_set(i32* %335, i32 0)
  %337 = load %struct.sd*, %struct.sd** %4, align 8
  %338 = getelementptr inbounds %struct.sd, %struct.sd* %337, i32 0, i32 1
  %339 = call i32 @atomic_set(i32* %338, i32 0)
  store i32 0, i32* %2, align 4
  br label %340

340:                                              ; preds = %326, %324, %317, %310, %303, %296, %289, %282, %275, %268, %261, %254, %247, %240, %233, %223, %116, %95, %86, %78, %71, %54, %47, %39, %20
  %341 = load i32, i32* %2, align 4
  ret i32 %341
}

declare dso_local i32 @goto_low_power(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i64, ...) #1

declare dso_local i32 @printstatus(%struct.gspca_dev*, %struct.TYPE_16__*) #1

declare dso_local i32 @goto_high_power(%struct.gspca_dev*) #1

declare dso_local i32 @do_command(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_version_information(%struct.gspca_dev*) #1

declare dso_local i32 @command_setcompressiontarget(%struct.gspca_dev*) #1

declare dso_local i32 @command_setcolourparams(%struct.gspca_dev*) #1

declare dso_local i32 @command_setformat(%struct.gspca_dev*) #1

declare dso_local i32 @command_setyuvtresh(%struct.gspca_dev*) #1

declare dso_local i32 @command_setecptiming(%struct.gspca_dev*) #1

declare dso_local i32 @command_setcompressionparams(%struct.gspca_dev*) #1

declare dso_local i32 @command_setexposure(%struct.gspca_dev*) #1

declare dso_local i32 @command_setcolourbalance(%struct.gspca_dev*) #1

declare dso_local i32 @command_setsensorfps(%struct.gspca_dev*) #1

declare dso_local i32 @command_setapcor(%struct.gspca_dev*) #1

declare dso_local i32 @command_setflickerctrl(%struct.gspca_dev*) #1

declare dso_local i32 @command_setvloffset(%struct.gspca_dev*) #1

declare dso_local i32 @command_resume(%struct.gspca_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
