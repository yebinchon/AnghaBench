; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_ndp_to_end_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_ndp_to_end_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usbnet = type { i32, i64* }
%struct.cdc_ncm_ctx = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i64 0, align 8
@CDC_NCM_FLAG_NDP_TO_END = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ndp_to_end_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ndp_to_end_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usbnet*, align 8
  %11 = alloca %struct.cdc_ncm_ctx*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @to_net_dev(%struct.device* %13)
  %15 = call %struct.usbnet* @netdev_priv(i32 %14)
  store %struct.usbnet* %15, %struct.usbnet** %10, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %21, %struct.cdc_ncm_ctx** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strtobool(i8* %22, i32* %12)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %98

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %31 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %29, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %5, align 8
  br label %98

38:                                               ; preds = %28
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %43 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %41
  %47 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %48 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i64 @kzalloc(i32 %49, i32 %50)
  %52 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %53 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %55 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load i64, i64* @ENOMEM, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %5, align 8
  br label %98

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %41, %38
  %63 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @netif_tx_lock_bh(i32 %65)
  %67 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %68 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @usbnet_start_xmit(i32* null, i32 %69)
  %71 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %72 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %71, i32 0, i32 1
  %73 = call i32 @spin_lock_bh(i32* %72)
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %62
  %77 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %78 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %79 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %89

82:                                               ; preds = %62
  %83 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %86 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %76
  %90 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %11, align 8
  %91 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock_bh(i32* %91)
  %93 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %94 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @netif_tx_unlock_bh(i32 %95)
  %97 = load i64, i64* %9, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %89, %58, %36, %25
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local %struct.usbnet* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i64 @strtobool(i8*, i32*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @usbnet_start_xmit(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
