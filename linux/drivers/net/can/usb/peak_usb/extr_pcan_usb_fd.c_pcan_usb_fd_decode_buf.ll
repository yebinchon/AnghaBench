; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_decode_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_decode_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.urb = type { i32, i32* }
%struct.pcan_usb_fd_if = type { i32 }
%struct.pucan_msg = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"got frag rec: should inc usb rx buf sze\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unhandled msg type 0x%02x (%d): ignored\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"received msg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.urb*)* @pcan_usb_fd_decode_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_decode_buf(%struct.peak_usb_device* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.pcan_usb_fd_if*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.pucan_msg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %13 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %14 = call %struct.pcan_usb_fd_if* @pcan_usb_fd_dev_if(%struct.peak_usb_device* %13)
  store %struct.pcan_usb_fd_if* %14, %struct.pcan_usb_fd_if** %5, align 8
  %15 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %16 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.urb*, %struct.urb** %4, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32* %28, i32** %9, align 8
  br label %29

29:                                               ; preds = %104, %2
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ult i32* %30, %31
  br i1 %32, label %33, label %109

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = bitcast i32* %34 to %struct.pucan_msg*
  store %struct.pucan_msg* %35, %struct.pucan_msg** %7, align 8
  %36 = load %struct.pucan_msg*, %struct.pucan_msg** %7, align 8
  %37 = getelementptr inbounds %struct.pucan_msg, %struct.pucan_msg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %109

41:                                               ; preds = %33
  %42 = load %struct.pucan_msg*, %struct.pucan_msg** %7, align 8
  %43 = getelementptr inbounds %struct.pucan_msg, %struct.pucan_msg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.pucan_msg*, %struct.pucan_msg** %7, align 8
  %47 = getelementptr inbounds %struct.pucan_msg, %struct.pucan_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ugt i32* %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EBADMSG, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %109

61:                                               ; preds = %41
  %62 = load i32, i32* %11, align 4
  switch i32 %62, label %99 [
    i32 130, label %63
    i32 132, label %71
    i32 129, label %75
    i32 128, label %83
    i32 131, label %91
  ]

63:                                               ; preds = %61
  %64 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %5, align 8
  %65 = load %struct.pucan_msg*, %struct.pucan_msg** %7, align 8
  %66 = call i32 @pcan_usb_fd_decode_canmsg(%struct.pcan_usb_fd_if* %64, %struct.pucan_msg* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %110

70:                                               ; preds = %63
  br label %104

71:                                               ; preds = %61
  %72 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %5, align 8
  %73 = load %struct.pucan_msg*, %struct.pucan_msg** %7, align 8
  %74 = call i32 @pcan_usb_fd_decode_ts(%struct.pcan_usb_fd_if* %72, %struct.pucan_msg* %73)
  br label %104

75:                                               ; preds = %61
  %76 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %5, align 8
  %77 = load %struct.pucan_msg*, %struct.pucan_msg** %7, align 8
  %78 = call i32 @pcan_usb_fd_decode_error(%struct.pcan_usb_fd_if* %76, %struct.pucan_msg* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %110

82:                                               ; preds = %75
  br label %104

83:                                               ; preds = %61
  %84 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %5, align 8
  %85 = load %struct.pucan_msg*, %struct.pucan_msg** %7, align 8
  %86 = call i32 @pcan_usb_fd_decode_status(%struct.pcan_usb_fd_if* %84, %struct.pucan_msg* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %110

90:                                               ; preds = %83
  br label %104

91:                                               ; preds = %61
  %92 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %5, align 8
  %93 = load %struct.pucan_msg*, %struct.pucan_msg** %7, align 8
  %94 = call i32 @pcan_usb_fd_decode_overrun(%struct.pcan_usb_fd_if* %92, %struct.pucan_msg* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %110

98:                                               ; preds = %91
  br label %104

99:                                               ; preds = %61
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %98, %90, %82, %71, %70
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %8, align 8
  br label %29

109:                                              ; preds = %56, %40, %29
  br label %110

110:                                              ; preds = %109, %97, %89, %81, %69
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load %struct.urb*, %struct.urb** %4, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.urb*, %struct.urb** %4, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @pcan_dump_mem(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %116, i32 %119)
  br label %121

121:                                              ; preds = %113, %110
  %122 = load i32, i32* %10, align 4
  ret i32 %122
}

declare dso_local %struct.pcan_usb_fd_if* @pcan_usb_fd_dev_if(%struct.peak_usb_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @pcan_usb_fd_decode_canmsg(%struct.pcan_usb_fd_if*, %struct.pucan_msg*) #1

declare dso_local i32 @pcan_usb_fd_decode_ts(%struct.pcan_usb_fd_if*, %struct.pucan_msg*) #1

declare dso_local i32 @pcan_usb_fd_decode_error(%struct.pcan_usb_fd_if*, %struct.pucan_msg*) #1

declare dso_local i32 @pcan_usb_fd_decode_status(%struct.pcan_usb_fd_if*, %struct.pucan_msg*) #1

declare dso_local i32 @pcan_usb_fd_decode_overrun(%struct.pcan_usb_fd_if*, %struct.pucan_msg*) #1

declare dso_local i32 @pcan_dump_mem(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
