; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.firmware = type { i32* }
%struct.state = type { i32*, i32, i64 }
%struct.usb_req = type { i32, i32*, i32, i32*, i32, i32, i32 }

@CMD_FW_QUERYINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EEPROM_2ND_DEMOD_ADDR = common dso_local global i64 0, align 8
@CMD_FW_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"firmware version=%d.%d.%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.firmware*)* @af9035_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_download_firmware(%struct.dvb_usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_req, align 8
  %13 = alloca %struct.usb_req, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  store %struct.usb_interface* %16, %struct.usb_interface** %6, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = call %struct.state* @d_to_priv(%struct.dvb_usb_device* %17)
  store %struct.state* %18, %struct.state** %7, align 8
  %19 = bitcast %struct.usb_req* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 48, i1 false)
  %20 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 0
  %21 = load i32, i32* @CMD_FW_QUERYINFO, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 3
  %25 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 4
  store i32 4, i32* %26, align 8
  %27 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 5
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %29 = ptrtoint i32* %28 to i32
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 6
  store i32 0, i32* %30, align 8
  %31 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.state*, %struct.state** %7, align 8
  %35 = getelementptr inbounds %struct.state, %struct.state* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %106

38:                                               ; preds = %2
  %39 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %40 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %39, i32 55472, i32 1, i32 1)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %174

44:                                               ; preds = %38
  %45 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %46 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %45, i32 55473, i32 1, i32 1)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %174

50:                                               ; preds = %44
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %52 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %51, i32 55471, i32 0, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %174

56:                                               ; preds = %50
  %57 = call i32 @usleep_range(i32 10000, i32 50000)
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %59 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %58, i32 55471, i32 1, i32 1)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %174

63:                                               ; preds = %56
  %64 = load %struct.state*, %struct.state** %7, align 8
  %65 = getelementptr inbounds %struct.state, %struct.state* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @EEPROM_2ND_DEMOD_ADDR, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  store i32 58, i32* %11, align 4
  br label %73

73:                                               ; preds = %72, %63
  %74 = load %struct.state*, %struct.state** %7, align 8
  %75 = getelementptr inbounds %struct.state, %struct.state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 37173
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.state*, %struct.state** %7, align 8
  %80 = getelementptr inbounds %struct.state, %struct.state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 37638
  br i1 %82, label %83, label %91

83:                                               ; preds = %78, %73
  %84 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %84, i32 19451, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %174

90:                                               ; preds = %83
  br label %105

91:                                               ; preds = %78
  %92 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %92, i32 16767, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %174

98:                                               ; preds = %91
  %99 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %100 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %99, i32 55322, i32 1, i32 1)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %174

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %90
  br label %106

106:                                              ; preds = %105, %2
  %107 = load %struct.firmware*, %struct.firmware** %5, align 8
  %108 = getelementptr inbounds %struct.firmware, %struct.firmware* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %115 = load %struct.firmware*, %struct.firmware** %5, align 8
  %116 = call i32 @af9035_download_firmware_old(%struct.dvb_usb_device* %114, %struct.firmware* %115)
  store i32 %116, i32* %8, align 4
  br label %121

117:                                              ; preds = %106
  %118 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %119 = load %struct.firmware*, %struct.firmware** %5, align 8
  %120 = call i32 @af9035_download_firmware_new(%struct.dvb_usb_device* %118, %struct.firmware* %119)
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %174

125:                                              ; preds = %121
  %126 = load i32, i32* @CMD_FW_BOOT, align 4
  %127 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %12, i32 0, i32 4
  store i32 %126, i32* %127, align 8
  %128 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %129 = call i32 @af9035_ctrl_msg(%struct.dvb_usb_device* %128, %struct.usb_req* %12)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %174

133:                                              ; preds = %125
  %134 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 1, i32* %134, align 4
  %135 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %136 = call i32 @af9035_ctrl_msg(%struct.dvb_usb_device* %135, %struct.usb_req* %13)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %174

140:                                              ; preds = %133
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %162, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %158 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %157, i32 0, i32 0
  %159 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* @ENODEV, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %8, align 4
  br label %174

162:                                              ; preds = %152, %148, %144, %140
  %163 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %164 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %163, i32 0, i32 0
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %166 = load i32, i32* %165, align 16
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @dev_info(i32* %164, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %168, i32 %170, i32 %172)
  store i32 0, i32* %3, align 4
  br label %180

174:                                              ; preds = %156, %139, %132, %124, %103, %97, %89, %62, %55, %49, %43
  %175 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %176 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %175, i32 0, i32 0
  %177 = load i32, i32* %8, align 4
  %178 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %174, %162
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.state* @d_to_priv(%struct.dvb_usb_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @af9035_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @af9035_wr_reg(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @af9035_download_firmware_old(%struct.dvb_usb_device*, %struct.firmware*) #1

declare dso_local i32 @af9035_download_firmware_new(%struct.dvb_usb_device*, %struct.firmware*) #1

declare dso_local i32 @af9035_ctrl_msg(%struct.dvb_usb_device*, %struct.usb_req*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
