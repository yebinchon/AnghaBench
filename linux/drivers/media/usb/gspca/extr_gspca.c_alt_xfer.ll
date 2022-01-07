; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_alt_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_alt_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.usb_host_interface = type { %struct.usb_host_endpoint*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_host_endpoint* (%struct.usb_host_interface*, i32, i32)* @alt_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_host_endpoint* @alt_xfer(%struct.usb_host_interface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_host_interface* %0, %struct.usb_host_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %58, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %14 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %11
  %19 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %20 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %19, i32 0, i32 0
  %21 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %21, i64 %23
  store %struct.usb_host_endpoint* %24, %struct.usb_host_endpoint** %8, align 8
  %25 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %26 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %18
  %35 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %36 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %42 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %41, i32 0, i32 0
  %43 = call i64 @usb_endpoint_dir_in(%struct.TYPE_4__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %50 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %45
  %56 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  store %struct.usb_host_endpoint* %56, %struct.usb_host_endpoint** %4, align 8
  br label %62

57:                                               ; preds = %48, %40, %34, %18
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %11

61:                                               ; preds = %11
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %4, align 8
  br label %62

62:                                               ; preds = %61, %55
  %63 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  ret %struct.usb_host_endpoint* %63
}

declare dso_local i64 @usb_endpoint_dir_in(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
