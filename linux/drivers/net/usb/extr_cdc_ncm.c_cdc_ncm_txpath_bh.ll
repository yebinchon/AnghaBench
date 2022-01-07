; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_txpath_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_txpath_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32*, i64* }
%struct.cdc_ncm_ctx = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cdc_ncm_txpath_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdc_ncm_txpath_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.cdc_ncm_ctx*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.usbnet*
  store %struct.usbnet* %6, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %12, %struct.cdc_ncm_ctx** %4, align 8
  %13 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %4, align 8
  %26 = call i32 @cdc_ncm_tx_timeout_start(%struct.cdc_ncm_ctx* %25)
  %27 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock_bh(i32* %28)
  br label %60

30:                                               ; preds = %1
  %31 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %32 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @netif_tx_lock_bh(i32* %45)
  %47 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %48 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @usbnet_start_xmit(i32* null, i32* %49)
  %51 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @netif_tx_unlock_bh(i32* %53)
  br label %59

55:                                               ; preds = %30
  %56 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_bh(i32* %57)
  br label %59

59:                                               ; preds = %55, %35
  br label %60

60:                                               ; preds = %59, %20
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cdc_ncm_tx_timeout_start(%struct.cdc_ncm_ctx*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netif_tx_lock_bh(i32*) #1

declare dso_local i32 @usbnet_start_xmit(i32*, i32*) #1

declare dso_local i32 @netif_tx_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
