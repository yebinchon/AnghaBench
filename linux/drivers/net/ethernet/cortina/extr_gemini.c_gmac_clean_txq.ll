; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_clean_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_clean_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gmac_txq = type { i32, i32*, %struct.gmac_txdesc* }
%struct.gmac_txdesc = type { %union.gmac_txdesc_1, %struct.TYPE_7__, %struct.TYPE_6__, %union.gmac_txdesc_0 }
%union.gmac_txdesc_1 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.gmac_txdesc_0 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.gemini_ethernet_port = type { i32, i32, i32, %struct.TYPE_10__, i32, i32*, %struct.gemini_ethernet* }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.gemini_ethernet = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EOF_BIT = common dso_local global i32 0, align 4
@SOF_BIT = common dso_local global i32 0, align 4
@TSS_CHECKUM_ENABLE = common dso_local global i32 0, align 4
@TX_MAX_FRAGS = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.gmac_txq*, i32)* @gmac_clean_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmac_clean_txq(%struct.net_device* %0, %struct.gmac_txq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.gmac_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gemini_ethernet_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gemini_ethernet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.gmac_txdesc_0, align 4
  %12 = alloca %union.gmac_txdesc_1, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.gmac_txdesc*, align 8
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.gmac_txq* %1, %struct.gmac_txq** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %21)
  store %struct.gemini_ethernet_port* %22, %struct.gemini_ethernet_port** %7, align 8
  %23 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %24 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %29 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %28, i32 0, i32 6
  %30 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %29, align 8
  store %struct.gemini_ethernet* %30, %struct.gemini_ethernet** %9, align 8
  %31 = load %struct.gmac_txq*, %struct.gmac_txq** %5, align 8
  %32 = getelementptr inbounds %struct.gmac_txq, %struct.gmac_txq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %193

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %159, %104, %98, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %160

43:                                               ; preds = %39
  %44 = load %struct.gmac_txq*, %struct.gmac_txq** %5, align 8
  %45 = getelementptr inbounds %struct.gmac_txq, %struct.gmac_txq* %44, i32 0, i32 2
  %46 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %46, i64 %48
  store %struct.gmac_txdesc* %49, %struct.gmac_txdesc** %15, align 8
  %50 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %15, align 8
  %51 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %50, i32 0, i32 3
  %52 = bitcast %union.gmac_txdesc_0* %11 to i8*
  %53 = bitcast %union.gmac_txdesc_0* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 8 %53, i64 12, i1 false)
  %54 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %15, align 8
  %55 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %54, i32 0, i32 0
  %56 = bitcast %union.gmac_txdesc_1* %12 to i8*
  %57 = bitcast %union.gmac_txdesc_1* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %15, align 8
  %59 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %20, align 4
  %62 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %15, align 8
  %63 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %19, align 4
  %66 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %9, align 8
  %67 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %20, align 4
  %70 = bitcast %union.gmac_txdesc_0* %11 to %struct.TYPE_9__*
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = call i32 @dma_unmap_single(i32 %68, i32 %69, i32 %72, i32 %73)
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* @EOF_BIT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %43
  %80 = load %struct.gmac_txq*, %struct.gmac_txq** %5, align 8
  %81 = getelementptr inbounds %struct.gmac_txq, %struct.gmac_txq* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_kfree_skb(i32 %86)
  br label %88

88:                                               ; preds = %79, %43
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @SOF_BIT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  br label %39

99:                                               ; preds = %88
  %100 = bitcast %union.gmac_txdesc_0* %11 to %struct.TYPE_9__*
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %17, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %39

107:                                              ; preds = %99
  %108 = load i32, i32* %18, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %18, align 4
  %110 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %15, align 8
  %111 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %110, i32 0, i32 0
  %112 = bitcast %union.gmac_txdesc_1* %111 to %struct.TYPE_8__*
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %14, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %14, align 8
  %117 = bitcast %union.gmac_txdesc_1* %12 to i32*
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @TSS_CHECKUM_ENABLE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %107
  %123 = load i32, i32* %13, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %122, %107
  %126 = bitcast %union.gmac_txdesc_0* %11 to %struct.TYPE_9__*
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %16, align 2
  %131 = load i16, i16* %16, align 2
  %132 = icmp ne i16 %131, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %125
  %134 = load i16, i16* %16, align 2
  %135 = zext i16 %134 to i32
  %136 = load i16, i16* @TX_MAX_FRAGS, align 2
  %137 = zext i16 %136 to i32
  %138 = icmp sge i32 %135, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i16, i16* @TX_MAX_FRAGS, align 2
  %141 = zext i16 %140 to i32
  %142 = sub nsw i32 %141, 1
  %143 = trunc i32 %142 to i16
  store i16 %143, i16* %16, align 2
  br label %144

144:                                              ; preds = %139, %133
  %145 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %146 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %145, i32 0, i32 4
  %147 = call i32 @u64_stats_update_begin(i32* %146)
  %148 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %149 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = load i16, i16* %16, align 2
  %152 = zext i16 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %157 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %156, i32 0, i32 4
  %158 = call i32 @u64_stats_update_end(i32* %157)
  br label %159

159:                                              ; preds = %144, %125
  br label %39

160:                                              ; preds = %39
  %161 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %162 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %161, i32 0, i32 2
  %163 = call i32 @u64_stats_update_begin(i32* %162)
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %166 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add i32 %168, %164
  store i32 %169, i32* %167, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %172 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add i32 %174, %170
  store i32 %175, i32* %173, align 4
  %176 = load i64, i64* %14, align 8
  %177 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %178 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %180, %176
  store i64 %181, i64* %179, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %184 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %188 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %187, i32 0, i32 2
  %189 = call i32 @u64_stats_update_end(i32* %188)
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.gmac_txq*, %struct.gmac_txq** %5, align 8
  %192 = getelementptr inbounds %struct.gmac_txq, %struct.gmac_txq* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %160, %37
  ret void
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
