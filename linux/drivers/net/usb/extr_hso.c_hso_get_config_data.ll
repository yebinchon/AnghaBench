; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_get_config_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_get_config_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HSO_PORT_DIAG = common dso_local global i32 0, align 4
@HSO_PORT_GPS = common dso_local global i32 0, align 4
@HSO_PORT_GPS_CONTROL = common dso_local global i32 0, align 4
@HSO_PORT_APP = common dso_local global i32 0, align 4
@HSO_PORT_APP2 = common dso_local global i32 0, align 4
@HSO_PORT_CONTROL = common dso_local global i32 0, align 4
@HSO_PORT_NETWORK = common dso_local global i32 0, align 4
@HSO_PORT_MODEM = common dso_local global i32 0, align 4
@HSO_PORT_MSD = common dso_local global i32 0, align 4
@HSO_PORT_PCSC = common dso_local global i32 0, align 4
@HSO_PORT_VOICE = common dso_local global i32 0, align 4
@HSO_INTF_BULK = common dso_local global i32 0, align 4
@HSO_INFO_CRC_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @hso_get_config_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_get_config_data(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %8)
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kmalloc(i32 17, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %95

23:                                               ; preds = %1
  %24 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %25, i32 0)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %29 = call i32 @usb_control_msg(%struct.usb_device* %24, i32 %26, i32 134, i32 192, i32 0, i32 0, i32* %27, i32 17, i32 %28)
  %30 = icmp ne i32 %29, 17
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %95

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 16
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %95

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %73 [
    i32 0, label %50
    i32 1, label %51
    i32 2, label %53
    i32 3, label %55
    i32 4, label %57
    i32 5, label %59
    i32 6, label %61
    i32 7, label %63
    i32 8, label %65
    i32 9, label %67
    i32 10, label %69
    i32 11, label %71
  ]

50:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %74

51:                                               ; preds = %44
  %52 = load i32, i32* @HSO_PORT_DIAG, align 4
  store i32 %52, i32* %7, align 4
  br label %74

53:                                               ; preds = %44
  %54 = load i32, i32* @HSO_PORT_GPS, align 4
  store i32 %54, i32* %7, align 4
  br label %74

55:                                               ; preds = %44
  %56 = load i32, i32* @HSO_PORT_GPS_CONTROL, align 4
  store i32 %56, i32* %7, align 4
  br label %74

57:                                               ; preds = %44
  %58 = load i32, i32* @HSO_PORT_APP, align 4
  store i32 %58, i32* %7, align 4
  br label %74

59:                                               ; preds = %44
  %60 = load i32, i32* @HSO_PORT_APP2, align 4
  store i32 %60, i32* %7, align 4
  br label %74

61:                                               ; preds = %44
  %62 = load i32, i32* @HSO_PORT_CONTROL, align 4
  store i32 %62, i32* %7, align 4
  br label %74

63:                                               ; preds = %44
  %64 = load i32, i32* @HSO_PORT_NETWORK, align 4
  store i32 %64, i32* %7, align 4
  br label %74

65:                                               ; preds = %44
  %66 = load i32, i32* @HSO_PORT_MODEM, align 4
  store i32 %66, i32* %7, align 4
  br label %74

67:                                               ; preds = %44
  %68 = load i32, i32* @HSO_PORT_MSD, align 4
  store i32 %68, i32* %7, align 4
  br label %74

69:                                               ; preds = %44
  %70 = load i32, i32* @HSO_PORT_PCSC, align 4
  store i32 %70, i32* %7, align 4
  br label %74

71:                                               ; preds = %44
  %72 = load i32, i32* @HSO_PORT_VOICE, align 4
  store i32 %72, i32* %7, align 4
  br label %74

73:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %50
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @HSO_INTF_BULK, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 16
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* @HSO_INFO_CRC_BUG, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %87, %81
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @kfree(i32* %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %39, %31, %20
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
