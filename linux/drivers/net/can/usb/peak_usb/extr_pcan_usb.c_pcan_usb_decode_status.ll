; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_decode_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_decode_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_msg_context = type { i32*, i32*, i32, i32 }

@PCAN_USB_STATUSLEN_DLC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCAN_USB_CMD_FUNC = common dso_local global i64 0, align 8
@PCAN_USB_CMD_NUM = common dso_local global i64 0, align 8
@PCAN_USB_CMD_ARGS = common dso_local global i32 0, align 4
@PCAN_USB_STATUSLEN_TIMESTAMP = common dso_local global i32 0, align 4
@PCAN_USB_ERROR_TXQFULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"device Tx queue full)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unexpected function %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcan_usb_msg_context*, i32)* @pcan_usb_decode_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_decode_status(%struct.pcan_usb_msg_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcan_usb_msg_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcan_usb_msg_context* %0, %struct.pcan_usb_msg_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PCAN_USB_STATUSLEN_DLC, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %15 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %19 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ugt i32* %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %126

25:                                               ; preds = %2
  %26 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %27 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @PCAN_USB_CMD_FUNC, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %33 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @PCAN_USB_CMD_NUM, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @PCAN_USB_CMD_ARGS, align 4
  %39 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %40 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = sext i32 %38 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %40, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PCAN_USB_STATUSLEN_TIMESTAMP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %25
  %49 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %50 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %51 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @pcan_usb_decode_ts(%struct.pcan_usb_msg_context* %49, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %126

61:                                               ; preds = %48
  %62 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %63 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %25
  %67 = load i32, i32* %7, align 4
  switch i32 %67, label %99 [
    i32 129, label %68
    i32 132, label %78
    i32 130, label %79
    i32 128, label %80
    i32 131, label %88
  ]

68:                                               ; preds = %66
  %69 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @pcan_usb_decode_error(%struct.pcan_usb_msg_context* %69, i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %126

77:                                               ; preds = %68
  br label %105

78:                                               ; preds = %66
  store i32 2, i32* %6, align 4
  br label %105

79:                                               ; preds = %66
  store i32 1, i32* %6, align 4
  br label %105

80:                                               ; preds = %66
  %81 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %82 = call i32 @pcan_usb_update_ts(%struct.pcan_usb_msg_context* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %126

87:                                               ; preds = %80
  br label %105

88:                                               ; preds = %66
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @PCAN_USB_ERROR_TXQFULL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %95 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @netdev_dbg(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %88
  br label %105

99:                                               ; preds = %66
  %100 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %101 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @netdev_err(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %98, %87, %79, %78, %77
  %106 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %107 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %113 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ugt i32* %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %126

119:                                              ; preds = %105
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %122 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = sext i32 %120 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %122, align 8
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %119, %116, %84, %75, %59, %22
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @pcan_usb_decode_ts(%struct.pcan_usb_msg_context*, i32) #1

declare dso_local i32 @pcan_usb_decode_error(%struct.pcan_usb_msg_context*, i32, i32) #1

declare dso_local i32 @pcan_usb_update_ts(%struct.pcan_usb_msg_context*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
