; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_setup_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_setup_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.moxart_mac_priv_t = type { i32, i32, i64*, i64, i32, i32, i64, i64*, i64, i8*, i64, i64, i64, i64*, i8* }

@TX_DESC_NUM = common dso_local global i32 0, align 4
@TX_REG_DESC_SIZE = common dso_local global i32 0, align 4
@TX_DESC1_END = common dso_local global i64 0, align 8
@TX_REG_OFFSET_DESC1 = common dso_local global i32 0, align 4
@RX_DESC_NUM = common dso_local global i32 0, align 4
@RX_REG_DESC_SIZE = common dso_local global i32 0, align 4
@RX_DESC0_DMA_OWN = common dso_local global i64 0, align 8
@RX_REG_OFFSET_DESC0 = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i64 0, align 8
@RX_DESC1_BUF_SIZE_MASK = common dso_local global i64 0, align 8
@RX_REG_OFFSET_DESC1 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@RX_REG_OFFSET_DESC2 = common dso_local global i32 0, align 4
@RX_DESC2_ADDRESS_PHYS = common dso_local global i32 0, align 4
@RX_DESC2_ADDRESS_VIRT = common dso_local global i32 0, align 4
@RX_DESC1_END = common dso_local global i64 0, align 8
@REG_TXR_BASE_ADDRESS = common dso_local global i64 0, align 8
@REG_RXR_BASE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @moxart_mac_setup_desc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_mac_setup_desc_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.moxart_mac_priv_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device* %6)
  store %struct.moxart_mac_priv_t* %7, %struct.moxart_mac_priv_t** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %40, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TX_DESC_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %14 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %13, i32 0, i32 14
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TX_REG_DESC_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %15, i64 %19
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @TX_REG_DESC_SIZE, align 4
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  %24 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %25 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %24, i32 0, i32 12
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %28 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %26, %32
  %34 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %35 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %34, i32 0, i32 13
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 %33, i64* %39, align 8
  br label %40

40:                                               ; preds = %12
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %8

43:                                               ; preds = %8
  %44 = load i64, i64* @TX_DESC1_END, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @TX_REG_OFFSET_DESC1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = call i32 @moxart_desc_write(i64 %44, i8* %48)
  %50 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %51 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %50, i32 0, i32 11
  store i64 0, i64* %51, align 8
  %52 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %53 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %52, i32 0, i32 10
  store i64 0, i64* %53, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %165, %43
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @RX_DESC_NUM, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %168

58:                                               ; preds = %54
  %59 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %60 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %59, i32 0, i32 9
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @RX_REG_DESC_SIZE, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %61, i64 %65
  store i8* %66, i8** %4, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @RX_REG_DESC_SIZE, align 4
  %69 = call i32 @memset(i8* %67, i32 0, i32 %68)
  %70 = load i64, i64* @RX_DESC0_DMA_OWN, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* @RX_REG_OFFSET_DESC0, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = call i32 @moxart_desc_write(i64 %70, i8* %74)
  %76 = load i64, i64* @RX_BUF_SIZE, align 8
  %77 = load i64, i64* @RX_DESC1_BUF_SIZE_MASK, align 8
  %78 = and i64 %76, %77
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* @RX_REG_OFFSET_DESC1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %79, i64 %81
  %83 = call i32 @moxart_desc_write(i64 %78, i8* %82)
  %84 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %85 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %88 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %86, %92
  %94 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %95 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %94, i32 0, i32 7
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %93, i64* %99, align 8
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %103 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %102, i32 0, i32 7
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %110 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %113 = call i64 @dma_map_single(i32* %101, i64 %108, i32 %111, i32 %112)
  %114 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %115 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %113, i64* %119, align 8
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %123 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @dma_mapping_error(i32* %121, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %58
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = call i32 @netdev_err(%struct.net_device* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %58
  %135 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %136 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %135, i32 0, i32 2
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = load i32, i32* @RX_REG_OFFSET_DESC2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr i8, i8* %142, i64 %144
  %146 = load i32, i32* @RX_DESC2_ADDRESS_PHYS, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr i8, i8* %145, i64 %147
  %149 = call i32 @moxart_desc_write(i64 %141, i8* %148)
  %150 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %151 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %150, i32 0, i32 7
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = load i32, i32* @RX_REG_OFFSET_DESC2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr i8, i8* %157, i64 %159
  %161 = load i32, i32* @RX_DESC2_ADDRESS_VIRT, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr i8, i8* %160, i64 %162
  %164 = call i32 @moxart_desc_write(i64 %156, i8* %163)
  br label %165

165:                                              ; preds = %134
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %54

168:                                              ; preds = %54
  %169 = load i64, i64* @RX_DESC1_END, align 8
  %170 = load i8*, i8** %4, align 8
  %171 = load i32, i32* @RX_REG_OFFSET_DESC1, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr i8, i8* %170, i64 %172
  %174 = call i32 @moxart_desc_write(i64 %169, i8* %173)
  %175 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %176 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %175, i32 0, i32 6
  store i64 0, i64* %176, align 8
  %177 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %178 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %181 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @REG_TXR_BASE_ADDRESS, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writel(i32 %179, i64 %184)
  %186 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %187 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %190 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @REG_RXR_BASE_ADDRESS, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @writel(i32 %188, i64 %193)
  ret void
}

declare dso_local %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @moxart_desc_write(i64, i8*) #1

declare dso_local i64 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
