; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip_core.c_tulip_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip_core.c_tulip_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tulip_private = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@DESC_RING_WRAP = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwned = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tulip_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tulip_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tulip_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %7)
  store %struct.tulip_private* %8, %struct.tulip_private** %3, align 8
  %9 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %10 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %9, i32 0, i32 10
  store i64 0, i64* %10, align 8
  %11 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %12 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %14 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %68, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RX_RING_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %21 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %20, i32 0, i32 5
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load i32, i32* @PKT_BUF_SZ, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %30 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %29, i32 0, i32 5
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i8* %28, i8** %35, align 8
  %36 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %37 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = add i64 %39, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %48 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %47, i32 0, i32 5
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i8* %46, i8** %53, align 8
  %54 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %55 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %54, i32 0, i32 6
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %60, align 8
  %61 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %62 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %61, i32 0, i32 6
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %19
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %15

71:                                               ; preds = %15
  %72 = load i32, i32* @PKT_BUF_SZ, align 4
  %73 = load i32, i32* @DESC_RING_WRAP, align 4
  %74 = or i32 %72, %73
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %77 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %76, i32 0, i32 5
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i8* %75, i8** %83, align 8
  %84 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %85 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %89 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %88, i32 0, i32 5
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i8* %87, i8** %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %152, %71
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @RX_RING_SIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %155

100:                                              ; preds = %96
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load i32, i32* @PKT_BUF_SZ, align 4
  %103 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %101, i32 %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %6, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %106 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %105, i32 0, i32 6
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store %struct.sk_buff* %104, %struct.sk_buff** %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = icmp eq %struct.sk_buff* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %155

115:                                              ; preds = %100
  %116 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %117 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PKT_BUF_SZ, align 4
  %123 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %124 = call i32 @pci_map_single(i32 %118, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %127 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %126, i32 0, i32 6
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 %125, i32* %132, align 8
  %133 = load i32, i32* @DescOwned, align 4
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %137 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %136, i32 0, i32 5
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i32 %135, i32* %142, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i8* @cpu_to_le32(i32 %143)
  %145 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %146 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %145, i32 0, i32 5
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i8* %144, i8** %151, align 8
  br label %152

152:                                              ; preds = %115
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %96

155:                                              ; preds = %114, %96
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @RX_RING_SIZE, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %160 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %205, %155
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @TX_RING_SIZE, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %208

165:                                              ; preds = %161
  %166 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %167 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %166, i32 0, i32 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  store i32* null, i32** %172, align 8
  %173 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %174 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %173, i32 0, i32 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  store i64 0, i64* %179, align 8
  %180 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %181 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %180, i32 0, i32 3
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32 0, i32* %186, align 8
  %187 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %188 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = mul i64 4, %193
  %195 = add i64 %190, %194
  %196 = trunc i64 %195 to i32
  %197 = call i8* @cpu_to_le32(i32 %196)
  %198 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %199 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %198, i32 0, i32 3
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  store i8* %197, i8** %204, align 8
  br label %205

205:                                              ; preds = %165
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %4, align 4
  br label %161

208:                                              ; preds = %161
  %209 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %210 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i8* @cpu_to_le32(i32 %211)
  %213 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %214 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %213, i32 0, i32 3
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  store i8* %212, i8** %220, align 8
  ret void
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
