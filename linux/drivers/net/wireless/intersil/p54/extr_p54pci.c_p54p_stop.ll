; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54p_priv* }
%struct.p54p_priv = type { i32**, %struct.TYPE_4__*, i32**, i32**, %struct.TYPE_3__, i32**, i32, %struct.p54p_ring_control* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.p54p_ring_control = type { %struct.p54p_desc*, %struct.p54p_desc*, %struct.p54p_desc*, %struct.p54p_desc* }
%struct.p54p_desc = type { i32, i64 }

@int_enable = common dso_local global i32 0, align 4
@dev_int = common dso_local global i32 0, align 4
@ISL38XX_DEV_INT_RESET = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @p54p_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54p_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.p54p_priv*, align 8
  %4 = alloca %struct.p54p_ring_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.p54p_desc*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.p54p_priv*, %struct.p54p_priv** %8, align 8
  store %struct.p54p_priv* %9, %struct.p54p_priv** %3, align 8
  %10 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %11 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %10, i32 0, i32 7
  %12 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %11, align 8
  store %struct.p54p_ring_control* %12, %struct.p54p_ring_control** %4, align 8
  %13 = load i32, i32* @int_enable, align 4
  %14 = call i32 @cpu_to_le32(i32 0)
  %15 = call i32 @P54P_WRITE(i32 %13, i32 %14)
  %16 = load i32, i32* @int_enable, align 4
  %17 = call i32 @P54P_READ(i32 %16)
  %18 = call i32 @udelay(i32 10)
  %19 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %20 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.ieee80211_hw* %24)
  %26 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %27 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %26, i32 0, i32 6
  %28 = call i32 @tasklet_kill(i32* %27)
  %29 = load i32, i32* @dev_int, align 4
  %30 = load i32, i32* @ISL38XX_DEV_INT_RESET, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = call i32 @P54P_WRITE(i32 %29, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %81, %1
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %36 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %35, i32 0, i32 5
  %37 = load i32**, i32*** %36, align 8
  %38 = call i32 @ARRAY_SIZE(i32** %37)
  %39 = icmp ult i32 %34, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %33
  %41 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %4, align 8
  %42 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %41, i32 0, i32 3
  %43 = load %struct.p54p_desc*, %struct.p54p_desc** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %43, i64 %45
  store %struct.p54p_desc* %46, %struct.p54p_desc** %6, align 8
  %47 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %48 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %40
  %52 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %53 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %56 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @le32_to_cpu(i64 %57)
  %59 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %60 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 32
  %64 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %65 = call i32 @pci_unmap_single(%struct.TYPE_4__* %54, i32 %58, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %51, %40
  %67 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %68 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %67, i32 0, i32 5
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @kfree_skb(i32* %73)
  %75 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %76 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %75, i32 0, i32 5
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %33

84:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %133, %84
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %88 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %87, i32 0, i32 3
  %89 = load i32**, i32*** %88, align 8
  %90 = call i32 @ARRAY_SIZE(i32** %89)
  %91 = icmp ult i32 %86, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %85
  %93 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %4, align 8
  %94 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %93, i32 0, i32 2
  %95 = load %struct.p54p_desc*, %struct.p54p_desc** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %95, i64 %97
  store %struct.p54p_desc* %98, %struct.p54p_desc** %6, align 8
  %99 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %100 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %92
  %104 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %105 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %108 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @le32_to_cpu(i64 %109)
  %111 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %112 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 32
  %116 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %117 = call i32 @pci_unmap_single(%struct.TYPE_4__* %106, i32 %110, i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %103, %92
  %119 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %120 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %119, i32 0, i32 3
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @kfree_skb(i32* %125)
  %127 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %128 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %127, i32 0, i32 3
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %118
  %134 = load i32, i32* %5, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %85

136:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %185, %136
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %140 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %139, i32 0, i32 2
  %141 = load i32**, i32*** %140, align 8
  %142 = call i32 @ARRAY_SIZE(i32** %141)
  %143 = icmp ult i32 %138, %142
  br i1 %143, label %144, label %188

144:                                              ; preds = %137
  %145 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %4, align 8
  %146 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %145, i32 0, i32 1
  %147 = load %struct.p54p_desc*, %struct.p54p_desc** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %147, i64 %149
  store %struct.p54p_desc* %150, %struct.p54p_desc** %6, align 8
  %151 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %152 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %144
  %156 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %157 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %160 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @le32_to_cpu(i64 %161)
  %163 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %164 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @le16_to_cpu(i32 %165)
  %167 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %168 = call i32 @pci_unmap_single(%struct.TYPE_4__* %158, i32 %162, i64 %166, i32 %167)
  br label %169

169:                                              ; preds = %155, %144
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %171 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %172 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %171, i32 0, i32 2
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @p54_free_skb(%struct.ieee80211_hw* %170, i32* %177)
  %179 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %180 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %179, i32 0, i32 2
  %181 = load i32**, i32*** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  store i32* null, i32** %184, align 8
  br label %185

185:                                              ; preds = %169
  %186 = load i32, i32* %5, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %5, align 4
  br label %137

188:                                              ; preds = %137
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %237, %188
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %192 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %191, i32 0, i32 0
  %193 = load i32**, i32*** %192, align 8
  %194 = call i32 @ARRAY_SIZE(i32** %193)
  %195 = icmp ult i32 %190, %194
  br i1 %195, label %196, label %240

196:                                              ; preds = %189
  %197 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %4, align 8
  %198 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %197, i32 0, i32 0
  %199 = load %struct.p54p_desc*, %struct.p54p_desc** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %199, i64 %201
  store %struct.p54p_desc* %202, %struct.p54p_desc** %6, align 8
  %203 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %204 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %196
  %208 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %209 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %212 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @le32_to_cpu(i64 %213)
  %215 = load %struct.p54p_desc*, %struct.p54p_desc** %6, align 8
  %216 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @le16_to_cpu(i32 %217)
  %219 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %220 = call i32 @pci_unmap_single(%struct.TYPE_4__* %210, i32 %214, i64 %218, i32 %219)
  br label %221

221:                                              ; preds = %207, %196
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %223 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %224 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %223, i32 0, i32 0
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @p54_free_skb(%struct.ieee80211_hw* %222, i32* %229)
  %231 = load %struct.p54p_priv*, %struct.p54p_priv** %3, align 8
  %232 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  store i32* null, i32** %236, align 8
  br label %237

237:                                              ; preds = %221
  %238 = load i32, i32* %5, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %5, align 4
  br label %189

240:                                              ; preds = %189
  %241 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %4, align 8
  %242 = call i32 @memset(%struct.p54p_ring_control* %241, i32 0, i32 32)
  ret void
}

declare dso_local i32 @P54P_WRITE(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @P54P_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @free_irq(i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @pci_unmap_single(%struct.TYPE_4__*, i32, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @p54_free_skb(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @memset(%struct.p54p_ring_control*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
