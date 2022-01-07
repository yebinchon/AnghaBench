; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_receive_fwload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_receive_fwload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.if_usb_card* }
%struct.if_usb_card = type { i32, i64, i32, i64, i32, %struct.TYPE_4__*, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.fwsyncheader = type { i64, i32 }
%struct.bootcmdresp = type { i64, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"URB status is failed during fw load\0A\00", align 1
@IPFIELD_ALIGN_OFFSET = common dso_local global i64 0, align 8
@CMD_TYPE_INDICATION = common dso_local global i32 0, align 4
@MACREG_INT_CODE_FIRMWARE_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Firmware ready event received\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Waiting for confirmation; got %x %x\0A\00", align 1
@BOOT_CMD_RESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Received valid boot command response\0A\00", align 1
@BOOT_CMD_MAGIC_NUMBER = common dso_local global i32 0, align 4
@CMD_TYPE_REQUEST = common dso_local global i32 0, align 4
@CMD_TYPE_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Firmware already seems alive; resetting\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"boot cmd response wrong magic number (0x%x)\0A\00", align 1
@BOOT_CMD_FW_BY_USB = common dso_local global i64 0, align 8
@BOOT_CMD_UPDATE_FW = common dso_local global i64 0, align 8
@BOOT_CMD_UPDATE_BOOT2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"boot cmd response cmd_tag error (%d)\0A\00", align 1
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
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %20 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %19, i32 0, i32 5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @lbs_deb_usbd(i32* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  br label %261

26:                                               ; preds = %1
  %27 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %28 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IPFIELD_ALIGN_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = inttoptr i64 %36 to i64*
  store i64* %37, i64** %7, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @CMD_TYPE_INDICATION, align 4
  %42 = call i64 @cpu_to_le32(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %31
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @MACREG_INT_CODE_FIRMWARE_READY, align 4
  %49 = call i64 @cpu_to_le32(i32 %48)
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %54 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %53, i32 0, i32 6
  %55 = call i32 @wake_up(i32* %54)
  br label %68

56:                                               ; preds = %44, %31
  %57 = load i64*, i64** %7, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @le32_to_cpu(i64 %59)
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @le32_to_cpu(i64 %63)
  %65 = call i32 @lbs_deb_usb(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %60, i64 %64)
  %66 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %67 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %66)
  br label %68

68:                                               ; preds = %56, %51
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  br label %261

71:                                               ; preds = %26
  %72 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %73 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %187

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IPFIELD_ALIGN_OFFSET, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @memcpy(%struct.bootcmdresp* %6, i64 %81, i32 24)
  %83 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %84 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %83, i32 0, i32 5
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = icmp slt i32 %89, 12550
  br i1 %90, label %91, label %104

91:                                               ; preds = %76
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  %94 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %95 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %94)
  %96 = load i64, i64* @BOOT_CMD_RESP_OK, align 8
  %97 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %98 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %100 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %99, i32 0, i32 5
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = call i32 @lbs_deb_usbd(i32* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %261

104:                                              ; preds = %76
  %105 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @BOOT_CMD_MAGIC_NUMBER, align 4
  %108 = call i64 @cpu_to_le32(i32 %107)
  %109 = icmp ne i64 %106, %108
  br i1 %109, label %110, label %144

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @CMD_TYPE_REQUEST, align 4
  %114 = call i64 @cpu_to_le32(i32 %113)
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @CMD_TYPE_DATA, align 4
  %120 = call i64 @cpu_to_le32(i32 %119)
  %121 = icmp eq i64 %118, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @CMD_TYPE_INDICATION, align 4
  %126 = call i64 @cpu_to_le32(i32 %125)
  %127 = icmp eq i64 %124, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %122, %116, %110
  %129 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %130 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %128
  %136 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %137 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %136, i32 0, i32 1
  store i64 -1, i64* %137, align 8
  br label %143

138:                                              ; preds = %122
  %139 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @le32_to_cpu(i64 %140)
  %142 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %141)
  br label %143

143:                                              ; preds = %138, %135
  br label %182

144:                                              ; preds = %104
  %145 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @BOOT_CMD_FW_BY_USB, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @BOOT_CMD_UPDATE_FW, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @BOOT_CMD_UPDATE_BOOT2, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %161)
  br label %181

163:                                              ; preds = %154, %149, %144
  %164 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @BOOT_CMD_RESP_OK, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %170)
  br label %180

172:                                              ; preds = %163
  %173 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %174 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %173, i32 0, i32 1
  store i64 1, i64* %174, align 8
  %175 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %176 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %175, i32 0, i32 5
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = call i32 @lbs_deb_usbd(i32* %178, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %180

180:                                              ; preds = %172, %168
  br label %181

181:                                              ; preds = %180, %159
  br label %182

182:                                              ; preds = %181, %143
  %183 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %184 = call i32 @kfree_skb(%struct.sk_buff* %183)
  %185 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %186 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %185)
  br label %261

187:                                              ; preds = %71
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @IPFIELD_ALIGN_OFFSET, align 8
  %192 = add nsw i64 %190, %191
  %193 = load i32, i32* @GFP_ATOMIC, align 4
  %194 = call %struct.fwsyncheader* @kmemdup(i64 %192, i32 16, i32 %193)
  store %struct.fwsyncheader* %194, %struct.fwsyncheader** %5, align 8
  %195 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %196 = icmp ne %struct.fwsyncheader* %195, null
  br i1 %196, label %205, label %197

197:                                              ; preds = %187
  %198 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %199 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %198, i32 0, i32 5
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = call i32 @lbs_deb_usbd(i32* %201, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = call i32 @kfree_skb(%struct.sk_buff* %203)
  br label %261

205:                                              ; preds = %187
  %206 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %207 = getelementptr inbounds %struct.fwsyncheader, %struct.fwsyncheader* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %227, label %210

210:                                              ; preds = %205
  %211 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %212 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %211, i32 0, i32 5
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %214, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %216 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %217 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %216, i32 0, i32 5
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %221 = getelementptr inbounds %struct.fwsyncheader, %struct.fwsyncheader* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @le32_to_cpu(i64 %222)
  %224 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %223)
  %225 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %226 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %225, i32 0, i32 2
  store i32 1, i32* %226, align 8
  br label %235

227:                                              ; preds = %205
  %228 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %229 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %228, i32 0, i32 5
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = call i32 @lbs_deb_usbd(i32* %231, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %233 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %234 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %233, i32 0, i32 2
  store i32 0, i32* %234, align 8
  br label %235

235:                                              ; preds = %227, %210
  %236 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %237 = call i32 @kfree_skb(%struct.sk_buff* %236)
  %238 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %239 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %238, i32 0, i32 4
  %240 = load i64, i64* @jiffies, align 8
  %241 = load i32, i32* @HZ, align 4
  %242 = mul nsw i32 %241, 5
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %240, %243
  %245 = call i32 @mod_timer(i32* %239, i64 %244)
  %246 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %247 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %235
  %251 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %252 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %251, i32 0, i32 0
  store i32 1, i32* %252, align 8
  br label %256

253:                                              ; preds = %235
  %254 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %255 = call i32 @if_usb_send_fw_pkt(%struct.if_usb_card* %254)
  br label %256

256:                                              ; preds = %253, %250
  %257 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %258 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %257)
  %259 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %260 = call i32 @kfree(%struct.fwsyncheader* %259)
  br label %261

261:                                              ; preds = %256, %197, %182, %91, %68, %18
  ret void
}

declare dso_local i32 @lbs_deb_usbd(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @lbs_deb_usb(i8*, i64, i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card*) #1

declare dso_local i32 @memcpy(%struct.bootcmdresp*, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.fwsyncheader* @kmemdup(i64, i32, i32) #1

declare dso_local i32 @lbs_deb_usb2(i32*, i8*, ...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @if_usb_send_fw_pkt(%struct.if_usb_card*) #1

declare dso_local i32 @kfree(%struct.fwsyncheader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
