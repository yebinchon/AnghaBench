; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32, i64* }
%struct.smsc95xx_priv = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"resume suspend_flags=0x%02x\0A\00", align 1
@CARRIER_CHECK_DELAY = common dso_local global i32 0, align 4
@SUSPEND_ALLMODES = common dso_local global i32 0, align 4
@WUCSR = common dso_local global i32 0, align 4
@WUCSR_WAKE_EN_ = common dso_local global i32 0, align 4
@WUCSR_MPEN_ = common dso_local global i32 0, align 4
@PM_CTRL = common dso_local global i32 0, align 4
@PM_CTL_WOL_EN_ = common dso_local global i32 0, align 4
@PM_CTL_WUPS_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"usbnet_resume error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @smsc95xx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.smsc95xx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.usbnet* %10, %struct.usbnet** %4, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %12 = icmp ne %struct.usbnet* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %21, %struct.smsc95xx_priv** %5, align 8
  %22 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %5, align 8
  %23 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @netdev_dbg(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %5, align 8
  %31 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %5, align 8
  %33 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %32, i32 0, i32 1
  %34 = load i32, i32* @CARRIER_CHECK_DELAY, align 4
  %35 = call i32 @schedule_delayed_work(i32* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SUSPEND_ALLMODES, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %1
  %41 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %42 = load i32, i32* @WUCSR, align 4
  %43 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %41, i32 %42, i32* %8)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %100

48:                                               ; preds = %40
  %49 = load i32, i32* @WUCSR_WAKE_EN_, align 4
  %50 = load i32, i32* @WUCSR_MPEN_, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %56 = load i32, i32* @WUCSR, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %55, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %100

63:                                               ; preds = %48
  %64 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %65 = load i32, i32* @PM_CTRL, align 4
  %66 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %64, i32 %65, i32* %8)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %100

71:                                               ; preds = %63
  %72 = load i32, i32* @PM_CTL_WOL_EN_, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @PM_CTL_WUPS_, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %80 = load i32, i32* @PM_CTRL, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %79, i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %100

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %1
  %89 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %90 = call i32 @usbnet_resume(%struct.usb_interface* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %95 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @netdev_warn(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %85, %69, %61, %46
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @smsc95xx_read_reg_nopm(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @smsc95xx_write_reg_nopm(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @usbnet_resume(%struct.usb_interface*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
