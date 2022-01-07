; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c___mt76u_vendor_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c___mt76u_vendor_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, i32 }
%struct.usb_device = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@MT_VEND_REQ_MAX_RETRY = common dso_local global i32 0, align 4
@MT76_REMOVED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MT_VEND_REQ_TOUT_MS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"vendor request req:%02x off:%04x failed:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, i32, i32, i32, i32, i8*, i64)* @__mt76u_vendor_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt76u_vendor_request(%struct.mt76_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt76_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.usb_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.mt76_dev*, %struct.mt76_dev** %9, align 8
  %21 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.usb_device* @to_usb_device(i32 %22)
  store %struct.usb_device* %23, %struct.usb_device** %16, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @USB_DIR_IN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %30 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %29, i32 0)
  br label %34

31:                                               ; preds = %7
  %32 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %33 = call i32 @usb_sndctrlpipe(%struct.usb_device* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  store i32 %35, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %81, %34
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @MT_VEND_REQ_MAX_RETRY, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  %41 = load i32, i32* @MT76_REMOVED, align 4
  %42 = load %struct.mt76_dev*, %struct.mt76_dev** %9, align 8
  %43 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %42, i32 0, i32 1
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %93

49:                                               ; preds = %40
  %50 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i32, i32* @MT_VEND_REQ_TOUT_MS, align 4
  %59 = call i32 @usb_control_msg(%struct.usb_device* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i8* %56, i64 %57, i32 %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load i32, i32* @MT76_REMOVED, align 4
  %66 = load %struct.mt76_dev*, %struct.mt76_dev** %9, align 8
  %67 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %66, i32 0, i32 1
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %64, %49
  %70 = load i32, i32* %19, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %19, align 4
  store i32 %78, i32* %8, align 4
  br label %93

79:                                               ; preds = %72
  %80 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %18, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %18, align 4
  br label %36

84:                                               ; preds = %36
  %85 = load %struct.mt76_dev*, %struct.mt76_dev** %9, align 8
  %86 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %84, %77, %46
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local %struct.usb_device* @to_usb_device(i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
