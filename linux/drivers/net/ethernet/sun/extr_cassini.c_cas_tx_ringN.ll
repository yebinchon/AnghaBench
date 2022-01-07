; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_tx_ringN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_tx_ringN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32*, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_4__**, i32, %struct.net_device*, %struct.sk_buff***, %struct.cas_tx_desc** }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cas_tx_desc = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@tx_done = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tx[%d] done, slot %d\0A\00", align 1
@TX_DESC_BUFLEN = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32, i32)* @cas_tx_ringN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_tx_ringN(%struct.cas* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cas_tx_desc*, align 8
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cas_tx_desc*, align 8
  store %struct.cas* %0, %struct.cas** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.cas*, %struct.cas** %4, align 8
  %18 = getelementptr inbounds %struct.cas, %struct.cas* %17, i32 0, i32 6
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %9, align 8
  %20 = load %struct.cas*, %struct.cas** %4, align 8
  %21 = getelementptr inbounds %struct.cas, %struct.cas* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.cas*, %struct.cas** %4, align 8
  %28 = getelementptr inbounds %struct.cas, %struct.cas* %27, i32 0, i32 8
  %29 = load %struct.cas_tx_desc**, %struct.cas_tx_desc*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cas_tx_desc*, %struct.cas_tx_desc** %29, i64 %31
  %33 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %32, align 8
  store %struct.cas_tx_desc* %33, %struct.cas_tx_desc** %7, align 8
  %34 = load %struct.cas*, %struct.cas** %4, align 8
  %35 = getelementptr inbounds %struct.cas, %struct.cas* %34, i32 0, i32 7
  %36 = load %struct.sk_buff***, %struct.sk_buff**** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %36, i64 %38
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %39, align 8
  store %struct.sk_buff** %40, %struct.sk_buff*** %8, align 8
  %41 = load %struct.cas*, %struct.cas** %4, align 8
  %42 = getelementptr inbounds %struct.cas, %struct.cas* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @TX_BUFF_COUNT(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %181, %64, %3
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %221

56:                                               ; preds = %52
  %57 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %57, i64 %59
  %61 = load %struct.sk_buff*, %struct.sk_buff** %60, align 8
  store %struct.sk_buff* %61, %struct.sk_buff** %12, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @TX_DESC_NEXT(i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  br label %52

68:                                               ; preds = %56
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cas*, %struct.cas** %4, align 8
  %74 = getelementptr inbounds %struct.cas, %struct.cas* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %72, %84
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %68
  br label %221

92:                                               ; preds = %68
  %93 = load %struct.cas*, %struct.cas** %4, align 8
  %94 = load i32, i32* @tx_done, align 4
  %95 = load i32, i32* @KERN_DEBUG, align 4
  %96 = load %struct.cas*, %struct.cas** %4, align 8
  %97 = getelementptr inbounds %struct.cas, %struct.cas* %96, i32 0, i32 6
  %98 = load %struct.net_device*, %struct.net_device** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @netif_printk(%struct.cas* %93, i32 %94, i32 %95, %struct.net_device* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %102, i64 %104
  store %struct.sk_buff* null, %struct.sk_buff** %105, align 8
  %106 = load %struct.cas*, %struct.cas** %4, align 8
  %107 = getelementptr inbounds %struct.cas, %struct.cas* %106, i32 0, i32 4
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %108, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %178, %92
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %120 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sle i32 %118, %122
  br i1 %123, label %124, label %181

124:                                              ; preds = %117
  %125 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %7, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %125, i64 %127
  store %struct.cas_tx_desc* %128, %struct.cas_tx_desc** %16, align 8
  %129 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %16, align 8
  %130 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le64_to_cpu(i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* @TX_DESC_BUFLEN, align 4
  %134 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %16, align 8
  %135 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le64_to_cpu(i32 %136)
  %138 = call i32 @CAS_VAL(i32 %133, i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = load %struct.cas*, %struct.cas** %4, align 8
  %140 = getelementptr inbounds %struct.cas, %struct.cas* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %145 = call i32 @pci_unmap_page(i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @TX_DESC_NEXT(i32 %146, i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load %struct.cas*, %struct.cas** %4, align 8
  %150 = getelementptr inbounds %struct.cas, %struct.cas* %149, i32 0, i32 4
  %151 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %151, i64 %153
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %124
  %163 = load %struct.cas*, %struct.cas** %4, align 8
  %164 = getelementptr inbounds %struct.cas, %struct.cas* %163, i32 0, i32 4
  %165 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %165, i64 %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  store i64 0, i64* %173, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @TX_DESC_NEXT(i32 %174, i32 %175)
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %162, %124
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %117

181:                                              ; preds = %117
  %182 = load %struct.cas*, %struct.cas** %4, align 8
  %183 = getelementptr inbounds %struct.cas, %struct.cas* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = call i32 @spin_lock(i32* %187)
  %189 = load %struct.cas*, %struct.cas** %4, align 8
  %190 = getelementptr inbounds %struct.cas, %struct.cas* %189, i32 0, i32 3
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  %198 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.cas*, %struct.cas** %4, align 8
  %202 = getelementptr inbounds %struct.cas, %struct.cas* %201, i32 0, i32 3
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %200
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %207, align 4
  %212 = load %struct.cas*, %struct.cas** %4, align 8
  %213 = getelementptr inbounds %struct.cas, %struct.cas* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = call i32 @spin_unlock(i32* %217)
  %219 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %220 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %219)
  br label %52

221:                                              ; preds = %91, %52
  %222 = load i32, i32* %10, align 4
  %223 = load %struct.cas*, %struct.cas** %4, align 8
  %224 = getelementptr inbounds %struct.cas, %struct.cas* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %222, i32* %228, align 4
  %229 = load %struct.net_device*, %struct.net_device** %9, align 8
  %230 = call i64 @netif_queue_stopped(%struct.net_device* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %221
  %233 = load %struct.cas*, %struct.cas** %4, align 8
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @TX_BUFFS_AVAIL(%struct.cas* %233, i32 %234)
  %236 = load %struct.cas*, %struct.cas** %4, align 8
  %237 = call i32 @CAS_TABORT(%struct.cas* %236)
  %238 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %239 = add nsw i32 %238, 1
  %240 = mul nsw i32 %237, %239
  %241 = icmp sgt i32 %235, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %232
  %243 = load %struct.net_device*, %struct.net_device** %9, align 8
  %244 = call i32 @netif_wake_queue(%struct.net_device* %243)
  br label %245

245:                                              ; preds = %242, %232, %221
  %246 = load %struct.cas*, %struct.cas** %4, align 8
  %247 = getelementptr inbounds %struct.cas, %struct.cas* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = call i32 @spin_unlock(i32* %251)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @TX_BUFF_COUNT(i32, i32, i32) #1

declare dso_local i32 @TX_DESC_NEXT(i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_printk(%struct.cas*, i32, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @CAS_VAL(i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @TX_BUFFS_AVAIL(%struct.cas*, i32) #1

declare dso_local i32 @CAS_TABORT(%struct.cas*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
