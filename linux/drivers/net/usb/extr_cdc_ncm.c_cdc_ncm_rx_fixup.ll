; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i64* }
%struct.sk_buff = type { i32, i64 }
%struct.cdc_ncm_ctx = type { i32, i32, i32 }
%struct.usb_cdc_ncm_ndp16 = type { i64, i32, %struct.usb_cdc_ncm_dpe16* }
%struct.usb_cdc_ncm_dpe16 = type { i32, i32 }

@USB_CDC_NCM_NDP16_NOCRC_SIGN = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid DPT16 signature <%#010x>\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"invalid frame detected (ignored) offset[%u]=%u, length=%u, skb=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_ncm_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.cdc_ncm_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %13 = alloca %struct.usb_cdc_ncm_dpe16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %22, %struct.cdc_ncm_ctx** %7, align 8
  store i32 50, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @cdc_ncm_rx_verify_nth16(%struct.cdc_ncm_ctx* %23, %struct.sk_buff* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %180

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %165, %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @cdc_ncm_rx_verify_ndp16(%struct.sk_buff* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %180

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = inttoptr i64 %43 to %struct.usb_cdc_ncm_ndp16*
  store %struct.usb_cdc_ncm_ndp16* %44, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %45 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %46 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @USB_CDC_NCM_NDP16_NOCRC_SIGN, align 4
  %49 = call i64 @cpu_to_le32(i32 %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %37
  %52 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %53 = load i32, i32* @rx_err, align 4
  %54 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %58 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @le32_to_cpu(i64 %59)
  %61 = call i32 (%struct.usbnet*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.usbnet* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %154

62:                                               ; preds = %37
  %63 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %64 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %63, i32 0, i32 2
  %65 = load %struct.usb_cdc_ncm_dpe16*, %struct.usb_cdc_ncm_dpe16** %64, align 8
  store %struct.usb_cdc_ncm_dpe16* %65, %struct.usb_cdc_ncm_dpe16** %13, align 8
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %148, %62
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %153

70:                                               ; preds = %66
  %71 = load %struct.usb_cdc_ncm_dpe16*, %struct.usb_cdc_ncm_dpe16** %13, align 8
  %72 = getelementptr inbounds %struct.usb_cdc_ncm_dpe16, %struct.usb_cdc_ncm_dpe16* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.usb_cdc_ncm_dpe16*, %struct.usb_cdc_ncm_dpe16** %13, align 8
  %76 = getelementptr inbounds %struct.usb_cdc_ncm_dpe16, %struct.usb_cdc_ncm_dpe16* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81, %70
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  br label %154

88:                                               ; preds = %84
  br label %153

89:                                               ; preds = %81
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %90, %91
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %100 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ETH_HLEN, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %103, %97, %89
  %108 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %109 = load i32, i32* @rx_err, align 4
  %110 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %111 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call i32 (%struct.usbnet*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.usbnet* %108, i32 %109, i32 %112, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114, i32 %115, %struct.sk_buff* %116)
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %107
  br label %154

121:                                              ; preds = %107
  br label %153

122:                                              ; preds = %103
  %123 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %124 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %125, i32 %126)
  store %struct.sk_buff* %127, %struct.sk_buff** %6, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = icmp ne %struct.sk_buff* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  br label %180

131:                                              ; preds = %122
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @skb_put_data(%struct.sk_buff* %132, i64 %138, i32 %139)
  %141 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = call i32 @usbnet_skb_return(%struct.usbnet* %141, %struct.sk_buff* %142)
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %131
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  %151 = load %struct.usb_cdc_ncm_dpe16*, %struct.usb_cdc_ncm_dpe16** %13, align 8
  %152 = getelementptr inbounds %struct.usb_cdc_ncm_dpe16, %struct.usb_cdc_ncm_dpe16* %151, i32 1
  store %struct.usb_cdc_ncm_dpe16* %152, %struct.usb_cdc_ncm_dpe16** %13, align 8
  br label %66

153:                                              ; preds = %121, %88, %66
  br label %154

154:                                              ; preds = %153, %120, %87, %51
  %155 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %156 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @le16_to_cpu(i32 %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %15, align 4
  %164 = icmp ne i32 %162, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %30

166:                                              ; preds = %161, %154
  %167 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sub nsw i32 %169, %170
  %172 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %173 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %177 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  store i32 1, i32* %3, align 4
  br label %181

180:                                              ; preds = %130, %36, %28
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %166
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @cdc_ncm_rx_verify_nth16(%struct.cdc_ncm_ctx*, %struct.sk_buff*) #1

declare dso_local i32 @cdc_ncm_rx_verify_ndp16(%struct.sk_buff*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
