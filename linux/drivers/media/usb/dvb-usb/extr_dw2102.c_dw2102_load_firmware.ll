; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2102_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2102_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.usb_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.firmware = type { i32, i32 }

@DW2101_FIRMWARE = common dso_local global i32 0, align 4
@err_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"start downloading DW210X firmware\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@DW210X_WRITE_MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"error while transferring firmware\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"could not restart the USB controller CPU.\00", align 1
@RC_MAP_TEVII_NEC = common dso_local global i32 0, align 4
@dw2104_properties = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@DW210X_READ_MSG = common dso_local global i32 0, align 4
@dw2102_i2c_algo = common dso_local global i32 0, align 4
@dw2102_properties = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@dw2102_tuner_attach = common dso_local global i32 0, align 4
@dw2102_earda_i2c_algo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.firmware*)* @dw2102_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw2102_load_firmware(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [7 x i32], align 16
  %12 = alloca %struct.firmware*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = bitcast [7 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 28, i1 false)
  %14 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  switch i32 %18, label %34 [
    i32 8449, label %19
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @DW2101_FIRMWARE, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 1
  %23 = call i32 @request_firmware(%struct.firmware** %12, i32 %20, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i32, i32* @err_str, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* @DW2101_FIRMWARE, align 4
  %31 = call i32 (i8*, ...) @err(i8* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %201

33:                                               ; preds = %19
  br label %36

34:                                               ; preds = %2
  %35 = load %struct.firmware*, %struct.firmware** %5, align 8
  store %struct.firmware* %35, %struct.firmware** %12, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = call i32 @info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.firmware*, %struct.firmware** %12, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @kmalloc(i32 %40, i32 %41)
  store i32* %42, i32** %7, align 8
  store i32 1, i32* %10, align 4
  %43 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %44 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %45 = call i32 @dw210x_op_rw(%struct.usb_device* %43, i32 160, i32 32658, i32 0, i32* %10, i32 1, i32 %44)
  %46 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %47 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %48 = call i32 @dw210x_op_rw(%struct.usb_device* %46, i32 160, i32 58880, i32 0, i32* %10, i32 1, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %189

51:                                               ; preds = %36
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.firmware*, %struct.firmware** %12, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.firmware*, %struct.firmware** %12, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32* %52, i32 %55, i32 %58)
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %82, %51
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.firmware*, %struct.firmware** %12, align 8
  %63 = getelementptr inbounds %struct.firmware, %struct.firmware* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %6, align 8
  %71 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %75 = call i32 @dw210x_op_rw(%struct.usb_device* %71, i32 160, i32 %72, i32 0, i32* %73, i32 64, i32 %74)
  %76 = icmp ne i32 %75, 64
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %85

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 64
  store i32 %84, i32* %9, align 4
  br label %60

85:                                               ; preds = %77, %60
  store i32 0, i32* %10, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %90 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %91 = call i32 @dw210x_op_rw(%struct.usb_device* %89, i32 160, i32 32658, i32 0, i32* %10, i32 1, i32 %90)
  %92 = icmp ne i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %88, %85
  %94 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %102 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %103 = call i32 @dw210x_op_rw(%struct.usb_device* %101, i32 160, i32 58880, i32 0, i32* %10, i32 1, i32 %102)
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %100, %97
  %106 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %111 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  switch i32 %114, label %185 [
    i32 128, label %115
    i32 131, label %117
    i32 130, label %121
    i32 129, label %125
    i32 132, label %125
    i32 8449, label %168
  ]

115:                                              ; preds = %109
  %116 = load i32, i32* @RC_MAP_TEVII_NEC, align 4
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dw2104_properties, i32 0, i32 0, i32 0, i32 0), align 4
  br label %117

117:                                              ; preds = %109, %115
  store i32 1, i32* %10, align 4
  %118 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %119 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %120 = call i32 @dw210x_op_rw(%struct.usb_device* %118, i32 196, i32 0, i32 0, i32* %10, i32 1, i32 %119)
  br label %121

121:                                              ; preds = %109, %117
  store i32 0, i32* %10, align 4
  %122 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %123 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %124 = call i32 @dw210x_op_rw(%struct.usb_device* %122, i32 191, i32 64, i32 0, i32* %10, i32 0, i32 %123)
  br label %185

125:                                              ; preds = %109, %109
  %126 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %127 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %128 = call i32 @dw210x_op_rw(%struct.usb_device* %126, i32 191, i32 64, i32 0, i32* %10, i32 0, i32 %127)
  %129 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %130 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %131 = load i32, i32* @DW210X_READ_MSG, align 4
  %132 = call i32 @dw210x_op_rw(%struct.usb_device* %129, i32 185, i32 0, i32 0, i32* %130, i32 2, i32 %131)
  %133 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %134 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %135 = load i32, i32* @DW210X_READ_MSG, align 4
  %136 = call i32 @dw210x_op_rw(%struct.usb_device* %133, i32 181, i32 0, i32 0, i32* %134, i32 2, i32 %135)
  %137 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %138 = load i32, i32* %137, align 16
  %139 = icmp eq i32 %138, 161
  br i1 %139, label %144, label %140

140:                                              ; preds = %125
  %141 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = icmp eq i32 %142, 128
  br i1 %143, label %144, label %150

144:                                              ; preds = %140, %125
  store i32* @dw2102_i2c_algo, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dw2102_properties, i32 0, i32 0), align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dw2102_properties, i32 0, i32 1), align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32* @dw2102_tuner_attach, i32** %149, align 8
  br label %185

150:                                              ; preds = %140
  %151 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  store i32 208, i32* %151, align 16
  %152 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 1
  store i32 1, i32* %152, align 4
  %153 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %153, align 8
  %154 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %155 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %156 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %157 = call i32 @dw210x_op_rw(%struct.usb_device* %154, i32 194, i32 0, i32 0, i32* %155, i32 3, i32 %156)
  %158 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %159 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %160 = load i32, i32* @DW210X_READ_MSG, align 4
  %161 = call i32 @dw210x_op_rw(%struct.usb_device* %158, i32 195, i32 209, i32 0, i32* %159, i32 3, i32 %160)
  %162 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 17
  br i1 %164, label %165, label %166

165:                                              ; preds = %150
  store i32* @dw2102_earda_i2c_algo, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dw2102_properties, i32 0, i32 0), align 8
  br label %185

166:                                              ; preds = %150
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %109, %167
  %169 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %170 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %171 = load i32, i32* @DW210X_READ_MSG, align 4
  %172 = call i32 @dw210x_op_rw(%struct.usb_device* %169, i32 188, i32 48, i32 0, i32* %170, i32 2, i32 %171)
  %173 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %174 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %175 = load i32, i32* @DW210X_READ_MSG, align 4
  %176 = call i32 @dw210x_op_rw(%struct.usb_device* %173, i32 186, i32 0, i32 0, i32* %174, i32 7, i32 %175)
  %177 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %178 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %179 = load i32, i32* @DW210X_READ_MSG, align 4
  %180 = call i32 @dw210x_op_rw(%struct.usb_device* %177, i32 186, i32 0, i32 0, i32* %178, i32 7, i32 %179)
  %181 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %182 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %183 = load i32, i32* @DW210X_READ_MSG, align 4
  %184 = call i32 @dw210x_op_rw(%struct.usb_device* %181, i32 185, i32 0, i32 0, i32* %182, i32 2, i32 %183)
  br label %185

185:                                              ; preds = %109, %168, %165, %144, %121
  %186 = call i32 @msleep(i32 100)
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @kfree(i32* %187)
  br label %189

189:                                              ; preds = %185, %36
  %190 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %191 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @le16_to_cpu(i32 %193)
  %195 = icmp eq i32 %194, 8449
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load %struct.firmware*, %struct.firmware** %12, align 8
  %198 = call i32 @release_firmware(%struct.firmware* %197)
  br label %199

199:                                              ; preds = %196, %189
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %26
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #2

declare dso_local i32 @err(i8*, ...) #2

declare dso_local i32 @info(i8*) #2

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @dw210x_op_rw(%struct.usb_device*, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
