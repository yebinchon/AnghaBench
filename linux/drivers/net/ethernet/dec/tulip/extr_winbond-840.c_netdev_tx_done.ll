; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_netdev_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_netdev_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i64, i64, i64, i64, %struct.TYPE_8__**, i32*, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Transmit error, Tx status %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Transmit slot %d ok, Tx status %08x\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_QUEUE_LEN_RESTART = common dso_local global i64 0, align 8
@TX_BUG_FIFO_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netdev_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_tx_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  br label %8

8:                                                ; preds = %196, %1
  %9 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %10 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %201

17:                                               ; preds = %8
  %18 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %19 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @TX_RING_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = srem i64 %20, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %26 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %25, i32 0, i32 9
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %201

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 32768
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %109

40:                                               ; preds = %36
  %41 = load i32, i32* @debug, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %49 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 260
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %47
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 3200
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %68 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 512
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %78 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %72
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %88 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %82
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 128
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %98 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %104 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %96, %92
  br label %147

109:                                              ; preds = %36
  %110 = load i32, i32* @debug, align 4
  %111 = icmp sgt i32 %110, 3
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %109
  %118 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %119 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %118, i32 0, i32 4
  %120 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %120, i64 %122
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %128 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %126
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load i32, i32* %5, align 4
  %135 = ashr i32 %134, 3
  %136 = and i32 %135, 15
  %137 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %138 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %136
  store i32 %141, i32* %139, align 4
  %142 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %143 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %117, %108
  %148 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %149 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %152 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %159 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %158, i32 0, i32 4
  %160 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %160, i64 %162
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %168 = call i32 @pci_unmap_single(i32 %150, i32 %157, i64 %166, i32 %167)
  %169 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %170 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %169, i32 0, i32 4
  %171 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %171, i64 %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %179 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %180, %177
  store i64 %181, i64* %179, align 8
  %182 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %183 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %182, i32 0, i32 4
  %184 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %184, i64 %186
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = call i32 @dev_kfree_skb_irq(%struct.TYPE_8__* %188)
  %190 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %191 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %190, i32 0, i32 4
  %192 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %192, i64 %194
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %195, align 8
  br label %196

196:                                              ; preds = %147
  %197 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %198 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %198, align 8
  br label %8

201:                                              ; preds = %35, %8
  %202 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %203 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %201
  %207 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %208 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %211 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %209, %212
  %214 = load i64, i64* @TX_QUEUE_LEN_RESTART, align 8
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %206
  %217 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %218 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @TX_BUG_FIFO_LIMIT, align 8
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %224 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %223, i32 0, i32 3
  store i64 0, i64* %224, align 8
  %225 = call i32 (...) @wmb()
  %226 = load %struct.net_device*, %struct.net_device** %2, align 8
  %227 = call i32 @netif_wake_queue(%struct.net_device* %226)
  br label %228

228:                                              ; preds = %222, %216, %206, %201
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_8__*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
