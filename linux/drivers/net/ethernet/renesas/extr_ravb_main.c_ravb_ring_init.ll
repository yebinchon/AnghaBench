; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ravb_private = type { i32, i32, i32*, i32*, i8**, i32*, i64*, i8**, i32*, i32*, %struct.sk_buff***, i8** }
%struct.sk_buff = type { i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RAVB_ALIGN = common dso_local global i32 0, align 4
@DPTR_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ravb_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_ring_init(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ravb_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ravb_private* %12, %struct.ravb_private** %6, align 8
  %13 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %14 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 1492
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %21, %20 ], [ %25, %22 ]
  %28 = load i32, i32* @ETH_HLEN, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @VLAN_HLEN, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %36 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %38 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kcalloc(i32 %43, i32 8, i32 %44)
  %46 = bitcast i8* %45 to %struct.sk_buff**
  %47 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %48 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %47, i32 0, i32 10
  %49 = load %struct.sk_buff***, %struct.sk_buff**** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %49, i64 %51
  store %struct.sk_buff** %46, %struct.sk_buff*** %52, align 8
  %53 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %54 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kcalloc(i32 %59, i32 1, i32 %60)
  %62 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %63 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %62, i32 0, i32 11
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %61, i8** %67, align 8
  %68 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %69 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %68, i32 0, i32 10
  %70 = load %struct.sk_buff***, %struct.sk_buff**** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %70, i64 %72
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %73, align 8
  %75 = icmp ne %struct.sk_buff** %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %26
  %77 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %78 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %77, i32 0, i32 11
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %76, %26
  br label %249

86:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %123, %86
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %90 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %88, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %87
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %100 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @RAVB_ALIGN, align 4
  %103 = add nsw i32 %101, %102
  %104 = sub nsw i32 %103, 1
  %105 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %98, i32 %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %8, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = icmp ne %struct.sk_buff* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %97
  br label %249

109:                                              ; preds = %97
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = call i32 @ravb_set_buffer_align(%struct.sk_buff* %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %114 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %113, i32 0, i32 10
  %115 = load %struct.sk_buff***, %struct.sk_buff**** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %115, i64 %117
  %119 = load %struct.sk_buff**, %struct.sk_buff*** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %119, i64 %121
  store %struct.sk_buff* %112, %struct.sk_buff** %122, align 8
  br label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %87

126:                                              ; preds = %87
  %127 = load i32, i32* %7, align 4
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %160

129:                                              ; preds = %126
  %130 = load i32, i32* @DPTR_ALIGN, align 4
  %131 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %132 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %130, %137
  %139 = load i32, i32* @DPTR_ALIGN, align 4
  %140 = add nsw i32 %138, %139
  %141 = sub nsw i32 %140, 1
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i32 @kmalloc(i32 %141, i32 %142)
  %144 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %145 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %144, i32 0, i32 9
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  %150 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %151 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %150, i32 0, i32 9
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %129
  br label %249

159:                                              ; preds = %129
  br label %160

160:                                              ; preds = %159, %126
  %161 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %162 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = mul i64 4, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %9, align 4
  %172 = load %struct.net_device*, %struct.net_device** %4, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %178 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %177, i32 0, i32 8
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* @GFP_KERNEL, align 4
  %184 = call i8* @dma_alloc_coherent(i32 %175, i32 %176, i32* %182, i32 %183)
  %185 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %186 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %185, i32 0, i32 7
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %184, i8** %190, align 8
  %191 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %192 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %191, i32 0, i32 7
  %193 = load i8**, i8*** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %160
  br label %249

200:                                              ; preds = %160
  %201 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %202 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %201, i32 0, i32 6
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  store i64 0, i64* %206, align 8
  %207 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %208 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %7, align 4
  %215 = mul nsw i32 %213, %214
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = mul i64 4, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %9, align 4
  %220 = load %struct.net_device*, %struct.net_device** %4, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %226 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %225, i32 0, i32 5
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* @GFP_KERNEL, align 4
  %232 = call i8* @dma_alloc_coherent(i32 %223, i32 %224, i32* %230, i32 %231)
  %233 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %234 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %233, i32 0, i32 4
  %235 = load i8**, i8*** %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  store i8* %232, i8** %238, align 8
  %239 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %240 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %239, i32 0, i32 4
  %241 = load i8**, i8*** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %200
  br label %249

248:                                              ; preds = %200
  store i32 0, i32* %3, align 4
  br label %255

249:                                              ; preds = %247, %199, %158, %108, %85
  %250 = load %struct.net_device*, %struct.net_device** %4, align 8
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @ravb_ring_free(%struct.net_device* %250, i32 %251)
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %249, %248
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_set_buffer_align(%struct.sk_buff*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @ravb_ring_free(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
