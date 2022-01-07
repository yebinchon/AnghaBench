; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ath10k_htc_hdr = type { i32, i32, i32 }

@ATH10K_SDIO_MAX_RX_MSGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"the total number of pkgs to be fetched (%u) exceeds maximum %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"payload length %d exceeds max htc length: %zu\0A\00", align 1
@ATH10K_SDIO_MAX_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"rx buffer requested with invalid htc_hdr length (%d, 0x%x): %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_HTC_FLAG_BUNDLE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"alloc_bundle error %d\0A\00", align 1
@ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK = common dso_local global i32 0, align 4
@ATH10K_HIF_MBOX_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"alloc_rx_pkt error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32*, i32)* @ath10k_sdio_mbox_rx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_rx_alloc(%struct.ath10k* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k_sdio*, align 8
  %9 = alloca %struct.ath10k_htc_hdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %17 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %16)
  store %struct.ath10k_sdio* %17, %struct.ath10k_sdio** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ATH10K_SDIO_MAX_RX_MSGS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ATH10K_SDIO_MAX_RX_MSGS, align 4
  %25 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %22, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %13, align 4
  br label %156

28:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %149, %28
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %152

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = bitcast i32* %37 to %struct.ath10k_htc_hdr*
  store %struct.ath10k_htc_hdr* %38, %struct.ath10k_htc_hdr** %9, align 8
  store i32 0, i32* %12, align 4
  %39 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = load i32, i32* @ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %33
  %46 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %47 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %9, align 8
  %48 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load i32, i32* @ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH, align 4
  %52 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %156

55:                                               ; preds = %33
  %56 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %9, align 8
  %57 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 12
  store i64 %61, i64* %11, align 8
  %62 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %8, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @ath10k_sdio_calc_txrx_padded_len(%struct.ath10k_sdio* %62, i64 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @ATH10K_SDIO_MAX_BUFFER_SIZE, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %55
  %69 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %70 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %9, align 8
  %71 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %9, align 8
  %74 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %9, align 8
  %77 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %69, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %75, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %156

83:                                               ; preds = %55
  %84 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %9, align 8
  %85 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ATH10K_HTC_FLAG_BUNDLE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %83
  %91 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %92 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %8, align 8
  %93 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @ath10k_sdio_mbox_alloc_pkt_bundle(%struct.ath10k* %91, %struct.TYPE_4__* %97, %struct.ath10k_htc_hdr* %98, i64 %99, i64 %100, i64* %15)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %90
  %105 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %156

108:                                              ; preds = %90
  %109 = load i64, i64* %15, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %7, align 4
  %114 = load i64, i64* %15, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %14, align 4
  store i32 1, i32* %12, align 4
  br label %119

119:                                              ; preds = %108, %83
  %120 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %9, align 8
  %121 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i64, i64* @ATH10K_HIF_MBOX_BLOCK_SIZE, align 8
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %126, %119
  %131 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %8, align 8
  %132 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @ath10k_sdio_mbox_alloc_rx_pkt(%struct.TYPE_4__* %136, i64 %137, i64 %138, i32 %139, i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %130
  %145 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %156

148:                                              ; preds = %130
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %29

152:                                              ; preds = %29
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %8, align 8
  %155 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  store i32 0, i32* %4, align 4
  br label %185

156:                                              ; preds = %144, %104, %68, %45, %21
  store i32 0, i32* %14, align 4
  br label %157

157:                                              ; preds = %180, %156
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @ATH10K_SDIO_MAX_RX_MSGS, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %183

161:                                              ; preds = %157
  %162 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %8, align 8
  %163 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %162, i32 0, i32 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %161
  br label %183

172:                                              ; preds = %161
  %173 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %8, align 8
  %174 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = call i32 @ath10k_sdio_mbox_free_rx_pkt(%struct.TYPE_4__* %178)
  br label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %157

183:                                              ; preds = %171, %157
  %184 = load i32, i32* %13, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %183, %152
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ath10k_sdio_calc_txrx_padded_len(%struct.ath10k_sdio*, i64) #1

declare dso_local i32 @ath10k_sdio_mbox_alloc_pkt_bundle(%struct.ath10k*, %struct.TYPE_4__*, %struct.ath10k_htc_hdr*, i64, i64, i64*) #1

declare dso_local i32 @ath10k_sdio_mbox_alloc_rx_pkt(%struct.TYPE_4__*, i64, i64, i32, i32) #1

declare dso_local i32 @ath10k_sdio_mbox_free_rx_pkt(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
