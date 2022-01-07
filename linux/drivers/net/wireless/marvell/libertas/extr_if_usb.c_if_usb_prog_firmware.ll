; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_prog_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_prog_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, %struct.if_usb_card* }
%struct.if_usb_card = type { i64, i32, i32, %struct.firmware*, %struct.TYPE_4__*, i64, i32, i32, i64, i32, i64, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32, i32 }

@if_usb_prog_firmware.reset_count = internal global i32 10, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to find firmware (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"URB submission is failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BOOT_CMD_FW_BY_USB = common dso_local global i32 0, align 4
@BOOT_CMD_RESP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to load fw, resetting device!\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"FW download failure, time = %d ms\0A\00", align 1
@EHS_REMOVE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i32, %struct.firmware*, %struct.firmware*)* @if_usb_prog_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_prog_firmware(%struct.lbs_private* %0, i32 %1, %struct.firmware* %2, %struct.firmware* %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.if_usb_card*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.firmware* %2, %struct.firmware** %7, align 8
  store %struct.firmware* %3, %struct.firmware** %8, align 8
  %12 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 2
  %14 = load %struct.if_usb_card*, %struct.if_usb_card** %13, align 8
  store %struct.if_usb_card* %14, %struct.if_usb_card** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %229

20:                                               ; preds = %4
  %21 = load %struct.firmware*, %struct.firmware** %7, align 8
  %22 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %23 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %22, i32 0, i32 3
  store %struct.firmware* %21, %struct.firmware** %23, align 8
  %24 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %25 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %24, i32 0, i32 3
  %26 = load %struct.firmware*, %struct.firmware** %25, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %30 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %29, i32 0, i32 3
  %31 = load %struct.firmware*, %struct.firmware** %30, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @check_fwfile_format(i32 %28, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %229

39:                                               ; preds = %20
  %40 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %41 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @usb_kill_urb(i32 %42)
  %44 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %45 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @usb_kill_urb(i32 %46)
  %48 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %49 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %48, i32 0, i32 12
  store i64 0, i64* %49, align 8
  %50 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %51 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %53 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %52, i32 0, i32 11
  store i64 0, i64* %53, align 8
  %54 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %55 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %54, i32 0, i32 10
  store i64 0, i64* %55, align 8
  %56 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %57 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %193, %137, %39
  %59 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %60 = call i64 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %64 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %63, i32 0, i32 14
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @lbs_deb_usbd(i32* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %229

70:                                               ; preds = %58
  %71 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %72 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %102, %70
  store i32 0, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %77 = load i32, i32* @BOOT_CMD_FW_BY_USB, align 4
  %78 = call i32 @if_usb_issue_boot_command(%struct.if_usb_card* %76, i32 %77)
  br label %79

79:                                               ; preds = %91, %73
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = call i32 @msleep_interruptible(i32 100)
  br label %83

83:                                               ; preds = %79
  %84 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %85 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 10
  br label %91

91:                                               ; preds = %88, %83
  %92 = phi i1 [ false, %83 ], [ %90, %88 ]
  br i1 %92, label %79, label %93

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %96 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 5
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi i1 [ false, %94 ], [ %101, %99 ]
  br i1 %103, label %73, label %104

104:                                              ; preds = %102
  %105 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %106 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @BOOT_CMD_RESP_NOT_SUPPORTED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %104
  %111 = load i32, i32* @EOPNOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  %113 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %114 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @usb_kill_urb(i32 %115)
  %117 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %118 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %117, i32 0, i32 13
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @usb_kill_urb(i32 %119)
  %121 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %122 = call i64 @if_usb_submit_rx_urb(%struct.if_usb_card* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %110
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %124, %110
  br label %229

128:                                              ; preds = %104
  %129 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %130 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sle i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, i32* @if_usb_prog_firmware.reset_count, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* @if_usb_prog_firmware.reset_count, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %139 = call i32 @if_usb_reset_device(%struct.if_usb_card* %138)
  br label %58

140:                                              ; preds = %133
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  br label %229

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143
  store i32 0, i32* %10, align 4
  %145 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %146 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %145, i32 0, i32 11
  store i64 0, i64* %146, align 8
  %147 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %148 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %147, i32 0, i32 12
  store i64 0, i64* %148, align 8
  %149 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %150 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %149, i32 0, i32 1
  store i32 1, i32* %150, align 8
  %151 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %152 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %151, i32 0, i32 5
  store i64 0, i64* %152, align 8
  %153 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %154 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %153, i32 0, i32 2
  store i32 -1, i32* %154, align 4
  %155 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %156 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %155, i32 0, i32 11
  store i64 0, i64* %156, align 8
  %157 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %158 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %157, i32 0, i32 10
  store i64 0, i64* %158, align 8
  %159 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %160 = call i32 @if_usb_send_fw_pkt(%struct.if_usb_card* %159)
  %161 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %162 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %165 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %144
  %169 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %170 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br label %173

173:                                              ; preds = %168, %144
  %174 = phi i1 [ true, %144 ], [ %172, %168 ]
  %175 = zext i1 %174 to i32
  %176 = call i32 @wait_event_interruptible(i32 %163, i32 %175)
  %177 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %178 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %177, i32 0, i32 7
  %179 = call i32 @del_timer_sync(i32* %178)
  %180 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %181 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @usb_kill_urb(i32 %182)
  %184 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %185 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %173
  %189 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %190 = load i32, i32* @if_usb_prog_firmware.reset_count, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* @if_usb_prog_firmware.reset_count, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %195 = call i32 @if_usb_reset_device(%struct.if_usb_card* %194)
  br label %58

196:                                              ; preds = %188
  %197 = load i32, i32* %10, align 4
  %198 = mul nsw i32 %197, 100
  %199 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* @EIO, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %6, align 4
  br label %229

202:                                              ; preds = %173
  %203 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %204 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %203, i32 0, i32 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  store i32 1, i32* %206, align 4
  %207 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %208 = call i64 @if_usb_submit_rx_urb(%struct.if_usb_card* %207)
  %209 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %210 = call i64 @lbs_start_card(%struct.lbs_private* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  br label %229

213:                                              ; preds = %202
  %214 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %215 = call i32 @if_usb_setup_firmware(%struct.lbs_private* %214)
  %216 = load i32, i32* @EHS_REMOVE_WAKEUP, align 4
  %217 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %218 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %220 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %221 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @lbs_host_sleep_cfg(%struct.lbs_private* %219, i32 %222, i32* null)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %213
  %226 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %227 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %226, i32 0, i32 0
  store i32 0, i32* %227, align 8
  br label %228

228:                                              ; preds = %225, %213
  br label %229

229:                                              ; preds = %228, %212, %196, %140, %127, %62, %36, %17
  %230 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %231 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %230, i32 0, i32 3
  store %struct.firmware* null, %struct.firmware** %231, align 8
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @check_fwfile_format(i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i64 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card*) #1

declare dso_local i32 @lbs_deb_usbd(i32*, i8*) #1

declare dso_local i32 @if_usb_issue_boot_command(%struct.if_usb_card*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @if_usb_submit_rx_urb(%struct.if_usb_card*) #1

declare dso_local i32 @if_usb_reset_device(%struct.if_usb_card*) #1

declare dso_local i32 @if_usb_send_fw_pkt(%struct.if_usb_card*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @lbs_start_card(%struct.lbs_private*) #1

declare dso_local i32 @if_usb_setup_firmware(%struct.lbs_private*) #1

declare dso_local i64 @lbs_host_sleep_cfg(%struct.lbs_private*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
