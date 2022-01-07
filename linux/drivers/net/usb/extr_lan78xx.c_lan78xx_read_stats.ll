; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_read_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_read_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, i32 }
%struct.lan78xx_statstage = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_VENDOR_REQUEST_GET_STATS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read stat ret = 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, %struct.lan78xx_statstage*)* @lan78xx_read_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_read_stats(%struct.lan78xx_net* %0, %struct.lan78xx_statstage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan78xx_net*, align 8
  %5 = alloca %struct.lan78xx_statstage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lan78xx_statstage*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %4, align 8
  store %struct.lan78xx_statstage* %1, %struct.lan78xx_statstage** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lan78xx_statstage* @kmalloc(i32 4, i32 %11)
  store %struct.lan78xx_statstage* %12, %struct.lan78xx_statstage** %8, align 8
  %13 = load %struct.lan78xx_statstage*, %struct.lan78xx_statstage** %8, align 8
  %14 = icmp ne %struct.lan78xx_statstage* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %20 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %23 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_rcvctrlpipe(i32 %24, i32 0)
  %26 = load i32, i32* @USB_VENDOR_REQUEST_GET_STATS, align 4
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.lan78xx_statstage*, %struct.lan78xx_statstage** %8, align 8
  %33 = bitcast %struct.lan78xx_statstage* %32 to i8*
  %34 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %35 = call i32 @usb_control_msg(i32 %21, i32 %25, i32 %26, i32 %31, i32 0, i32 0, i8* %33, i32 4, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %18
  %42 = load %struct.lan78xx_statstage*, %struct.lan78xx_statstage** %8, align 8
  %43 = bitcast %struct.lan78xx_statstage* %42 to i32*
  store i32* %43, i32** %9, align 8
  %44 = load %struct.lan78xx_statstage*, %struct.lan78xx_statstage** %5, align 8
  %45 = bitcast %struct.lan78xx_statstage* %44 to i32*
  store i32* %45, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %65, %41
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 1
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @le32_to_cpus(i32* %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %46

68:                                               ; preds = %46
  br label %75

69:                                               ; preds = %18
  %70 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %71 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @netdev_warn(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %68
  %76 = load %struct.lan78xx_statstage*, %struct.lan78xx_statstage** %8, align 8
  %77 = call i32 @kfree(%struct.lan78xx_statstage* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.lan78xx_statstage* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.lan78xx_statstage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
