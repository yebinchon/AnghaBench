; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32, i32, i32*, %struct.TYPE_8__*, %struct.sk_buff**, %struct.TYPE_6__*, %struct.cp_desc* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.cp_desc = type { i32, i32 }

@DescOwn = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@TxError = common dso_local global i32 0, align 4
@TxFIFOUnder = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"tx err, status 0x%x\0A\00", align 1
@TxOWC = common dso_local global i32 0, align 4
@TxMaxCol = common dso_local global i32 0, align 4
@TxLinkFail = common dso_local global i32 0, align 4
@TxColCntShift = common dso_local global i32 0, align 4
@TxColCntMask = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"tx done, slot %d\0A\00", align 1
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*)* @cp_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_tx(%struct.cp_private* %0) #0 {
  %2 = alloca %struct.cp_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cp_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %2, align 8
  %10 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %11 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  %13 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %14 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %197, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %206

20:                                               ; preds = %16
  %21 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %22 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %21, i32 0, i32 6
  %23 = load %struct.cp_desc*, %struct.cp_desc** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %23, i64 %25
  store %struct.cp_desc* %26, %struct.cp_desc** %7, align 8
  %27 = call i32 (...) @rmb()
  %28 = load %struct.cp_desc*, %struct.cp_desc** %7, align 8
  %29 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @DescOwn, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %206

37:                                               ; preds = %20
  %38 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %39 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %38, i32 0, i32 4
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %40, i64 %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %8, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %51 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %50, i32 0, i32 5
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.cp_desc*, %struct.cp_desc** %7, align 8
  %55 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le64_to_cpu(i32 %56)
  %58 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %59 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 65535
  %66 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %67 = call i32 @dma_unmap_single(i32* %53, i32 %57, i32 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @LastFrag, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %197

72:                                               ; preds = %37
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @TxError, align 4
  %75 = load i32, i32* @TxFIFOUnder, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %146

79:                                               ; preds = %72
  %80 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %81 = load i32, i32* @tx_err, align 4
  %82 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %83 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @netif_dbg(%struct.cp_private* %80, i32 %81, %struct.TYPE_8__* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %88 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %87, i32 0, i32 3
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @TxOWC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %79
  %99 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %100 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %99, i32 0, i32 3
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %98, %79
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @TxMaxCol, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %113 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %112, i32 0, i32 3
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %111, %106
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @TxLinkFail, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %126 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %125, i32 0, i32 3
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %124, %119
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @TxFIFOUnder, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %139 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %138, i32 0, i32 3
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %137, %132
  br label %185

146:                                              ; preds = %72
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @TxColCntShift, align 4
  %149 = ashr i32 %147, %148
  %150 = load i32, i32* @TxColCntMask, align 4
  %151 = and i32 %149, %150
  %152 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %153 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %152, i32 0, i32 3
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %151
  store i32 %158, i32* %156, align 4
  %159 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %160 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %159, i32 0, i32 3
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %170 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %169, i32 0, i32 3
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %168
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  %178 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %179 = load i32, i32* @tx_done, align 4
  %180 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %181 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %180, i32 0, i32 3
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @netif_dbg(%struct.cp_private* %178, i32 %179, %struct.TYPE_8__* %182, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %146, %145
  %186 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = zext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %6, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %6, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %196 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %195)
  br label %197

197:                                              ; preds = %185, %37
  %198 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %199 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %198, i32 0, i32 4
  %200 = load %struct.sk_buff**, %struct.sk_buff*** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %200, i64 %202
  store %struct.sk_buff* null, %struct.sk_buff** %203, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @NEXT_TX(i32 %204)
  store i32 %205, i32* %4, align 4
  br label %16

206:                                              ; preds = %36, %16
  %207 = load i32, i32* %4, align 4
  %208 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %209 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %211 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %210, i32 0, i32 3
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @netdev_completed_queue(%struct.TYPE_8__* %212, i32 %213, i32 %214)
  %216 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %217 = call i64 @TX_BUFFS_AVAIL(%struct.cp_private* %216)
  %218 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %219 = add nsw i64 %218, 1
  %220 = icmp sgt i64 %217, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %206
  %222 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %223 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %222, i32 0, i32 3
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = call i32 @netif_wake_queue(%struct.TYPE_8__* %224)
  br label %226

226:                                              ; preds = %221, %206
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @netif_dbg(%struct.cp_private*, i32, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @netdev_completed_queue(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.cp_private*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
