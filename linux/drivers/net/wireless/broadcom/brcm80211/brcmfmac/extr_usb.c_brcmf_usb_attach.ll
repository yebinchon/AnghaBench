; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev = type { i32, i32, i32, i32, %struct.brcmf_usbdev_info* }
%struct.brcmf_usbdev_info = type { i32, i32, i32, i32, i32, %struct.brcmf_usbdev, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMFMAC_USB_STATE_DOWN = common dso_local global i32 0, align 4
@BRCMF_USB_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_usbdev* (%struct.brcmf_usbdev_info*, i32, i32)* @brcmf_usb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_usbdev* @brcmf_usb_attach(%struct.brcmf_usbdev_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_usbdev*, align 8
  %5 = alloca %struct.brcmf_usbdev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @USB, align 4
  %9 = call i32 @brcmf_dbg(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 2
  %16 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %17 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %19 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %20, i32 0, i32 4
  store %struct.brcmf_usbdev_info* %18, %struct.brcmf_usbdev_info** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %24 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @BRCMFMAC_USB_STATE_DOWN, align 4
  %27 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %28 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 4
  %32 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %33 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %35 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 3
  %38 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %39 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @BRCMF_USB_MAX_PKT_SIZE, align 4
  %41 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %42 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.brcmf_usbdev, %struct.brcmf_usbdev* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %45 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %44, i32 0, i32 16
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %48 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %47, i32 0, i32 15
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %51 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %50, i32 0, i32 14
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %54 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %53, i32 0, i32 11
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %57 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %56, i32 0, i32 13
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %60 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %59, i32 0, i32 9
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %63 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %62, i32 0, i32 12
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %66 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %65, i32 0, i32 3
  store i32 0, i32* %66, align 4
  %67 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %68 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %67, i32 0, i32 11
  %69 = load i32, i32* %6, align 4
  %70 = call i8* @brcmf_usbdev_qinit(i32* %68, i32 %69)
  %71 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %72 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %71, i32 0, i32 10
  store i8* %70, i8** %72, align 8
  %73 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %74 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %73, i32 0, i32 10
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %3
  br label %116

78:                                               ; preds = %3
  %79 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %80 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %79, i32 0, i32 9
  %81 = load i32, i32* %7, align 4
  %82 = call i8* @brcmf_usbdev_qinit(i32* %80, i32 %81)
  %83 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %84 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %86 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %85, i32 0, i32 8
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  br label %116

90:                                               ; preds = %78
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %93 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @GFP_ATOMIC, align 4
  %95 = call i8* @usb_alloc_urb(i32 0, i32 %94)
  %96 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %97 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  %98 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %99 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %98, i32 0, i32 7
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  br label %116

103:                                              ; preds = %90
  %104 = load i32, i32* @GFP_ATOMIC, align 4
  %105 = call i8* @usb_alloc_urb(i32 0, i32 %104)
  %106 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %107 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %109 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %108, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %103
  br label %116

113:                                              ; preds = %103
  %114 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %115 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %114, i32 0, i32 5
  store %struct.brcmf_usbdev* %115, %struct.brcmf_usbdev** %4, align 8
  br label %120

116:                                              ; preds = %112, %102, %89, %77
  %117 = call i32 @brcmf_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %119 = call i32 @brcmf_usb_detach(%struct.brcmf_usbdev_info* %118)
  store %struct.brcmf_usbdev* null, %struct.brcmf_usbdev** %4, align 8
  br label %120

120:                                              ; preds = %116, %113
  %121 = load %struct.brcmf_usbdev*, %struct.brcmf_usbdev** %4, align 8
  ret %struct.brcmf_usbdev* %121
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @brcmf_usbdev_qinit(i32*, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @brcmf_usb_detach(%struct.brcmf_usbdev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
