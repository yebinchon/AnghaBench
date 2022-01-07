; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-notif.c_i2400mu_notification_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-notif.c_i2400mu_notification_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@I2400MU_MAX_NOTIFICATION_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2400mu_notification_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"notification: cannot submit URB: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"(i2400m %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400mu_notification_setup(%struct.i2400mu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2400mu*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i8*, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %3, align 8
  %9 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %10 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %15 = call i32 @d_fnstart(i32 4, %struct.device* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400mu* %14)
  %16 = load i32, i32* @I2400MU_MAX_NOTIFICATION_LEN, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @GFP_DMA, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @kmalloc(i32 %16, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %94

26:                                               ; preds = %1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @usb_alloc_urb(i32 0, i32 %27)
  %29 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %30 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %32 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %91

38:                                               ; preds = %26
  %39 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %40 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %43 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.usb_endpoint_descriptor* @usb_get_epd(%struct.TYPE_4__* %41, i32 %45)
  store %struct.usb_endpoint_descriptor* %46, %struct.usb_endpoint_descriptor** %7, align 8
  %47 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %48 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %51 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @usb_rcvintpipe(i32 %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %55 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %58 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @I2400MU_MAX_NOTIFICATION_LEN, align 4
  %63 = load i32, i32* @i2400mu_notification_cb, align 4
  %64 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %65 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %66 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usb_fill_int_urb(i32 %56, i32 %59, i32 %60, i8* %61, i32 %62, i32 %63, %struct.i2400mu* %64, i32 %67)
  %69 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %70 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @usb_submit_urb(i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %38
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %86

80:                                               ; preds = %38
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @d_fnend(i32 4, %struct.device* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.i2400mu* %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %100

86:                                               ; preds = %76
  %87 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %88 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @usb_free_urb(i32 %89)
  br label %91

91:                                               ; preds = %86, %35
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @kfree(i8* %92)
  br label %94

94:                                               ; preds = %91, %23
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @d_fnend(i32 4, %struct.device* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.i2400mu* %96, i32 %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %94, %80
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400mu*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.usb_endpoint_descriptor* @usb_get_epd(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i8*, i32, i32, %struct.i2400mu*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400mu*, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
