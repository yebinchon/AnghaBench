; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_alloc_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_alloc_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipheth_device = type { i32, i32*, i32*, %struct.urb*, %struct.urb* }
%struct.urb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IPHETH_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipheth_device*)* @ipheth_alloc_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipheth_alloc_urbs(%struct.ipheth_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipheth_device*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.ipheth_device* %0, %struct.ipheth_device** %3, align 8
  store %struct.urb* null, %struct.urb** %4, align 8
  store %struct.urb* null, %struct.urb** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %8)
  store %struct.urb* %9, %struct.urb** %4, align 8
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = icmp eq %struct.urb* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %72

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %14)
  store %struct.urb* %15, %struct.urb** %5, align 8
  %16 = load %struct.urb*, %struct.urb** %5, align 8
  %17 = icmp eq %struct.urb* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %69

19:                                               ; preds = %13
  %20 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %21 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IPHETH_BUF_SIZE, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load %struct.urb*, %struct.urb** %4, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = call i32* @usb_alloc_coherent(i32 %22, i32 %23, i32 %24, i32* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %66

31:                                               ; preds = %19
  %32 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %33 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IPHETH_BUF_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = call i32* @usb_alloc_coherent(i32 %34, i32 %35, i32 %36, i32* %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %56

43:                                               ; preds = %31
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %46 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %45, i32 0, i32 4
  store %struct.urb* %44, %struct.urb** %46, align 8
  %47 = load %struct.urb*, %struct.urb** %5, align 8
  %48 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %49 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %48, i32 0, i32 3
  store %struct.urb* %47, %struct.urb** %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %52 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %55 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  store i32 0, i32* %2, align 4
  br label %75

56:                                               ; preds = %42
  %57 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %58 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IPHETH_BUF_SIZE, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.urb*, %struct.urb** %4, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_free_coherent(i32 %59, i32 %60, i32* %61, i32 %64)
  br label %66

66:                                               ; preds = %56, %30
  %67 = load %struct.urb*, %struct.urb** %5, align 8
  %68 = call i32 @usb_free_urb(%struct.urb* %67)
  br label %69

69:                                               ; preds = %66, %18
  %70 = load %struct.urb*, %struct.urb** %4, align 8
  %71 = call i32 @usb_free_urb(%struct.urb* %70)
  br label %72

72:                                               ; preds = %69, %12
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %43
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
