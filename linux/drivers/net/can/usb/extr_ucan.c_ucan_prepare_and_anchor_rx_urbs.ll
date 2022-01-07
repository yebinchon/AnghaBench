; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_prepare_and_anchor_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_prepare_and_anchor_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { i32, i32, i32, i32 }
%struct.urb = type { i32, i32 }

@UCAN_MAX_RX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ucan_read_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucan_priv*, %struct.urb**)* @ucan_prepare_and_anchor_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_prepare_and_anchor_rx_urbs(%struct.ucan_priv* %0, %struct.urb** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucan_priv*, align 8
  %5 = alloca %struct.urb**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ucan_priv* %0, %struct.ucan_priv** %4, align 8
  store %struct.urb** %1, %struct.urb*** %5, align 8
  %8 = load %struct.urb**, %struct.urb*** %5, align 8
  %9 = load i32, i32* @UCAN_MAX_RX_URBS, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = trunc i64 %11 to i32
  %13 = call i32 @memset(%struct.urb** %8, i32 0, i32 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %100, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @UCAN_MAX_RX_URBS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %103

18:                                               ; preds = %14
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %19)
  %21 = load %struct.urb**, %struct.urb*** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.urb*, %struct.urb** %21, i64 %23
  store %struct.urb* %20, %struct.urb** %24, align 8
  %25 = load %struct.urb**, %struct.urb*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.urb*, %struct.urb** %25, i64 %27
  %29 = load %struct.urb*, %struct.urb** %28, align 8
  %30 = icmp ne %struct.urb* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %104

32:                                               ; preds = %18
  %33 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = load %struct.urb**, %struct.urb*** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.urb*, %struct.urb** %40, i64 %42
  %44 = load %struct.urb*, %struct.urb** %43, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 1
  %46 = call i8* @usb_alloc_coherent(i32 %35, i32 %38, i32 %39, i32* %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %32
  %50 = load %struct.urb**, %struct.urb*** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.urb*, %struct.urb** %50, i64 %52
  %54 = load %struct.urb*, %struct.urb** %53, align 8
  %55 = call i32 @usb_free_urb(%struct.urb* %54)
  %56 = load %struct.urb**, %struct.urb*** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.urb*, %struct.urb** %56, i64 %58
  store %struct.urb* null, %struct.urb** %59, align 8
  br label %104

60:                                               ; preds = %32
  %61 = load %struct.urb**, %struct.urb*** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.urb*, %struct.urb** %61, i64 %63
  %65 = load %struct.urb*, %struct.urb** %64, align 8
  %66 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %67 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %70 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %73 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @usb_rcvbulkpipe(i32 %71, i32 %74)
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %78 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ucan_read_bulk_callback, align 4
  %81 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %82 = call i32 @usb_fill_bulk_urb(%struct.urb* %65, i32 %68, i32 %75, i8* %76, i32 %79, i32 %80, %struct.ucan_priv* %81)
  %83 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %84 = load %struct.urb**, %struct.urb*** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.urb*, %struct.urb** %84, i64 %86
  %88 = load %struct.urb*, %struct.urb** %87, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %83
  store i32 %91, i32* %89, align 4
  %92 = load %struct.urb**, %struct.urb*** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.urb*, %struct.urb** %92, i64 %94
  %96 = load %struct.urb*, %struct.urb** %95, align 8
  %97 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %98 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %97, i32 0, i32 0
  %99 = call i32 @usb_anchor_urb(%struct.urb* %96, i32* %98)
  br label %100

100:                                              ; preds = %60
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %14

103:                                              ; preds = %14
  store i32 0, i32* %3, align 4
  br label %110

104:                                              ; preds = %49, %31
  %105 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %106 = load %struct.urb**, %struct.urb*** %5, align 8
  %107 = call i32 @ucan_cleanup_rx_urbs(%struct.ucan_priv* %105, %struct.urb** %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %103
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @memset(%struct.urb**, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.ucan_priv*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @ucan_cleanup_rx_urbs(%struct.ucan_priv*, %struct.urb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
