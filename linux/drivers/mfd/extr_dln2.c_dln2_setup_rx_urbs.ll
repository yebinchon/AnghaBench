; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_setup_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_setup_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_dev = type { i32*, i32, i32, i32* }
%struct.usb_host_interface = type { i32 }

@DLN2_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DLN2_MAX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dln2_rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dln2_dev*, %struct.usb_host_interface*)* @dln2_setup_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_setup_rx_urbs(%struct.dln2_dev* %0, %struct.usb_host_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dln2_dev*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dln2_dev* %0, %struct.dln2_dev** %4, align 8
  store %struct.usb_host_interface* %1, %struct.usb_host_interface** %5, align 8
  %8 = load i32, i32* @DLN2_RX_BUF_SIZE, align 4
  store i32 %8, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %83, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DLN2_MAX_URBS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %86

13:                                               ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @kmalloc(i32 %14, i32 %15)
  %17 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %18 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %16, i32* %22, align 4
  %23 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %24 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %13
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %87

34:                                               ; preds = %13
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @usb_alloc_urb(i32 0, i32 %35)
  %37 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %38 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %44 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %87

54:                                               ; preds = %34
  %55 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %56 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %63 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %66 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %69 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @usb_rcvbulkpipe(i32 %67, i32 %70)
  %72 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %73 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @dln2_rx, align 4
  %81 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %82 = call i32 @usb_fill_bulk_urb(i32 %61, i32 %64, i32 %71, i32 %78, i32 %79, i32 %80, %struct.dln2_dev* %81)
  br label %83

83:                                               ; preds = %54
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %9

86:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %51, %31
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32, i32, i32, %struct.dln2_dev*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
