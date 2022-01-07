; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_init_and_get_ethernet_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_init_and_get_ethernet_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@kalmia_init_and_get_ethernet_addr.init_msg_1 = internal constant [12 x i8] c"WP\04\00\00\00\00 \00\00\00\00", align 1
@kalmia_init_and_get_ethernet_addr.init_msg_2 = internal constant [12 x i8] c"WP\04\00\00\00\00\02\00\F4\00\00", align 1
@kalmia_init_and_get_ethernet_addr.buflen = internal constant i32 28, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i8*)* @kalmia_init_and_get_ethernet_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kalmia_init_and_get_ethernet_addr(%struct.usbnet* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @GFP_DMA, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = or i32 %8, %9
  %11 = call i8* @kmalloc(i32 28, i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @memcpy(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @kalmia_init_and_get_ethernet_addr.init_msg_1, i64 0, i64 0), i32 12)
  %20 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @kalmia_init_and_get_ethernet_addr.init_msg_1, i64 0, i64 0))
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @kalmia_send_init_packet(%struct.usbnet* %20, i8* %21, i32 %22, i8* %23, i32 24)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %45

28:                                               ; preds = %17
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @memcpy(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @kalmia_init_and_get_ethernet_addr.init_msg_2, i64 0, i64 0), i32 12)
  %31 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @kalmia_init_and_get_ethernet_addr.init_msg_2, i64 0, i64 0))
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @kalmia_send_init_packet(%struct.usbnet* %31, i8* %32, i32 %33, i8* %34, i32 28)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %45

39:                                               ; preds = %28
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 10
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i32 @memcpy(i8* %40, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %38, %27
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @kfree(i8* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kalmia_send_init_packet(%struct.usbnet*, i8*, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
