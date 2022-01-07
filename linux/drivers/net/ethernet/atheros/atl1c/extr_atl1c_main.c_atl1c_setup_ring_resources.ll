; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_setup_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_setup_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { %struct.atl1c_ring_header, %struct.atl1c_rrd_ring, %struct.atl1c_rfd_ring, %struct.atl1c_tpd_ring*, %struct.pci_dev* }
%struct.atl1c_ring_header = type { i32, i32, i64 }
%struct.atl1c_rrd_ring = type { i32, i32, i32, i32* }
%struct.atl1c_rfd_ring = type { i32, i32, i32, i32*, i64 }
%struct.atl1c_tpd_ring = type { i32, i32, i32, i64, i32* }
%struct.pci_dev = type { i32 }

@AT_MAX_TRANSMIT_QUEUE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not get memory for DMA buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_adapter*)* @atl1c_setup_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_setup_ring_resources(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.atl1c_tpd_ring*, align 8
  %6 = alloca %struct.atl1c_rfd_ring*, align 8
  %7 = alloca %struct.atl1c_rrd_ring*, align 8
  %8 = alloca %struct.atl1c_ring_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  %14 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %14, i32 0, i32 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %4, align 8
  %17 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %17, i32 0, i32 3
  %19 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %18, align 8
  store %struct.atl1c_tpd_ring* %19, %struct.atl1c_tpd_ring** %5, align 8
  %20 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %20, i32 0, i32 2
  store %struct.atl1c_rfd_ring* %21, %struct.atl1c_rfd_ring** %6, align 8
  %22 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %22, i32 0, i32 1
  store %struct.atl1c_rrd_ring* %23, %struct.atl1c_rrd_ring** %7, align 8
  %24 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %24, i32 0, i32 0
  store %struct.atl1c_ring_header* %25, %struct.atl1c_ring_header** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %27 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %7, align 8
  %30 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %45, %1
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @AT_MAX_TRANSMIT_QUEUE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %37 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %36, i64 0
  %38 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %40, i64 %42
  %44 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 8
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %50 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 2
  %53 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %54 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i64 @kzalloc(i32 %60, i32 %61)
  %63 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %64 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %66 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %48
  br label %292

74:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %99, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @AT_MAX_TRANSMIT_QUEUE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %81 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %86, i64 %88
  %90 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %89, i32 0, i32 3
  store i64 %85, i64* %90, align 8
  %91 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %91, i64 %93
  %95 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %79
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %75

102:                                              ; preds = %75
  %103 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %104 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %110 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %112 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %117 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %12, align 4
  %121 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %122 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = mul i64 4, %124
  %126 = mul i64 %125, 2
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 4, %128
  %130 = add i64 %126, %129
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 4, %132
  %134 = add i64 %130, %133
  %135 = add i64 %134, 32
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %9, align 4
  %137 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %138 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %142 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %145 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %144, i32 0, i32 1
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call i64 @dma_alloc_coherent(i32* %140, i32 %143, i32* %145, i32 %146)
  %148 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %149 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %151 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %102
  %159 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 0
  %161 = call i32 @dev_err(i32* %160, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %292

162:                                              ; preds = %102
  %163 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %164 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @roundup(i32 %165, i32 8)
  %167 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %168 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %167, i64 0
  %169 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %171 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %170, i64 0
  %172 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %175 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %173, %176
  store i32 %177, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %178

178:                                              ; preds = %228, %162
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @AT_MAX_TRANSMIT_QUEUE, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %231

182:                                              ; preds = %178
  %183 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %184 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %185, %186
  %188 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %188, i64 %190
  %192 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %191, i32 0, i32 1
  store i32 %187, i32* %192, align 4
  %193 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %194 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i32*
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %200, i64 %202
  %204 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %203, i32 0, i32 4
  store i32* %199, i32** %204, align 8
  %205 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %205, i64 %207
  %209 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = mul i64 4, %211
  %213 = trunc i64 %212 to i32
  %214 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %214, i64 %216
  %218 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %217, i32 0, i32 2
  store i32 %213, i32* %218, align 8
  %219 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %219, i64 %221
  %223 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @roundup(i32 %224, i32 8)
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %13, align 4
  br label %228

228:                                              ; preds = %182
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %10, align 4
  br label %178

231:                                              ; preds = %178
  %232 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %233 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %234, %235
  %237 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %238 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %240 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to i32*
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %247 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %246, i32 0, i32 3
  store i32* %245, i32** %247, align 8
  %248 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %249 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = mul i64 4, %251
  %253 = trunc i64 %252 to i32
  %254 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %255 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 8
  %256 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %6, align 8
  %257 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @roundup(i32 %258, i32 8)
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %13, align 4
  %262 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %263 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %264, %265
  %267 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %7, align 8
  %268 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  %269 = load %struct.atl1c_ring_header*, %struct.atl1c_ring_header** %8, align 8
  %270 = getelementptr inbounds %struct.atl1c_ring_header, %struct.atl1c_ring_header* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = inttoptr i64 %271 to i32*
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %7, align 8
  %277 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %276, i32 0, i32 3
  store i32* %275, i32** %277, align 8
  %278 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %7, align 8
  %279 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = mul i64 4, %281
  %283 = trunc i64 %282 to i32
  %284 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %7, align 8
  %285 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 8
  %286 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %7, align 8
  %287 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @roundup(i32 %288, i32 8)
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %13, align 4
  store i32 0, i32* %2, align 4
  br label %299

292:                                              ; preds = %158, %73
  %293 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %294 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @kfree(i64 %295)
  %297 = load i32, i32* @ENOMEM, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %2, align 4
  br label %299

299:                                              ; preds = %292, %231
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
