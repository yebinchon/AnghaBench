; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, i32, %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring*, %struct.device* }
%struct.bgmac_dma_ring = type { i8*, i32, i8*, i32, i8* }
%struct.device = type { i32 }

@bgmac_dma_alloc.ring_base = internal constant [4 x i32] [i32 131, i32 130, i32 129, i32 128], align 16
@BGMAC_MAX_TX_RINGS = common dso_local global i32 0, align 4
@BGMAC_MAX_RX_RINGS = common dso_local global i32 0, align 4
@BGMAC_FEAT_IDM_MASK = common dso_local global i32 0, align 4
@BCMA_IOST = common dso_local global i32 0, align 4
@BCMA_IOST_DMA64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Core does not report 64-bit DMA\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@BGMAC_TX_RING_SLOTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Allocation of TX ring 0x%X failed\0A\00", align 1
@BGMAC_DMA_RING_TX = common dso_local global i32 0, align 4
@BGMAC_RX_RING_SLOTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Allocation of RX ring 0x%X failed\0A\00", align 1
@BGMAC_DMA_RING_RX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgmac*)* @bgmac_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_dma_alloc(%struct.bgmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bgmac_dma_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  %8 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %9 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %8, i32 0, i32 4
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @BGMAC_MAX_TX_RINGS, align 4
  %12 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @bgmac_dma_alloc.ring_base, i64 0, i64 0))
  %13 = icmp sgt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i32, i32* @BGMAC_MAX_RX_RINGS, align 4
  %17 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @bgmac_dma_alloc.ring_base, i64 0, i64 0))
  %18 = icmp sgt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUILD_BUG_ON(i32 %19)
  %21 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %22 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BGMAC_FEAT_IDM_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %1
  %28 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %29 = load i32, i32* @BCMA_IOST, align 4
  %30 = call i32 @bgmac_idm_read(%struct.bgmac* %28, i32 %29)
  %31 = load i32, i32* @BCMA_IOST_DMA64, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %36 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %182

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %1
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %106, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @BGMAC_MAX_TX_RINGS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %109

47:                                               ; preds = %43
  %48 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %49 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %48, i32 0, i32 3
  %50 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %50, i64 %52
  store %struct.bgmac_dma_ring* %53, %struct.bgmac_dma_ring** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* @bgmac_dma_alloc.ring_base, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %59 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %67 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %66, i32 0, i32 1
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @dma_alloc_coherent(%struct.device* %64, i32 %65, i32* %67, i32 %68)
  %70 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %71 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %73 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %47
  %77 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %78 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %81 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %177

84:                                               ; preds = %47
  %85 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %86 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %87 = load i32, i32* @BGMAC_DMA_RING_TX, align 4
  %88 = call i8* @bgmac_dma_unaligned(%struct.bgmac* %85, %struct.bgmac_dma_ring* %86, i32 %87)
  %89 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %90 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %92 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %97 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @lower_32_bits(i32 %98)
  %100 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %101 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %105

102:                                              ; preds = %84
  %103 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %104 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %103, i32 0, i32 0
  store i8* null, i8** %104, align 8
  br label %105

105:                                              ; preds = %102, %95
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %43

109:                                              ; preds = %43
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %173, %109
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @BGMAC_MAX_RX_RINGS, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %176

114:                                              ; preds = %110
  %115 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %116 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %115, i32 0, i32 2
  %117 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %117, i64 %119
  store %struct.bgmac_dma_ring* %120, %struct.bgmac_dma_ring** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* @bgmac_dma_alloc.ring_base, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %126 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @BGMAC_RX_RING_SLOTS, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %6, align 4
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %134 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %133, i32 0, i32 1
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @dma_alloc_coherent(%struct.device* %131, i32 %132, i32* %134, i32 %135)
  %137 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %138 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %140 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %114
  %144 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %145 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %148 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @dev_err(i32 %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  br label %177

151:                                              ; preds = %114
  %152 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %153 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %154 = load i32, i32* @BGMAC_DMA_RING_RX, align 4
  %155 = call i8* @bgmac_dma_unaligned(%struct.bgmac* %152, %struct.bgmac_dma_ring* %153, i32 %154)
  %156 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %157 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %159 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %151
  %163 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %164 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @lower_32_bits(i32 %165)
  %167 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %168 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  br label %172

169:                                              ; preds = %151
  %170 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %171 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %170, i32 0, i32 0
  store i8* null, i8** %171, align 8
  br label %172

172:                                              ; preds = %169, %162
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %110

176:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %182

177:                                              ; preds = %143, %76
  %178 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %179 = call i32 @bgmac_dma_free(%struct.bgmac* %178)
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %177, %176, %34
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @bgmac_idm_read(%struct.bgmac*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i8* @bgmac_dma_unaligned(%struct.bgmac*, %struct.bgmac_dma_ring*, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @bgmac_dma_free(%struct.bgmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
