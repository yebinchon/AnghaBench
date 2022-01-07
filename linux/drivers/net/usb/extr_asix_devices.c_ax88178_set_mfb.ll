; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88178_set_mfb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88178_set_mfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AX_RX_CTL_MFB_16384 = common dso_local global i32 0, align 4
@AX_RX_CTL_MFB_2048 = common dso_local global i32 0, align 4
@AX_RX_CTL_MFB_4096 = common dso_local global i32 0, align 4
@AX_RX_CTL_MFB_8192 = common dso_local global i32 0, align 4
@AX_MEDIUM_JFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @ax88178_set_mfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax88178_set_mfb(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %7 = load i32, i32* @AX_RX_CTL_MFB_16384, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 2048
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 0
  store i32 2048, i32* %17, align 8
  %18 = load i32, i32* @AX_RX_CTL_MFB_2048, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %1
  %20 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 4096
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  store i32 4096, i32* %26, align 8
  %27 = load i32, i32* @AX_RX_CTL_MFB_4096, align 4
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %19
  %29 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %30 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 8192
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 0
  store i32 8192, i32* %35, align 8
  %36 = load i32, i32* @AX_RX_CTL_MFB_8192, align 4
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %28
  %38 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %39 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 16384
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  store i32 16384, i32* %44, align 8
  %45 = load i32, i32* @AX_RX_CTL_MFB_16384, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %24
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %51 = call i32 @asix_read_rx_ctl(%struct.usbnet* %50, i32 0)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @AX_RX_CTL_MFB_16384, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @asix_write_rx_ctl(%struct.usbnet* %52, i32 %58, i32 0)
  %60 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %61 = call i32 @asix_read_medium_status(%struct.usbnet* %60, i32 0)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %63 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 1500
  br i1 %67, label %68, label %72

68:                                               ; preds = %49
  %69 = load i32, i32* @AX_MEDIUM_JFE, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %77

72:                                               ; preds = %49
  %73 = load i32, i32* @AX_MEDIUM_JFE, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %68
  %78 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @asix_write_medium_mode(%struct.usbnet* %78, i32 %79, i32 0)
  %81 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %82 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %88 = call i32 @usbnet_unlink_rx_urbs(%struct.usbnet* %87)
  br label %89

89:                                               ; preds = %86, %77
  ret void
}

declare dso_local i32 @asix_read_rx_ctl(%struct.usbnet*, i32) #1

declare dso_local i32 @asix_write_rx_ctl(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @asix_read_medium_status(%struct.usbnet*, i32) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @usbnet_unlink_rx_urbs(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
