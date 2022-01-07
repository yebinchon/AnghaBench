; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_lib82596.c_init_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_lib82596.c_init_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i596_private = type { %struct.i596_rfd*, %struct.i596_rfd*, %struct.i596_dma* }
%struct.i596_rfd = type { i8*, i8*, %struct.i596_rfd*, %struct.i596_rfd*, i8*, i8*, i8*, i32, %struct.sk_buff*, i8* }
%struct.sk_buff = type { i32 }
%struct.i596_dma = type { %struct.i596_rfd*, %struct.TYPE_4__, %struct.i596_rfd* }
%struct.TYPE_4__ = type { i8* }
%struct.i596_rbd = type { i8*, i8*, %struct.i596_rbd*, %struct.i596_rbd*, i8*, i8*, i8*, i32, %struct.sk_buff*, i8* }

@rx_ring_size = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@I596_NULL = common dso_local global i8* null, align 8
@CMD_FLEX = common dso_local global i32 0, align 4
@CMD_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rx_bufs(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.i596_private*, align 8
  %5 = alloca %struct.i596_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i596_rfd*, align 8
  %8 = alloca %struct.i596_rbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.i596_private* @netdev_priv(%struct.net_device* %11)
  store %struct.i596_private* %12, %struct.i596_private** %4, align 8
  %13 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %14 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %13, i32 0, i32 2
  %15 = load %struct.i596_dma*, %struct.i596_dma** %14, align 8
  store %struct.i596_dma* %15, %struct.i596_dma** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %17 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %16, i32 0, i32 2
  %18 = load %struct.i596_rfd*, %struct.i596_rfd** %17, align 8
  %19 = bitcast %struct.i596_rfd* %18 to %struct.i596_rbd*
  store %struct.i596_rbd* %19, %struct.i596_rbd** %8, align 8
  br label %20

20:                                               ; preds = %77, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @rx_ring_size, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %82

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load i32, i32* @PKT_BUF_SZ, align 4
  %27 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = icmp eq %struct.sk_buff* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %209

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PKT_BUF_SZ, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_map_single(i32 %35, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %43 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %42, i64 1
  %44 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %45 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %44, i32 0, i32 2
  store %struct.i596_rbd* %43, %struct.i596_rbd** %45, align 8
  %46 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %47 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %48 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %47, i64 1
  %49 = bitcast %struct.i596_rbd* %48 to %struct.i596_rfd*
  %50 = call i32 @virt_to_dma(%struct.i596_private* %46, %struct.i596_rfd* %49)
  %51 = call i8* @SWAP32(i32 %50)
  %52 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %53 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %55 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %56 = bitcast %struct.i596_rbd* %55 to %struct.i596_rfd*
  %57 = call i32 @virt_to_dma(%struct.i596_private* %54, %struct.i596_rfd* %56)
  %58 = call i8* @SWAP32(i32 %57)
  %59 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %60 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %59, i32 0, i32 9
  store i8* %58, i8** %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %63 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %62, i32 0, i32 8
  store %struct.sk_buff* %61, %struct.sk_buff** %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %68 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @SWAP32(i32 %69)
  %71 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %72 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @PKT_BUF_SZ, align 4
  %74 = call i8* @SWAP16(i32 %73)
  %75 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %76 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %31
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %81 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %80, i32 1
  store %struct.i596_rbd* %81, %struct.i596_rbd** %8, align 8
  br label %20

82:                                               ; preds = %20
  %83 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %84 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %83, i32 0, i32 2
  %85 = load %struct.i596_rfd*, %struct.i596_rfd** %84, align 8
  %86 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %87 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %86, i32 0, i32 0
  store %struct.i596_rfd* %85, %struct.i596_rfd** %87, align 8
  %88 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %89 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %88, i32 0, i32 2
  %90 = load %struct.i596_rfd*, %struct.i596_rfd** %89, align 8
  %91 = load i32, i32* @rx_ring_size, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %90, i64 %92
  %94 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %93, i64 -1
  %95 = bitcast %struct.i596_rfd* %94 to %struct.i596_rbd*
  store %struct.i596_rbd* %95, %struct.i596_rbd** %8, align 8
  %96 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %97 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %96, i32 0, i32 2
  %98 = load %struct.i596_rfd*, %struct.i596_rfd** %97, align 8
  %99 = bitcast %struct.i596_rfd* %98 to %struct.i596_rbd*
  %100 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %101 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %100, i32 0, i32 2
  store %struct.i596_rbd* %99, %struct.i596_rbd** %101, align 8
  %102 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %103 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %104 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %103, i32 0, i32 2
  %105 = load %struct.i596_rfd*, %struct.i596_rfd** %104, align 8
  %106 = call i32 @virt_to_dma(%struct.i596_private* %102, %struct.i596_rfd* %105)
  %107 = call i8* @SWAP32(i32 %106)
  %108 = load %struct.i596_rbd*, %struct.i596_rbd** %8, align 8
  %109 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  store i32 0, i32* %6, align 4
  %110 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %111 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %110, i32 0, i32 0
  %112 = load %struct.i596_rfd*, %struct.i596_rfd** %111, align 8
  store %struct.i596_rfd* %112, %struct.i596_rfd** %7, align 8
  br label %113

113:                                              ; preds = %140, %82
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @rx_ring_size, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %113
  %118 = load i8*, i8** @I596_NULL, align 8
  %119 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %120 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %122 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %121, i64 1
  %123 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %124 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %123, i32 0, i32 2
  store %struct.i596_rfd* %122, %struct.i596_rfd** %124, align 8
  %125 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %126 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %125, i64 -1
  %127 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %128 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %127, i32 0, i32 3
  store %struct.i596_rfd* %126, %struct.i596_rfd** %128, align 8
  %129 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %130 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %131 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %130, i64 1
  %132 = call i32 @virt_to_dma(%struct.i596_private* %129, %struct.i596_rfd* %131)
  %133 = call i8* @SWAP32(i32 %132)
  %134 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %135 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* @CMD_FLEX, align 4
  %137 = call i8* @SWAP16(i32 %136)
  %138 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %139 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %117
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  %143 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %144 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %143, i32 1
  store %struct.i596_rfd* %144, %struct.i596_rfd** %7, align 8
  br label %113

145:                                              ; preds = %113
  %146 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %147 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %146, i32 0, i32 0
  %148 = load %struct.i596_rfd*, %struct.i596_rfd** %147, align 8
  %149 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %150 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %149, i32 0, i32 1
  store %struct.i596_rfd* %148, %struct.i596_rfd** %150, align 8
  %151 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %152 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %153 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %152, i32 0, i32 0
  %154 = load %struct.i596_rfd*, %struct.i596_rfd** %153, align 8
  %155 = call i32 @virt_to_dma(%struct.i596_private* %151, %struct.i596_rfd* %154)
  %156 = call i8* @SWAP32(i32 %155)
  %157 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %158 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i8* %156, i8** %159, align 8
  %160 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %161 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %160, i32 0, i32 0
  %162 = load %struct.i596_rfd*, %struct.i596_rfd** %161, align 8
  store %struct.i596_rfd* %162, %struct.i596_rfd** %7, align 8
  %163 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %164 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %165 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %164, i32 0, i32 0
  %166 = load %struct.i596_rfd*, %struct.i596_rfd** %165, align 8
  %167 = call i32 @virt_to_dma(%struct.i596_private* %163, %struct.i596_rfd* %166)
  %168 = call i8* @SWAP32(i32 %167)
  %169 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %170 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  %171 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %172 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %171, i32 0, i32 0
  %173 = load %struct.i596_rfd*, %struct.i596_rfd** %172, align 8
  %174 = load i32, i32* @rx_ring_size, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %173, i64 %175
  %177 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %176, i64 -1
  %178 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %179 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %178, i32 0, i32 3
  store %struct.i596_rfd* %177, %struct.i596_rfd** %179, align 8
  %180 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %181 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %180, i32 0, i32 0
  %182 = load %struct.i596_rfd*, %struct.i596_rfd** %181, align 8
  %183 = load i32, i32* @rx_ring_size, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %182, i64 %184
  %186 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %185, i64 -1
  store %struct.i596_rfd* %186, %struct.i596_rfd** %7, align 8
  %187 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %188 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %187, i32 0, i32 0
  %189 = load %struct.i596_rfd*, %struct.i596_rfd** %188, align 8
  %190 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %191 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %190, i32 0, i32 2
  store %struct.i596_rfd* %189, %struct.i596_rfd** %191, align 8
  %192 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %193 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %194 = getelementptr inbounds %struct.i596_dma, %struct.i596_dma* %193, i32 0, i32 0
  %195 = load %struct.i596_rfd*, %struct.i596_rfd** %194, align 8
  %196 = call i32 @virt_to_dma(%struct.i596_private* %192, %struct.i596_rfd* %195)
  %197 = call i8* @SWAP32(i32 %196)
  %198 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %199 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* @CMD_EOL, align 4
  %201 = load i32, i32* @CMD_FLEX, align 4
  %202 = or i32 %200, %201
  %203 = call i8* @SWAP16(i32 %202)
  %204 = load %struct.i596_rfd*, %struct.i596_rfd** %7, align 8
  %205 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %204, i32 0, i32 0
  store i8* %203, i8** %205, align 8
  %206 = load %struct.net_device*, %struct.net_device** %3, align 8
  %207 = load %struct.i596_dma*, %struct.i596_dma** %5, align 8
  %208 = call i32 @DMA_WBACK_INV(%struct.net_device* %206, %struct.i596_dma* %207, i32 24)
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %145, %30
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.i596_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @SWAP32(i32) #1

declare dso_local i32 @virt_to_dma(%struct.i596_private*, %struct.i596_rfd*) #1

declare dso_local i8* @SWAP16(i32) #1

declare dso_local i32 @DMA_WBACK_INV(%struct.net_device*, %struct.i596_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
