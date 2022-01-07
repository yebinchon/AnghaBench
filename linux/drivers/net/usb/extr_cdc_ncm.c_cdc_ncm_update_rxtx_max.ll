; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_update_rxtx_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_update_rxtx_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64, i32, i32, i32, i32, %struct.TYPE_9__*, i64* }
%struct.TYPE_9__ = type { i32 }
%struct.cdc_ncm_ctx = type { i32, i32, i32, i32*, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"setting rx_max = %u\0A\00", align 1
@USB_CDC_SET_NTB_INPUT_SIZE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Setting NTB Input Size failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"setting tx_max = %u\0A\00", align 1
@u16 = common dso_local global i32 0, align 4
@CDC_NCM_MIN_TX_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32, i32)* @cdc_ncm_update_rxtx_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdc_ncm_update_rxtx_max(%struct.usbnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdc_ncm_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 6
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %16, %struct.cdc_ncm_ctx** %7, align 8
  %17 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %17, i32 0, i32 5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @cdc_ncm_check_rx_max(%struct.usbnet* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 5
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %43 = load i32, i32* @USB_CDC_SET_NTB_INPUT_SIZE, align 4
  %44 = load i32, i32* @USB_TYPE_CLASS, align 4
  %45 = load i32, i32* @USB_DIR_OUT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @usbnet_write_cmd(%struct.usbnet* %42, i32 %43, i32 %48, i32 0, i32 %49, i32* %10, i32 4)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %33
  %53 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %54 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %53, i32 0, i32 5
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %62

58:                                               ; preds = %33
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62, %3
  %64 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %65 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %74 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %78 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %80 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @netif_running(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %86 = call i32 @usbnet_unlink_rx_urbs(%struct.usbnet* %85)
  br label %87

87:                                               ; preds = %84, %72
  br label %88

88:                                               ; preds = %87, %63
  %89 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @cdc_ncm_check_tx_max(%struct.usbnet* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %94 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %99 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %98, i32 0, i32 5
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @dev_info(i32* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %97, %88
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %107 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = icmp ne i32 %105, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %104
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %115 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %118 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @usb_maxpacket(i32 %116, i32 %119, i32 1)
  %121 = srem i32 %113, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %112
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %123, %112, %104
  %127 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %128 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @netif_running(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %166

132:                                              ; preds = %126
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %135 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %133, %136
  br i1 %137, label %138, label %166

138:                                              ; preds = %132
  %139 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %140 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @netif_tx_lock_bh(i32 %141)
  %143 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %144 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @usbnet_start_xmit(i32* null, i32 %145)
  %147 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %148 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %138
  %152 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %153 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @dev_kfree_skb_any(i32* %154)
  %156 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %157 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %156, i32 0, i32 3
  store i32* null, i32** %157, align 8
  br label %158

158:                                              ; preds = %151, %138
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %161 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %163 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @netif_tx_unlock_bh(i32 %164)
  br label %170

166:                                              ; preds = %132, %126
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %169 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %166, %158
  %171 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %172 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %175 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %177 = call i32 @usbnet_update_max_qlen(%struct.usbnet* %176)
  %178 = load i32, i32* @u16, align 4
  %179 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %180 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %183 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %186 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @usb_maxpacket(i32 %184, i32 %187, i32 1)
  %189 = mul nsw i32 3, %188
  %190 = sub nsw i32 %181, %189
  %191 = load i32, i32* @CDC_NCM_MIN_TX_PKT, align 4
  %192 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %193 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @clamp_t(i32 %178, i32 %190, i32 %191, i32 %194)
  %196 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %197 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  ret void
}

declare dso_local i32 @cdc_ncm_check_rx_max(%struct.usbnet*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i64 @usbnet_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @usbnet_unlink_rx_urbs(%struct.usbnet*) #1

declare dso_local i32 @cdc_ncm_check_tx_max(%struct.usbnet*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @usbnet_start_xmit(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

declare dso_local i32 @usbnet_update_max_qlen(%struct.usbnet*) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
