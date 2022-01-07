; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.i40e_ring**, i32, i32*, i64, i32*, %struct.i40e_pf*, i32, i32* }
%struct.i40e_ring = type { i32, i32, i32, i64, i64, i32, i32*, i32*, %struct.i40e_vsi*, i64, i8* }
%struct.i40e_pf = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@I40E_HW_WB_ON_ITR_CAPABLE = common dso_local global i32 0, align 4
@I40E_TXR_FLAGS_WB_ON_ITR = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_alloc_rings(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_ring*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %9 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 3, i32 2
  store i32 %12, i32* %5, align 4
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 6
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %6, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %215, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %218

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.i40e_ring* @kcalloc(i32 %23, i32 80, i32 %24)
  store %struct.i40e_ring* %25, %struct.i40e_ring** %7, align 8
  %26 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %27 = icmp ne %struct.i40e_ring* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %219

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %32 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %40 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %39, i32 0, i32 9
  store i64 %38, i64* %40, align 8
  %41 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %42 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %44 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %45 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %44, i32 0, i32 8
  store %struct.i40e_vsi* %43, %struct.i40e_vsi** %45, align 8
  %46 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %47 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %50 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %49, i32 0, i32 7
  store i32* %48, i32** %50, align 8
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %56 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %55, i32 0, i32 6
  store i32* %54, i32** %56, align 8
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %58 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %61 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %63 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %65 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %67 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %66, i32 0, i32 6
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %67, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @I40E_HW_WB_ON_ITR_CAPABLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %29
  %75 = load i8*, i8** @I40E_TXR_FLAGS_WB_ON_ITR, align 8
  %76 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %77 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %76, i32 0, i32 10
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %29
  %79 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %80 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %83 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %85 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %84, i32 1
  store %struct.i40e_ring* %85, %struct.i40e_ring** %7, align 8
  %86 = ptrtoint %struct.i40e_ring* %84 to i32
  %87 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  %93 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %94 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %78
  br label %166

97:                                               ; preds = %78
  %98 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %99 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %104 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %106 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %109 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %107, %111
  %113 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %114 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %113, i32 0, i32 9
  store i64 %112, i64* %114, align 8
  %115 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %116 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %118 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %119 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %118, i32 0, i32 8
  store %struct.i40e_vsi* %117, %struct.i40e_vsi** %119, align 8
  %120 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %121 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %120, i32 0, i32 7
  store i32* null, i32** %121, align 8
  %122 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %123 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %127 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %126, i32 0, i32 6
  store i32* %125, i32** %127, align 8
  %128 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %129 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %132 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  %133 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %134 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %133, i32 0, i32 4
  store i64 0, i64* %134, align 8
  %135 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %136 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %135, i32 0, i32 3
  store i64 0, i64* %136, align 8
  %137 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %138 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %137, i32 0, i32 6
  %139 = load %struct.i40e_pf*, %struct.i40e_pf** %138, align 8
  %140 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @I40E_HW_WB_ON_ITR_CAPABLE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %97
  %146 = load i8*, i8** @I40E_TXR_FLAGS_WB_ON_ITR, align 8
  %147 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %148 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %147, i32 0, i32 10
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %97
  %150 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %151 = call i32 @set_ring_xdp(%struct.i40e_ring* %150)
  %152 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %153 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %156 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %158 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %157, i32 1
  store %struct.i40e_ring* %158, %struct.i40e_ring** %7, align 8
  %159 = ptrtoint %struct.i40e_ring* %157 to i32
  %160 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %161 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  br label %166

166:                                              ; preds = %149, %96
  %167 = load i32, i32* %4, align 4
  %168 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %169 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %171 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  %176 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %177 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %176, i32 0, i32 9
  store i64 %175, i64* %177, align 8
  %178 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %179 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  %180 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %181 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %182 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %181, i32 0, i32 8
  store %struct.i40e_vsi* %180, %struct.i40e_vsi** %182, align 8
  %183 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %184 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %187 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %186, i32 0, i32 7
  store i32* %185, i32** %187, align 8
  %188 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %189 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %188, i32 0, i32 2
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %193 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %192, i32 0, i32 6
  store i32* %191, i32** %193, align 8
  %194 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %195 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %198 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 8
  %199 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %200 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %199, i32 0, i32 4
  store i64 0, i64* %200, align 8
  %201 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %202 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %201, i32 0, i32 3
  store i64 0, i64* %202, align 8
  %203 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %204 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %207 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %209 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %210 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %209, i32 0, i32 1
  %211 = load %struct.i40e_ring**, %struct.i40e_ring*** %210, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %211, i64 %213
  store %struct.i40e_ring* %208, %struct.i40e_ring** %214, align 8
  br label %215

215:                                              ; preds = %166
  %216 = load i32, i32* %4, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %4, align 4
  br label %16

218:                                              ; preds = %16
  store i32 0, i32* %2, align 4
  br label %224

219:                                              ; preds = %28
  %220 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %221 = call i32 @i40e_vsi_clear_rings(%struct.i40e_vsi* %220)
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %219, %218
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local %struct.i40e_ring* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @set_ring_xdp(%struct.i40e_ring*) #1

declare dso_local i32 @i40e_vsi_clear_rings(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
