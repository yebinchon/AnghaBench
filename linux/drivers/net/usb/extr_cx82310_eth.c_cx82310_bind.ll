; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cx82310_eth.c_cx82310_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cx82310_eth.c_cx82310_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i64, %struct.TYPE_4__*, i64, %struct.usb_device* }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.usb_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"USB NET CARD\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ignoring: probably an ADSL modem\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CX82310_MTU = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_GET_LINK_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"firmware not ready in time\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CMD_ETHERNET_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"unable to enable ethernet mode: %d\0A\00", align 1
@CMD_GET_MAC_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to read MAC address: %d\0A\00", align 1
@CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @cx82310_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx82310_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [15 x i8], align 1
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 4
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %8, align 8
  store i32 50, i32* %10, align 4
  %14 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %20 = call i64 @usb_string(%struct.usb_device* %14, i32 %18, i8* %19, i32 15)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %140

32:                                               ; preds = %22, %2
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %35 = call i32 @usbnet_get_endpoints(%struct.usbnet* %33, %struct.usb_interface* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %140

40:                                               ; preds = %32
  %41 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* @CX82310_MTU, align 8
  %46 = add nsw i64 %45, 2
  %47 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %48 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  store i32 4096, i32* %50, align 8
  %51 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i64 @kmalloc(i64 %53, i32 %54)
  %56 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %57 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %59 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %40
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %140

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %86, %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %72 = load i32, i32* @CMD_GET_LINK_STATUS, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %74 = call i32 @cx82310_cmd(%struct.usbnet* %71, i32 %72, i32 1, i8* null, i32 0, i32* %73, i32 12)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %88

86:                                               ; preds = %81, %77, %70
  %87 = call i32 @msleep(i32 500)
  br label %66

88:                                               ; preds = %85, %66
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %93 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %92, i32 0, i32 0
  %94 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @ETIMEDOUT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %133

97:                                               ; preds = %88
  %98 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %99 = load i32, i32* @CMD_ETHERNET_MODE, align 4
  %100 = call i32 @cx82310_cmd(%struct.usbnet* %98, i32 %99, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i32* null, i32 0)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %105 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %104, i32 0, i32 0
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %133

108:                                              ; preds = %97
  %109 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %110 = load i32, i32* @CMD_GET_MAC_ADDR, align 4
  %111 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %112 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @ETH_ALEN, align 4
  %117 = call i32 @cx82310_cmd(%struct.usbnet* %109, i32 %110, i32 1, i8* null, i32 0, i32* %115, i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %108
  %121 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %122 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %121, i32 0, i32 0
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %133

125:                                              ; preds = %108
  %126 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %127 = load i32, i32* @CMD_START, align 4
  %128 = call i32 @cx82310_cmd(%struct.usbnet* %126, i32 %127, i32 0, i8* null, i32 0, i32* null, i32 0)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %133

132:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %140

133:                                              ; preds = %131, %120, %103, %91
  %134 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %135 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 @kfree(i8* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %133, %132, %62, %38, %26
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i64 @usb_string(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @cx82310_cmd(%struct.usbnet*, i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
