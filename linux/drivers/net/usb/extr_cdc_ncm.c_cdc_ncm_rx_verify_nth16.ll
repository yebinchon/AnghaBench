; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_verify_nth16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_verify_nth16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdc_ncm_ctx = type { i32, i32 }
%struct.sk_buff = type { i32, i64, i32 }
%struct.usbnet = type { i32 }
%struct.usb_cdc_ncm_nth16 = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"frame too short\0A\00", align 1
@USB_CDC_NCM_NTH16_SIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid NTH16 signature <%#010x>\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unsupported NTB block length %u/%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"sequence number glitch prev=%d curr=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_ncm_rx_verify_nth16(%struct.cdc_ncm_ctx* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cdc_ncm_ctx*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.usb_cdc_ncm_nth16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdc_ncm_ctx* %0, %struct.cdc_ncm_ctx** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.usbnet* @netdev_priv(i32 %11)
  store %struct.usbnet* %12, %struct.usbnet** %5, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %16 = icmp eq %struct.cdc_ncm_ctx* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %131

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 28
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %26 = load i32, i32* @rx_err, align 4
  %27 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.usbnet*, i32, i32, i8*, ...) @netif_dbg(%struct.usbnet* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %131

31:                                               ; preds = %18
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.usb_cdc_ncm_nth16*
  store %struct.usb_cdc_ncm_nth16* %35, %struct.usb_cdc_ncm_nth16** %6, align 8
  %36 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %6, align 8
  %37 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @USB_CDC_NCM_NTH16_SIGN, align 4
  %40 = call i64 @cpu_to_le32(i32 %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %44 = load i32, i32* @rx_err, align 4
  %45 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %6, align 8
  %49 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @le32_to_cpu(i64 %50)
  %52 = call i32 (%struct.usbnet*, i32, i32, i8*, ...) @netif_dbg(%struct.usbnet* %43, i32 %44, i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %131

53:                                               ; preds = %31
  %54 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %6, align 8
  %55 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16_to_cpu(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %53
  %64 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %65 = load i32, i32* @rx_err, align 4
  %66 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.usbnet*, i32, i32, i8*, ...) @netif_dbg(%struct.usbnet* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72)
  br label %131

74:                                               ; preds = %53
  %75 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %6, align 8
  %80 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = icmp ne i32 %78, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %74
  %85 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %6, align 8
  %91 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le16_to_cpu(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %89, %84
  %96 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 65535
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %6, align 8
  %102 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le16_to_cpu(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %100, %95
  %107 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %108 = load i32, i32* @rx_err, align 4
  %109 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %110 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %6, align 8
  %116 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  %119 = call i32 (%struct.usbnet*, i32, i32, i8*, ...) @netif_dbg(%struct.usbnet* %107, i32 %108, i32 %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %118)
  br label %120

120:                                              ; preds = %106, %100, %89, %74
  %121 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %6, align 8
  %122 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le16_to_cpu(i32 %123)
  %125 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %6, align 8
  %128 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @le16_to_cpu(i32 %129)
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %120, %63, %42, %24, %17
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local %struct.usbnet* @netdev_priv(i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, ...) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
