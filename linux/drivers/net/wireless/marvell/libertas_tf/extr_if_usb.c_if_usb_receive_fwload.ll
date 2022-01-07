; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_receive_fwload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_receive_fwload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.if_usb_card* }
%struct.if_usb_card = type { i32, i64, i32, i64, i32, %struct.TYPE_4__*, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.fwsyncheader = type { i64, i32 }
%struct.bootcmdresp = type { i64, i64, i64 }

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"URB status is failed during fw load\0A\00", align 1
@CMD_TYPE_INDICATION = common dso_local global i32 0, align 4
@MACREG_INT_CODE_FIRMWARE_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Firmware ready event received\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Waiting for confirmation; got %x %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Received valid boot command response\0A\00", align 1
@BOOT_CMD_MAGIC_NUMBER = common dso_local global i32 0, align 4
@CMD_TYPE_REQUEST = common dso_local global i32 0, align 4
@CMD_TYPE_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Firmware already seems alive; resetting\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"boot cmd response wrong magic number (0x%x)\0A\00", align 1
@BOOT_CMD_FW_BY_USB = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"boot cmd response cmd_tag error (%d)\0A\00", align 1
@BOOT_CMD_RESP_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"boot cmd response result error (%d)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Failure to allocate syncfwheader\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"FW received Blk with correct CRC\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"FW received Blk seqnum = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"FW received Blk with CRC error\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @if_usb_receive_fwload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_receive_fwload(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fwsyncheader*, align 8
  %6 = alloca %struct.bootcmdresp, align 8
  %7 = alloca i64*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  store %struct.if_usb_card* %10, %struct.if_usb_card** %3, align 8
  %11 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %12 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %11, i32 0, i32 7
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* @LBTF_DEB_USB, align 4
  %15 = call i32 @lbtf_deb_enter(i32 %14)
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %22 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %21, i32 0, i32 5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @lbtf_deb_usbd(i32* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @kfree_skb(%struct.sk_buff* %26)
  %28 = load i32, i32* @LBTF_DEB_USB, align 4
  %29 = call i32 @lbtf_deb_leave(i32 %28)
  br label %258

30:                                               ; preds = %1
  %31 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %32 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i64*
  store i64* %39, i64** %7, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @CMD_TYPE_INDICATION, align 4
  %44 = call i64 @cpu_to_le32(i32 %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @MACREG_INT_CODE_FIRMWARE_READY, align 4
  %51 = call i64 @cpu_to_le32(i32 %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %56 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %55, i32 0, i32 6
  %57 = call i32 @wake_up(i32* %56)
  br label %70

58:                                               ; preds = %46, %35
  %59 = load i64*, i64** %7, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @le32_to_cpu(i64 %61)
  %63 = load i64*, i64** %7, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @le32_to_cpu(i64 %65)
  %67 = call i32 @lbtf_deb_usb(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %62, i64 %66)
  %68 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %69 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %68)
  br label %70

70:                                               ; preds = %58, %53
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  %73 = load i32, i32* @LBTF_DEB_USB, align 4
  %74 = call i32 @lbtf_deb_leave(i32 %73)
  br label %258

75:                                               ; preds = %30
  %76 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %77 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %182

80:                                               ; preds = %75
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @memcpy(%struct.bootcmdresp* %6, i64 %83, i32 24)
  %85 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %86 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %85, i32 0, i32 5
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = icmp slt i32 %91, 12550
  br i1 %92, label %93, label %107

93:                                               ; preds = %80
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call i32 @kfree_skb(%struct.sk_buff* %94)
  %96 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %97 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %96)
  %98 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %99 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %98, i32 0, i32 1
  store i64 1, i64* %99, align 8
  %100 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %101 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %100, i32 0, i32 5
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @lbtf_deb_usbd(i32* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @LBTF_DEB_USB, align 4
  %106 = call i32 @lbtf_deb_leave(i32 %105)
  br label %258

107:                                              ; preds = %80
  %108 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @BOOT_CMD_MAGIC_NUMBER, align 4
  %111 = call i64 @cpu_to_le32(i32 %110)
  %112 = icmp ne i64 %109, %111
  br i1 %112, label %113, label %147

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @CMD_TYPE_REQUEST, align 4
  %117 = call i64 @cpu_to_le32(i32 %116)
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %131, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @CMD_TYPE_DATA, align 4
  %123 = call i64 @cpu_to_le32(i32 %122)
  %124 = icmp eq i64 %121, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @CMD_TYPE_INDICATION, align 4
  %129 = call i64 @cpu_to_le32(i32 %128)
  %130 = icmp eq i64 %127, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %125, %119, %113
  %132 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %133 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  %139 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %140 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %139, i32 0, i32 1
  store i64 -1, i64* %140, align 8
  br label %146

141:                                              ; preds = %125
  %142 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @le32_to_cpu(i64 %143)
  %145 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %141, %138
  br label %175

147:                                              ; preds = %107
  %148 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @BOOT_CMD_FW_BY_USB, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %154)
  br label %174

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @BOOT_CMD_RESP_OK, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %163)
  br label %173

165:                                              ; preds = %156
  %166 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %167 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %166, i32 0, i32 1
  store i64 1, i64* %167, align 8
  %168 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %169 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %168, i32 0, i32 5
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = call i32 @lbtf_deb_usbd(i32* %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %173

173:                                              ; preds = %165, %161
  br label %174

174:                                              ; preds = %173, %152
  br label %175

175:                                              ; preds = %174, %146
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = call i32 @kfree_skb(%struct.sk_buff* %176)
  %178 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %179 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %178)
  %180 = load i32, i32* @LBTF_DEB_USB, align 4
  %181 = call i32 @lbtf_deb_leave(i32 %180)
  br label %258

182:                                              ; preds = %75
  %183 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %184 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @GFP_ATOMIC, align 4
  %187 = call %struct.fwsyncheader* @kmemdup(i64 %185, i32 16, i32 %186)
  store %struct.fwsyncheader* %187, %struct.fwsyncheader** %5, align 8
  %188 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %189 = icmp ne %struct.fwsyncheader* %188, null
  br i1 %189, label %200, label %190

190:                                              ; preds = %182
  %191 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %192 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %191, i32 0, i32 5
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = call i32 @lbtf_deb_usbd(i32* %194, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = call i32 @kfree_skb(%struct.sk_buff* %196)
  %198 = load i32, i32* @LBTF_DEB_USB, align 4
  %199 = call i32 @lbtf_deb_leave(i32 %198)
  br label %258

200:                                              ; preds = %182
  %201 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %202 = getelementptr inbounds %struct.fwsyncheader, %struct.fwsyncheader* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %222, label %205

205:                                              ; preds = %200
  %206 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %207 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %206, i32 0, i32 5
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %209, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %211 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %212 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %211, i32 0, i32 5
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %216 = getelementptr inbounds %struct.fwsyncheader, %struct.fwsyncheader* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @le32_to_cpu(i64 %217)
  %219 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %218)
  %220 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %221 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %220, i32 0, i32 2
  store i32 1, i32* %221, align 8
  br label %230

222:                                              ; preds = %200
  %223 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %224 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %223, i32 0, i32 5
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = call i32 @lbtf_deb_usbd(i32* %226, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %228 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %229 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %228, i32 0, i32 2
  store i32 0, i32* %229, align 8
  br label %230

230:                                              ; preds = %222, %205
  %231 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %232 = call i32 @kfree_skb(%struct.sk_buff* %231)
  %233 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %234 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %233, i32 0, i32 4
  %235 = load i64, i64* @jiffies, align 8
  %236 = load i32, i32* @HZ, align 4
  %237 = sdiv i32 %236, 5
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %235, %238
  %240 = call i32 @mod_timer(i32* %234, i64 %239)
  %241 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %242 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %230
  %246 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %247 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %246, i32 0, i32 0
  store i32 1, i32* %247, align 8
  br label %251

248:                                              ; preds = %230
  %249 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %250 = call i32 @if_usb_send_fw_pkt(%struct.if_usb_card* %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %253 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %252)
  %254 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %255 = call i32 @kfree(%struct.fwsyncheader* %254)
  %256 = load i32, i32* @LBTF_DEB_USB, align 4
  %257 = call i32 @lbtf_deb_leave(i32 %256)
  br label %258

258:                                              ; preds = %251, %190, %175, %93, %70, %20
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @lbtf_deb_usb(i8*, i64, i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card*) #1

declare dso_local i32 @memcpy(%struct.bootcmdresp*, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.fwsyncheader* @kmemdup(i64, i32, i32) #1

declare dso_local i32 @lbtf_deb_usb2(i32*, i8*, ...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @if_usb_send_fw_pkt(%struct.if_usb_card*) #1

declare dso_local i32 @kfree(%struct.fwsyncheader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
