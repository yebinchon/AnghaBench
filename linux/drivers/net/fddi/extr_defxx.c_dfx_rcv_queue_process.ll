; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_rcv_queue_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_rcv_queue_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8**, %struct.TYPE_17__, i32, i32, i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.sk_buff = type { i64, i32, i64 }

@RCV_BUFF_K_DESCR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PI_FMC_DESCR_M_RCC_FLUSH = common dso_local global i32 0, align 4
@PI_FMC_DESCR_M_RCC_CRC = common dso_local global i32 0, align 4
@PI_FMC_DESCR_M_LEN = common dso_local global i32 0, align 4
@PI_FMC_DESCR_V_LEN = common dso_local global i32 0, align 4
@FDDI_K_LLC_ZLEN = common dso_local global i32 0, align 4
@FDDI_K_LLC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: Could not allocate receive buffer.  Dropping packet.\0A\00", align 1
@RCV_BUFF_K_PADDING = common dso_local global i32 0, align 4
@RCV_BUFF_K_DA = common dso_local global i32 0, align 4
@NEW_SKB_SIZE = common dso_local global i32 0, align 4
@PI_RCV_DATA_K_SIZE_MAX = common dso_local global i32 0, align 4
@SKBUFF_RX_COPYBREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @dfx_rcv_queue_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfx_rcv_queue_process(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 12
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %3, align 8
  br label %16

16:                                               ; preds = %188, %1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %201

27:                                               ; preds = %16
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @RCV_BUFF_K_DESCR, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @dma_sync_single_for_cpu(i32 %53, i32 %56, i32 4, i32 %57)
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* @RCV_BUFF_K_DESCR, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = call i32 @memcpy(i32* %5, i8* %62, i32 4)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @PI_FMC_DESCR_M_RCC_FLUSH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %27
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @PI_FMC_DESCR_M_RCC_CRC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %83

78:                                               ; preds = %68
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %188

84:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @PI_FMC_DESCR_M_LEN, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @PI_FMC_DESCR_V_LEN, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 4
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @FDDI_K_LLC_ZLEN, align 4
  %94 = load i32, i32* @FDDI_K_LLC_LEN, align 4
  %95 = call i32 @IN_RANGE(i32 %92, i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %84
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %187

102:                                              ; preds = %84
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 3
  %108 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_20__* %105, i32 %107)
  store %struct.sk_buff* %108, %struct.sk_buff** %7, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = icmp eq %struct.sk_buff* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %201

122:                                              ; preds = %102
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %144, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @RCV_BUFF_K_PADDING, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 3
  %134 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %135 = call i32 @dma_sync_single_for_cpu(i32 %128, i32 %131, i32 %133, i32 %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = load i32, i32* @RCV_BUFF_K_PADDING, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 3
  %143 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %136, i8* %140, i32 %142)
  br label %144

144:                                              ; preds = %125, %122
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = call i32 @skb_reserve(%struct.sk_buff* %145, i32 3)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @skb_put(%struct.sk_buff* %147, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = call i32 @fddi_type_trans(%struct.sk_buff* %150, %struct.TYPE_20__* %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = call i32 @netif_rx(%struct.sk_buff* %166)
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load i8*, i8** %4, align 8
  %173 = load i32, i32* @RCV_BUFF_K_DA, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = and i32 %177, 1
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %144
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %180, %144
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186, %97
  br label %188

188:                                              ; preds = %187, %83
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %198, align 8
  br label %16

201:                                              ; preds = %111, %16
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @IN_RANGE(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @fddi_type_trans(%struct.sk_buff*, %struct.TYPE_20__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
