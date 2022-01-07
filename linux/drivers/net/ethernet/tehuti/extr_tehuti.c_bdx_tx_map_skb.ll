; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_tx_map_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_tx_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.bdx_priv = type { %struct.TYPE_10__*, %struct.txdb }
%struct.TYPE_10__ = type { i32 }
%struct.txdb = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.txd_desc = type { %struct.pbl* }
%struct.pbl = type { i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"=== pbl   len: 0x%x ================\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"=== pbl pa_lo: 0x%x ================\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"=== pbl pa_hi: 0x%x ================\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@txd_sizes = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*, %struct.sk_buff*, %struct.txd_desc*)* @bdx_tx_map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_tx_map_skb(%struct.bdx_priv* %0, %struct.sk_buff* %1, %struct.txd_desc* %2) #0 {
  %4 = alloca %struct.bdx_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.txd_desc*, align 8
  %7 = alloca %struct.txdb*, align 8
  %8 = alloca %struct.pbl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.bdx_priv* %0, %struct.bdx_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.txd_desc* %2, %struct.txd_desc** %6, align 8
  %12 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %13 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %12, i32 0, i32 1
  store %struct.txdb* %13, %struct.txdb** %7, align 8
  %14 = load %struct.txd_desc*, %struct.txd_desc** %6, align 8
  %15 = getelementptr inbounds %struct.txd_desc, %struct.txd_desc* %14, i32 0, i32 0
  %16 = load %struct.pbl*, %struct.pbl** %15, align 8
  %17 = getelementptr inbounds %struct.pbl, %struct.pbl* %16, i64 0
  store %struct.pbl* %17, %struct.pbl** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @skb_headlen(%struct.sk_buff* %22)
  %24 = load %struct.txdb*, %struct.txdb** %7, align 8
  %25 = getelementptr inbounds %struct.txdb, %struct.txdb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 8
  %28 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.txdb*, %struct.txdb** %7, align 8
  %35 = getelementptr inbounds %struct.txdb, %struct.txdb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %40 = call i32 @pci_map_single(%struct.TYPE_10__* %30, i32 %33, i32 %38, i32 %39)
  %41 = load %struct.txdb*, %struct.txdb** %7, align 8
  %42 = getelementptr inbounds %struct.txdb, %struct.txdb* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 8
  %46 = load %struct.txdb*, %struct.txdb** %7, align 8
  %47 = getelementptr inbounds %struct.txdb, %struct.txdb* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @CPU_CHIP_SWAP32(i32 %50)
  %52 = load %struct.pbl*, %struct.pbl** %8, align 8
  %53 = getelementptr inbounds %struct.pbl, %struct.pbl* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.txdb*, %struct.txdb** %7, align 8
  %55 = getelementptr inbounds %struct.txdb, %struct.txdb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @L32_64(i32 %59)
  %61 = call i8* @CPU_CHIP_SWAP32(i32 %60)
  %62 = load %struct.pbl*, %struct.pbl** %8, align 8
  %63 = getelementptr inbounds %struct.pbl, %struct.pbl* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.txdb*, %struct.txdb** %7, align 8
  %65 = getelementptr inbounds %struct.txdb, %struct.txdb* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @H32_64(i32 %69)
  %71 = call i8* @CPU_CHIP_SWAP32(i32 %70)
  %72 = load %struct.pbl*, %struct.pbl** %8, align 8
  %73 = getelementptr inbounds %struct.pbl, %struct.pbl* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.pbl*, %struct.pbl** %8, align 8
  %75 = getelementptr inbounds %struct.pbl, %struct.pbl* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = load %struct.pbl*, %struct.pbl** %8, align 8
  %79 = getelementptr inbounds %struct.pbl, %struct.pbl* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load %struct.pbl*, %struct.pbl** %8, align 8
  %83 = getelementptr inbounds %struct.pbl, %struct.pbl* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  %86 = load %struct.txdb*, %struct.txdb** %7, align 8
  %87 = call i32 @bdx_tx_db_inc_wptr(%struct.txdb* %86)
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %152, %3
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %155

92:                                               ; preds = %88
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32* %99, i32** %11, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @skb_frag_size(i32* %100)
  %102 = load %struct.txdb*, %struct.txdb** %7, align 8
  %103 = getelementptr inbounds %struct.txdb, %struct.txdb* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 8
  %106 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %107 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32*, i32** %11, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @skb_frag_size(i32* %111)
  %113 = load i32, i32* @DMA_TO_DEVICE, align 4
  %114 = call i32 @skb_frag_dma_map(i32* %109, i32* %110, i32 0, i32 %112, i32 %113)
  %115 = load %struct.txdb*, %struct.txdb** %7, align 8
  %116 = getelementptr inbounds %struct.txdb, %struct.txdb* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 %114, i32* %119, align 8
  %120 = load %struct.pbl*, %struct.pbl** %8, align 8
  %121 = getelementptr inbounds %struct.pbl, %struct.pbl* %120, i32 1
  store %struct.pbl* %121, %struct.pbl** %8, align 8
  %122 = load %struct.txdb*, %struct.txdb** %7, align 8
  %123 = getelementptr inbounds %struct.txdb, %struct.txdb* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @CPU_CHIP_SWAP32(i32 %126)
  %128 = load %struct.pbl*, %struct.pbl** %8, align 8
  %129 = getelementptr inbounds %struct.pbl, %struct.pbl* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.txdb*, %struct.txdb** %7, align 8
  %131 = getelementptr inbounds %struct.txdb, %struct.txdb* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @L32_64(i32 %135)
  %137 = call i8* @CPU_CHIP_SWAP32(i32 %136)
  %138 = load %struct.pbl*, %struct.pbl** %8, align 8
  %139 = getelementptr inbounds %struct.pbl, %struct.pbl* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.txdb*, %struct.txdb** %7, align 8
  %141 = getelementptr inbounds %struct.txdb, %struct.txdb* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @H32_64(i32 %145)
  %147 = call i8* @CPU_CHIP_SWAP32(i32 %146)
  %148 = load %struct.pbl*, %struct.pbl** %8, align 8
  %149 = getelementptr inbounds %struct.pbl, %struct.pbl* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load %struct.txdb*, %struct.txdb** %7, align 8
  %151 = call i32 @bdx_tx_db_inc_wptr(%struct.txdb* %150)
  br label %152

152:                                              ; preds = %92
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %88

155:                                              ; preds = %88
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** @txd_sizes, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 0, %161
  %163 = load %struct.txdb*, %struct.txdb** %7, align 8
  %164 = getelementptr inbounds %struct.txdb, %struct.txdb* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i32 %162, i32* %166, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %168 = load %struct.txdb*, %struct.txdb** %7, align 8
  %169 = getelementptr inbounds %struct.txdb, %struct.txdb* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store %struct.sk_buff* %167, %struct.sk_buff** %172, align 8
  %173 = load %struct.txdb*, %struct.txdb** %7, align 8
  %174 = call i32 @bdx_tx_db_inc_wptr(%struct.txdb* %173)
  ret void
}

declare dso_local %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_single(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i8* @CPU_CHIP_SWAP32(i32) #1

declare dso_local i32 @L32_64(i32) #1

declare dso_local i32 @H32_64(i32) #1

declare dso_local i32 @DBG(i8*, i8*) #1

declare dso_local i32 @bdx_tx_db_inc_wptr(%struct.txdb*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
