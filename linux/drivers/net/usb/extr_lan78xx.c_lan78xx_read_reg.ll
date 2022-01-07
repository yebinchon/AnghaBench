; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_VENDOR_REQUEST_READ_REGISTER = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to read register index 0x%08x. ret = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, i32, i32*)* @lan78xx_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_read_reg(%struct.lan78xx_net* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lan78xx_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kmalloc(i32 4, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %19 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %22 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_rcvctrlpipe(i32 %23, i32 0)
  %25 = load i32, i32* @USB_VENDOR_REQUEST_READ_REGISTER, align 4
  %26 = load i32, i32* @USB_DIR_IN, align 4
  %27 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %34 = call i32 @usb_control_msg(i32 %20, i32 %24, i32 %25, i32 %30, i32 0, i32 %31, i32* %32, i32 4, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %17
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @le32_to_cpus(i32* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %53

46:                                               ; preds = %17
  %47 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %48 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @netdev_warn(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
