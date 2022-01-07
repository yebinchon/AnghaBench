; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_prog_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_prog_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i64, %struct.if_usb_card* }
%struct.if_usb_card = type { i64, i32, i32, %struct.lbtf_private*, %struct.TYPE_5__*, i64, i32, i32, i32, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@if_usb_prog_firmware.reset_count = internal global i32 10, align 4
@LBTF_DEB_USB = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@lbtf_fw_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"request_firmware() failed with %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"firmware %s not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"URB submission is failed\0A\00", align 1
@BOOT_CMD_FW_BY_USB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to load fw, resetting device!\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"FW download failure, time = %d ms\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbtf_private*)* @if_usb_prog_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_prog_firmware(%struct.lbtf_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lbtf_private*, align 8
  %4 = alloca %struct.if_usb_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %3, align 8
  %8 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %9 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %8, i32 0, i32 1
  %10 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  store %struct.if_usb_card* %10, %struct.if_usb_card** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @LBTF_DEB_USB, align 4
  %12 = call i32 @lbtf_deb_enter(i32 %11)
  %13 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %14 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %15 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %14, i32 0, i32 3
  store %struct.lbtf_private* %13, %struct.lbtf_private** %15, align 8
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = call i32 @kernel_param_lock(i32 %16)
  %18 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %19 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %18, i32 0, i32 4
  %20 = load i32, i32* @lbtf_fw_name, align 4
  %21 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %22 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %21, i32 0, i32 12
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @request_firmware(%struct.TYPE_5__** %19, i32 %20, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @lbtf_fw_name, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = call i32 @kernel_param_unlock(i32 %33)
  br label %179

35:                                               ; preds = %1
  %36 = load i32, i32* @THIS_MODULE, align 4
  %37 = call i32 @kernel_param_unlock(i32 %36)
  %38 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %39 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %44 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @check_fwfile_format(i32 %42, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %168

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %160, %105, %51
  %53 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %54 = call i64 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %58 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %57, i32 0, i32 12
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @lbtf_deb_usbd(i32* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %168

62:                                               ; preds = %52
  %63 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %64 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %94, %62
  store i32 0, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %69 = load i32, i32* @BOOT_CMD_FW_BY_USB, align 4
  %70 = call i32 @if_usb_issue_boot_command(%struct.if_usb_card* %68, i32 %69)
  br label %71

71:                                               ; preds = %83, %65
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = call i32 @msleep_interruptible(i32 100)
  br label %75

75:                                               ; preds = %71
  %76 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %77 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 10
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i1 [ false, %75 ], [ %82, %80 ]
  br i1 %84, label %71, label %85

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %88 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 5
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi i1 [ false, %86 ], [ %93, %91 ]
  br i1 %95, label %65, label %96

96:                                               ; preds = %94
  %97 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %98 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i32, i32* @if_usb_prog_firmware.reset_count, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* @if_usb_prog_firmware.reset_count, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %107 = call i32 @if_usb_reset_device(%struct.lbtf_private* %106)
  br label %52

108:                                              ; preds = %101
  store i32 -1, i32* %2, align 4
  br label %184

109:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  %110 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %111 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %110, i32 0, i32 10
  store i64 0, i64* %111, align 8
  %112 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %113 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %112, i32 0, i32 11
  store i64 0, i64* %113, align 8
  %114 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %115 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %114, i32 0, i32 1
  store i32 1, i32* %115, align 8
  %116 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %117 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %116, i32 0, i32 5
  store i64 0, i64* %117, align 8
  %118 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %119 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %118, i32 0, i32 2
  store i32 -1, i32* %119, align 4
  %120 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %121 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %120, i32 0, i32 10
  store i64 0, i64* %121, align 8
  %122 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %123 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %122, i32 0, i32 9
  store i64 0, i64* %123, align 8
  %124 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %125 = call i32 @if_usb_send_fw_pkt(%struct.if_usb_card* %124)
  %126 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %127 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %130 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %129, i32 0, i32 3
  %131 = load %struct.lbtf_private*, %struct.lbtf_private** %130, align 8
  %132 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %109
  %136 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %137 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br label %140

140:                                              ; preds = %135, %109
  %141 = phi i1 [ true, %109 ], [ %139, %135 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @wait_event_interruptible(i32 %128, i32 %142)
  %144 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %145 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %144, i32 0, i32 7
  %146 = call i32 @del_timer_sync(i32* %145)
  %147 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %148 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @usb_kill_urb(i32 %149)
  %151 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %152 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %140
  %156 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %157 = load i32, i32* @if_usb_prog_firmware.reset_count, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* @if_usb_prog_firmware.reset_count, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %162 = call i32 @if_usb_reset_device(%struct.lbtf_private* %161)
  br label %52

163:                                              ; preds = %155
  %164 = load i32, i32* %5, align 4
  %165 = mul nsw i32 %164, 100
  %166 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  store i32 -1, i32* %6, align 4
  br label %168

167:                                              ; preds = %140
  br label %168

168:                                              ; preds = %167, %163, %56, %50
  %169 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %170 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %169, i32 0, i32 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = call i32 @release_firmware(%struct.TYPE_5__* %171)
  %173 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %174 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %173, i32 0, i32 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %174, align 8
  %175 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %176 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %175, i32 0, i32 3
  %177 = load %struct.lbtf_private*, %struct.lbtf_private** %176, align 8
  %178 = call i32 @if_usb_setup_firmware(%struct.lbtf_private* %177)
  br label %179

179:                                              ; preds = %168, %28
  %180 = load i32, i32* @LBTF_DEB_USB, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @lbtf_deb_leave_args(i32 %180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %179, %108
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @kernel_param_lock(i32) #1

declare dso_local i32 @request_firmware(%struct.TYPE_5__**, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kernel_param_unlock(i32) #1

declare dso_local i64 @check_fwfile_format(i32, i32) #1

declare dso_local i64 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card*) #1

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*) #1

declare dso_local i32 @if_usb_issue_boot_command(%struct.if_usb_card*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @if_usb_reset_device(%struct.lbtf_private*) #1

declare dso_local i32 @if_usb_send_fw_pkt(%struct.if_usb_card*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.TYPE_5__*) #1

declare dso_local i32 @if_usb_setup_firmware(%struct.lbtf_private*) #1

declare dso_local i32 @lbtf_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
