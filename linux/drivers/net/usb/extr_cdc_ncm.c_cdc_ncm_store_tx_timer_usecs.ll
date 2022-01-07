; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_store_tx_timer_usecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_store_tx_timer_usecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usbnet = type { i64* }
%struct.cdc_ncm_ctx = type { i64, i32, i64 }

@CDC_NCM_TIMER_INTERVAL_MIN = common dso_local global i64 0, align 8
@CDC_NCM_TIMER_INTERVAL_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cdc_ncm_store_tx_timer_usecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cdc_ncm_store_tx_timer_usecs(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usbnet*, align 8
  %11 = alloca %struct.cdc_ncm_ctx*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_net_dev(%struct.device* %14)
  %16 = call %struct.usbnet* @netdev_priv(i32 %15)
  store %struct.usbnet* %16, %struct.usbnet** %10, align 8
  %17 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %22, %struct.cdc_ncm_ctx** %11, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @kstrtoul(i8* %23, i32 0, i64* %13)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* %12, align 8
  store i64 %28, i64* %5, align 8
  br label %64

29:                                               ; preds = %4
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @CDC_NCM_TIMER_INTERVAL_MIN, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @CDC_NCM_TIMER_INTERVAL_MAX, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %64

43:                                               ; preds = %36, %29
  %44 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %45 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %44, i32 0, i32 1
  %46 = call i32 @spin_lock_bh(i32* %45)
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @NSEC_PER_USEC, align 8
  %49 = mul i64 %47, %48
  %50 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %51 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %53 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %58 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %43
  %60 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %61 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %59, %40, %27
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local %struct.usbnet* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
