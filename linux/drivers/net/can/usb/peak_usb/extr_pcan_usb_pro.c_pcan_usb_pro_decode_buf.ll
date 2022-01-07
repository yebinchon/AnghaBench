; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_decode_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_decode_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.urb = type { i32, i32* }
%struct.pcan_usb_pro_interface = type { i32 }
%struct.pcan_usb_pro_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%union.pcan_usb_pro_rec = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"bad msg hdr len %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pcan_usb_pro_sizeof_rec = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"got unsupported rec in usb msg:\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"got frag rec: should inc usb rx buf size\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"unhandled rec type 0x%02x (%d): ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"received msg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.urb*)* @pcan_usb_pro_decode_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_pro_decode_buf(%struct.peak_usb_device* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peak_usb_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.pcan_usb_pro_interface*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.pcan_usb_pro_msg, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.pcan_usb_pro_rec*, align 8
  %14 = alloca i64, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %15 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %16 = call %struct.pcan_usb_pro_interface* @pcan_usb_pro_dev_if(%struct.peak_usb_device* %15)
  store %struct.pcan_usb_pro_interface* %16, %struct.pcan_usb_pro_interface** %6, align 8
  %17 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %7, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.urb*, %struct.urb** %5, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @pcan_msg_init(%struct.pcan_usb_pro_msg* %8, i32* %22, i32 %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %138

37:                                               ; preds = %2
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.urb*, %struct.urb** %5, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32* %45, i32** %10, align 8
  %46 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %8, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le16_to_cpu(i32 %49)
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %121, %37
  %52 = load i64, i64* %11, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %124

54:                                               ; preds = %51
  %55 = load i32*, i32** %9, align 8
  %56 = bitcast i32* %55 to %union.pcan_usb_pro_rec*
  store %union.pcan_usb_pro_rec* %56, %union.pcan_usb_pro_rec** %13, align 8
  %57 = load i64*, i64** @pcan_usb_pro_sizeof_rec, align 8
  %58 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %13, align 8
  %59 = bitcast %union.pcan_usb_pro_rec* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %54
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @ENOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %124

70:                                               ; preds = %54
  %71 = load i32*, i32** %9, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ugt i32* %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @EBADMSG, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %124

81:                                               ; preds = %70
  %82 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %13, align 8
  %83 = bitcast %union.pcan_usb_pro_rec* %82 to i64*
  %84 = load i64, i64* %83, align 8
  switch i64 %84, label %108 [
    i64 131, label %85
    i64 132, label %85
    i64 133, label %85
    i64 130, label %85
    i64 129, label %94
    i64 128, label %103
  ]

85:                                               ; preds = %81, %81, %81, %81
  %86 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %6, align 8
  %87 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %13, align 8
  %88 = bitcast %union.pcan_usb_pro_rec* %87 to i32*
  %89 = call i32 @pcan_usb_pro_handle_canmsg(%struct.pcan_usb_pro_interface* %86, i32* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %125

93:                                               ; preds = %85
  br label %117

94:                                               ; preds = %81
  %95 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %6, align 8
  %96 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %13, align 8
  %97 = bitcast %union.pcan_usb_pro_rec* %96 to i32*
  %98 = call i32 @pcan_usb_pro_handle_error(%struct.pcan_usb_pro_interface* %95, i32* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %125

102:                                              ; preds = %94
  br label %117

103:                                              ; preds = %81
  %104 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %6, align 8
  %105 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %13, align 8
  %106 = bitcast %union.pcan_usb_pro_rec* %105 to i32*
  %107 = call i32 @pcan_usb_pro_handle_ts(%struct.pcan_usb_pro_interface* %104, i32* %106)
  br label %117

108:                                              ; preds = %81
  %109 = load %struct.net_device*, %struct.net_device** %7, align 8
  %110 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %13, align 8
  %111 = bitcast %union.pcan_usb_pro_rec* %110 to i64*
  %112 = load i64, i64* %111, align 8
  %113 = load %union.pcan_usb_pro_rec*, %union.pcan_usb_pro_rec** %13, align 8
  %114 = bitcast %union.pcan_usb_pro_rec* %113 to i64*
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %112, i64 %115)
  br label %117

117:                                              ; preds = %108, %103, %102, %93
  %118 = load i64, i64* %14, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 %118
  store i32* %120, i32** %9, align 8
  br label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %11, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %11, align 8
  br label %51

124:                                              ; preds = %76, %65, %51
  br label %125

125:                                              ; preds = %124, %101, %92
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load %struct.urb*, %struct.urb** %5, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.urb*, %struct.urb** %5, align 8
  %133 = getelementptr inbounds %struct.urb, %struct.urb* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @pcan_dump_mem(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %131, i32 %134)
  br label %136

136:                                              ; preds = %128, %125
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %29
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.pcan_usb_pro_interface* @pcan_usb_pro_dev_if(%struct.peak_usb_device*) #1

declare dso_local i32* @pcan_msg_init(%struct.pcan_usb_pro_msg*, i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @pcan_usb_pro_handle_canmsg(%struct.pcan_usb_pro_interface*, i32*) #1

declare dso_local i32 @pcan_usb_pro_handle_error(%struct.pcan_usb_pro_interface*, i32*) #1

declare dso_local i32 @pcan_usb_pro_handle_ts(%struct.pcan_usb_pro_interface*, i32*) #1

declare dso_local i32 @pcan_dump_mem(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
