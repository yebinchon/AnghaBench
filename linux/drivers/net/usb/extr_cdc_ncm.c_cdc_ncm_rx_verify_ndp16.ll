; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_verify_ndp16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_verify_ndp16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.usbnet = type { i32 }
%struct.usb_cdc_ncm_ndp16 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid NDP offset  <%u>\0A\00", align 1
@USB_CDC_NCM_NDP16_LENGTH_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid DPT16 length <%u>\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid nframes = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_ncm_rx_verify_ndp16(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.usbnet* @netdev_priv(i32 %10)
  store %struct.usbnet* %11, %struct.usbnet** %5, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %24 = load i32, i32* @rx_err, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @netif_dbg(%struct.usbnet* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %86

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to %struct.usb_cdc_ncm_ndp16*
  store %struct.usb_cdc_ncm_ndp16* %37, %struct.usb_cdc_ncm_ndp16** %6, align 8
  %38 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %6, align 8
  %39 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load i32, i32* @USB_CDC_NCM_NDP16_LENGTH_MIN, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %30
  %45 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %46 = load i32, i32* @rx_err, align 4
  %47 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %48 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %6, align 8
  %51 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = call i32 @netif_dbg(%struct.usbnet* %45, i32 %46, i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %86

55:                                               ; preds = %30
  %56 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %6, align 8
  %57 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 4
  %62 = udiv i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = add i64 4, %68
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ugt i64 %69, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %55
  %76 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %77 = load i32, i32* @rx_err, align 4
  %78 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @netif_dbg(%struct.usbnet* %76, i32 %77, i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %75, %55
  br label %86

86:                                               ; preds = %85, %44, %22
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.usbnet* @netdev_priv(i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
