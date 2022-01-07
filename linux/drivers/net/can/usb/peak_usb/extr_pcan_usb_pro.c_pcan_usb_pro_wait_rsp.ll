; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_wait_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_wait_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, i32, i32 }
%struct.pcan_usb_pro_msg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i64* }
%union.pcan_usb_pro_rec = type { i64 }
%struct.TYPE_4__ = type { i32 }

@PCAN_USB_STATE_CONNECTED = common dso_local global i32 0, align 4
@PCAN_USBPRO_RSP_SUBMIT_MAX = common dso_local global i32 0, align 4
@PCAN_USBPRO_EP_CMDIN = common dso_local global i32 0, align 4
@PCAN_USBPRO_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"waiting rsp error %d\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@PCAN_USBPRO_MSG_HEADER_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"got abnormal too small rsp (len=%d)\0A\00", align 1
@pcan_usb_pro_sizeof_rec = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"got unprocessed record in msg\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rcvd rsp msg\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"got unwanted rsp %xh: ignored\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"got rsp %xh but on chan%u: ignored\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.pcan_usb_pro_msg*)* @pcan_usb_pro_wait_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_pro_wait_rsp(%struct.peak_usb_device* %0, %struct.pcan_usb_pro_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peak_usb_device*, align 8
  %5 = alloca %struct.pcan_usb_pro_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcan_usb_pro_msg, align 8
  %12 = alloca %union.pcan_usb_pro_rec*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %4, align 8
  store %struct.pcan_usb_pro_msg* %1, %struct.pcan_usb_pro_msg** %5, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCAN_USB_STATE_CONNECTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %190

24:                                               ; preds = %2
  %25 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %26 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %32 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %38 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  store i64 0, i64* %40, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %176, %24
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @PCAN_USBPRO_RSP_SUBMIT_MAX, align 4
  %47 = icmp slt i32 %45, %46
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %179

50:                                               ; preds = %48
  %51 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %52 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %55 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PCAN_USBPRO_EP_CMDIN, align 4
  %58 = call i32 @usb_rcvbulkpipe(i32 %56, i32 %57)
  %59 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %60 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %64 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PCAN_USBPRO_COMMAND_TIMEOUT, align 4
  %67 = call i32 @usb_bulk_msg(i32 %53, i32 %58, i32* %62, i32 %65, i32* %8, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %50
  %71 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %72 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (i32, i8*, ...) @netdev_err(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %179

76:                                               ; preds = %50
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %176

80:                                               ; preds = %76
  %81 = load i32, i32* @EBADMSG, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @PCAN_USBPRO_MSG_HEADER_LEN, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %88 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i32, i8*, ...) @netdev_err(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %179

92:                                               ; preds = %80
  %93 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %94 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32* @pcan_msg_init(%struct.pcan_usb_pro_msg* %11, i32* %96, i32 %97)
  store i32* %98, i32** %16, align 8
  %99 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %11, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @le32_to_cpu(i64 %102)
  store i64 %103, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %104

104:                                              ; preds = %172, %92
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %14, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %175

108:                                              ; preds = %104
  %109 = load i32*, i32** %16, align 8
  %110 = bitcast i32* %109 to %union.pcan_usb_pro_rec*
  store %union.pcan_usb_pro_rec* %110, %union.pcan_usb_pro_rec** %12, align 8
  %111 = load i32*, i32** @pcan_usb_pro_sizeof_rec, align 8
  %112 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %12, align 8
  %113 = bitcast %union.pcan_usb_pro_rec* %112 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %108
  %120 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %121 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @netdev_err(i32 %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %125 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @pcan_dump_mem(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %127, i32 %128)
  br label %175

130:                                              ; preds = %108
  %131 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %12, align 8
  %132 = bitcast %union.pcan_usb_pro_rec* %131 to i64*
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ne i64 %133, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %139 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %12, align 8
  %142 = bitcast %union.pcan_usb_pro_rec* %141 to i64*
  %143 = load i64, i64* %142, align 8
  %144 = call i32 (i32, i8*, ...) @netdev_err(i32 %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %143)
  br label %167

145:                                              ; preds = %130
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 255
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %12, align 8
  %150 = bitcast %union.pcan_usb_pro_rec* %149 to %struct.TYPE_4__*
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %148
  %156 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %157 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %12, align 8
  %161 = bitcast %union.pcan_usb_pro_rec* %160 to %struct.TYPE_4__*
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, ...) @netdev_err(i32 %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %159, i32 %163)
  br label %166

165:                                              ; preds = %148, %145
  store i32 0, i32* %3, align 4
  br label %190

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %166, %137
  %168 = load i32, i32* %15, align 4
  %169 = load i32*, i32** %16, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %16, align 8
  br label %172

172:                                              ; preds = %167
  %173 = load i64, i64* %13, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %13, align 8
  br label %104

175:                                              ; preds = %119, %104
  br label %176

176:                                              ; preds = %175, %79
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %41

179:                                              ; preds = %86, %70, %48
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @PCAN_USBPRO_RSP_SUBMIT_MAX, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* @ERANGE, align 4
  %185 = sub nsw i32 0, %184
  br label %188

186:                                              ; preds = %179
  %187 = load i32, i32* %10, align 4
  br label %188

188:                                              ; preds = %186, %183
  %189 = phi i32 [ %185, %183 ], [ %187, %186 ]
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %165, %23
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32* @pcan_msg_init(%struct.pcan_usb_pro_msg*, i32*, i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @pcan_dump_mem(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
