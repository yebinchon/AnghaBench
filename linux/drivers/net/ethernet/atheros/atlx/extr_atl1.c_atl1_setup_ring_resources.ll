; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_setup_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_setup_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.pci_dev*, %struct.atl1_ring_header, %struct.atl1_rrd_ring, %struct.atl1_rfd_ring, %struct.atl1_tpd_ring }
%struct.TYPE_4__ = type { i32, %struct.coals_msg_block* }
%struct.coals_msg_block = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.stats_msg_block* }
%struct.stats_msg_block = type { i32 }
%struct.pci_dev = type { i32 }
%struct.atl1_ring_header = type { i32, i32, i64 }
%struct.atl1_rrd_ring = type { i32, i32, i32*, i32 }
%struct.atl1_rfd_ring = type { i32, i32, i32*, i32, i64 }
%struct.atl1_tpd_ring = type { i32, i32, i32*, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"kzalloc failed , size = D%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"pci_alloc_consistent failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_adapter*)* @atl1_setup_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_setup_ring_resources(%struct.atl1_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1_adapter*, align 8
  %4 = alloca %struct.atl1_tpd_ring*, align 8
  %5 = alloca %struct.atl1_rfd_ring*, align 8
  %6 = alloca %struct.atl1_rrd_ring*, align 8
  %7 = alloca %struct.atl1_ring_header*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %3, align 8
  %11 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %11, i32 0, i32 6
  store %struct.atl1_tpd_ring* %12, %struct.atl1_tpd_ring** %4, align 8
  %13 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %13, i32 0, i32 5
  store %struct.atl1_rfd_ring* %14, %struct.atl1_rfd_ring** %5, align 8
  %15 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %15, i32 0, i32 4
  store %struct.atl1_rrd_ring* %16, %struct.atl1_rrd_ring** %6, align 8
  %17 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %17, i32 0, i32 3
  store %struct.atl1_ring_header* %18, %struct.atl1_ring_header** %7, align 8
  %19 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %19, i32 0, i32 2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %23 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %26 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i64 @kzalloc(i32 %32, i32 %33)
  %35 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %36 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %38 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %1
  %46 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %47 = call i64 @netif_msg_drv(%struct.atl1_adapter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  br label %344

55:                                               ; preds = %1
  %56 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %57 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %60 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %65 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %67 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %72 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = add i64 %70, %75
  %77 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %78 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = add i64 %76, %81
  %83 = add i64 %82, 4
  %84 = add i64 %83, 4
  %85 = add i64 %84, 40
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %88 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %90 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %91 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %94 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %93, i32 0, i32 1
  %95 = call i64 @pci_alloc_consistent(%struct.pci_dev* %89, i32 %92, i32* %94)
  %96 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %97 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %99 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %55
  %107 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %108 = call i64 @netif_msg_drv(%struct.atl1_adapter* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %106
  br label %344

115:                                              ; preds = %55
  %116 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %117 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %120 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %122 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 7
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %115
  %127 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %128 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 7
  %131 = sub nsw i32 8, %130
  br label %133

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %126
  %134 = phi i32 [ %131, %126 ], [ 0, %132 ]
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %137 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %141 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %148 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %147, i32 0, i32 2
  store i32* %146, i32** %148, align 8
  %149 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %150 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = mul i64 4, %152
  %154 = trunc i64 %153 to i32
  %155 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %156 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %158 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %161 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %159, %162
  %164 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %165 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %167 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 7
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %133
  %172 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %173 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 7
  %176 = sub nsw i32 8, %175
  br label %178

177:                                              ; preds = %133
  br label %178

178:                                              ; preds = %177, %171
  %179 = phi i32 [ %176, %171 ], [ 0, %177 ]
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %182 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %186 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %189 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %187, i64 %193
  %195 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %196 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %195, i32 0, i32 2
  store i32* %194, i32** %196, align 8
  %197 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %198 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = mul i64 4, %200
  %202 = trunc i64 %201 to i32
  %203 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %204 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %206 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %209 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %207, %210
  %212 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %213 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  %214 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %215 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, 7
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %178
  %220 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %221 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 7
  %224 = sub nsw i32 8, %223
  br label %226

225:                                              ; preds = %178
  br label %226

226:                                              ; preds = %225, %219
  %227 = phi i32 [ %224, %219 ], [ 0, %225 ]
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %230 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, %228
  store i32 %232, i32* %230, align 4
  %233 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %234 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %237 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %235, i64 %241
  %243 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %244 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %243, i32 0, i32 2
  store i32* %242, i32** %244, align 8
  %245 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %246 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = mul i64 4, %248
  %250 = trunc i64 %249 to i32
  %251 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %252 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 8
  %253 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %254 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %257 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %255, %258
  %260 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %261 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  store i32 %259, i32* %262, align 8
  %263 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %264 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, 7
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %226
  %270 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %271 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, 7
  %275 = sub nsw i32 8, %274
  br label %277

276:                                              ; preds = %226
  br label %277

277:                                              ; preds = %276, %269
  %278 = phi i32 [ %275, %269 ], [ 0, %276 ]
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %281 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, %279
  store i32 %284, i32* %282, align 8
  %285 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %286 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %289 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %287, i64 %293
  %295 = bitcast i32* %294 to %struct.coals_msg_block*
  %296 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %297 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  store %struct.coals_msg_block* %295, %struct.coals_msg_block** %298, align 8
  %299 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %300 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = add i64 %303, 4
  %305 = trunc i64 %304 to i32
  %306 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %307 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  store i32 %305, i32* %308, align 8
  %309 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %310 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, 7
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %277
  %316 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %317 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = and i32 %319, 7
  %321 = sub nsw i32 8, %320
  br label %323

322:                                              ; preds = %277
  br label %323

323:                                              ; preds = %322, %315
  %324 = phi i32 [ %321, %315 ], [ 0, %322 ]
  store i32 %324, i32* %10, align 4
  %325 = load i32, i32* %10, align 4
  %326 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %327 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %329, %325
  store i32 %330, i32* %328, align 8
  %331 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %332 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 1
  %334 = load %struct.coals_msg_block*, %struct.coals_msg_block** %333, align 8
  %335 = bitcast %struct.coals_msg_block* %334 to i32*
  %336 = load i32, i32* %10, align 4
  %337 = sext i32 %336 to i64
  %338 = add i64 4, %337
  %339 = getelementptr inbounds i32, i32* %335, i64 %338
  %340 = bitcast i32* %339 to %struct.stats_msg_block*
  %341 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %342 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 1
  store %struct.stats_msg_block* %340, %struct.stats_msg_block** %343, align 8
  store i32 0, i32* %2, align 4
  br label %351

344:                                              ; preds = %114, %54
  %345 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %346 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = call i32 @kfree(i64 %347)
  %349 = load i32, i32* @ENOMEM, align 4
  %350 = sub nsw i32 0, %349
  store i32 %350, i32* %2, align 4
  br label %351

351:                                              ; preds = %344, %323
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_drv(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
