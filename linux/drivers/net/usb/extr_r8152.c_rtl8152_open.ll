; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8152 = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.r8152.0*)* }
%struct.r8152.0 = type opaque

@WORK_ENABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"intr_urb submit failed: %d\0A\00", align 1
@rtl_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl8152_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8152*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r8152* @netdev_priv(%struct.net_device* %6)
  store %struct.r8152* %7, %struct.r8152** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.r8152*, %struct.r8152** %4, align 8
  %9 = call i32 @alloc_all_mem(%struct.r8152* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %88

13:                                               ; preds = %1
  %14 = load %struct.r8152*, %struct.r8152** %4, align 8
  %15 = getelementptr inbounds %struct.r8152, %struct.r8152* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_autopm_get_interface(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %85

21:                                               ; preds = %13
  %22 = load %struct.r8152*, %struct.r8152** %4, align 8
  %23 = getelementptr inbounds %struct.r8152, %struct.r8152* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.r8152*, %struct.r8152** %4, align 8
  %26 = getelementptr inbounds %struct.r8152, %struct.r8152* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.r8152.0*)*, i32 (%struct.r8152.0*)** %27, align 8
  %29 = load %struct.r8152*, %struct.r8152** %4, align 8
  %30 = bitcast %struct.r8152* %29 to %struct.r8152.0*
  %31 = call i32 %28(%struct.r8152.0* %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @netif_carrier_off(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @netif_start_queue(%struct.net_device* %34)
  %36 = load i32, i32* @WORK_ENABLE, align 4
  %37 = load %struct.r8152*, %struct.r8152** %4, align 8
  %38 = getelementptr inbounds %struct.r8152, %struct.r8152* %37, i32 0, i32 7
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load %struct.r8152*, %struct.r8152** %4, align 8
  %41 = getelementptr inbounds %struct.r8152, %struct.r8152* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @usb_submit_urb(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %21
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.r8152*, %struct.r8152** %4, align 8
  %54 = getelementptr inbounds %struct.r8152, %struct.r8152* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netif_device_detach(i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.r8152*, %struct.r8152** %4, align 8
  %59 = load i32, i32* @ifup, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @netif_warn(%struct.r8152* %58, i32 %59, %struct.net_device* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %77

63:                                               ; preds = %21
  %64 = load %struct.r8152*, %struct.r8152** %4, align 8
  %65 = getelementptr inbounds %struct.r8152, %struct.r8152* %64, i32 0, i32 4
  %66 = call i32 @napi_enable(i32* %65)
  %67 = load %struct.r8152*, %struct.r8152** %4, align 8
  %68 = getelementptr inbounds %struct.r8152, %struct.r8152* %67, i32 0, i32 3
  %69 = call i32 @tasklet_enable(i32* %68)
  %70 = load %struct.r8152*, %struct.r8152** %4, align 8
  %71 = getelementptr inbounds %struct.r8152, %struct.r8152* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.r8152*, %struct.r8152** %4, align 8
  %74 = getelementptr inbounds %struct.r8152, %struct.r8152* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @usb_autopm_put_interface(i32 %75)
  store i32 0, i32* %2, align 4
  br label %90

77:                                               ; preds = %57
  %78 = load %struct.r8152*, %struct.r8152** %4, align 8
  %79 = getelementptr inbounds %struct.r8152, %struct.r8152* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.r8152*, %struct.r8152** %4, align 8
  %82 = getelementptr inbounds %struct.r8152, %struct.r8152* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @usb_autopm_put_interface(i32 %83)
  br label %85

85:                                               ; preds = %77, %20
  %86 = load %struct.r8152*, %struct.r8152** %4, align 8
  %87 = call i32 @free_all_mem(%struct.r8152* %86)
  br label %88

88:                                               ; preds = %85, %12
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %63
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @alloc_all_mem(%struct.r8152*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @netif_warn(%struct.r8152*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @free_all_mem(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
