; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_q_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.ixgbevf_ring**, i32, i32, %struct.TYPE_2__*, %struct.ixgbevf_ring**, i32, %struct.ixgbevf_ring**, %struct.ixgbevf_q_vector** }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbevf_ring = type { i32, i32, i32, %struct.ixgbevf_q_vector*, i32, i32* }
%struct.ixgbevf_q_vector = type { i32, i32, i32, %struct.ixgbevf_ring*, %struct.ixgbevf_adapter*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ixgbevf_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*, i32, i32, i32, i32, i32, i32, i32)* @ixgbevf_alloc_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_alloc_q_vector(%struct.ixgbevf_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbevf_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ixgbevf_q_vector*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ixgbevf_ring*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %15, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %14, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %16, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* %21, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 40, %32
  %34 = add i64 40, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %22, align 4
  %36 = load i32, i32* %22, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.ixgbevf_q_vector* @kzalloc(i32 %36, i32 %37)
  store %struct.ixgbevf_q_vector* %38, %struct.ixgbevf_q_vector** %18, align 8
  %39 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %40 = icmp ne %struct.ixgbevf_q_vector* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %8
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %215

44:                                               ; preds = %8
  %45 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %48, i32 0, i32 5
  %50 = load i32, i32* @ixgbevf_poll, align 4
  %51 = call i32 @netif_napi_add(i32 %47, i32* %49, i32 %50, i32 64)
  %52 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %53 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %53, i32 0, i32 7
  %55 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %55, i64 %57
  store %struct.ixgbevf_q_vector* %52, %struct.ixgbevf_q_vector** %58, align 8
  %59 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %60 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %61 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %60, i32 0, i32 4
  store %struct.ixgbevf_adapter* %59, %struct.ixgbevf_adapter** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %64 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %65, i32 0, i32 3
  %67 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %66, align 8
  store %struct.ixgbevf_ring* %67, %struct.ixgbevf_ring** %20, align 8
  br label %68

68:                                               ; preds = %71, %44
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %68
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %77 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %76, i32 0, i32 5
  store i32* %75, i32** %77, align 8
  %78 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %82 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %84 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %85 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %84, i32 0, i32 3
  store %struct.ixgbevf_q_vector* %83, %struct.ixgbevf_q_vector** %85, align 8
  %86 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %87 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %88 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %87, i32 0, i32 2
  %89 = call i32 @ixgbevf_add_ring(%struct.ixgbevf_ring* %86, i32* %88)
  %90 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %91 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %94 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %97 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %100 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %102 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %103 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %102, i32 0, i32 6
  %104 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %104, i64 %106
  store %struct.ixgbevf_ring* %101, %struct.ixgbevf_ring** %107, align 8
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  %114 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %115 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %114, i32 1
  store %struct.ixgbevf_ring* %115, %struct.ixgbevf_ring** %20, align 8
  br label %68

116:                                              ; preds = %68
  br label %117

117:                                              ; preds = %120, %116
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %167

120:                                              ; preds = %117
  %121 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %122 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %126 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %125, i32 0, i32 5
  store i32* %124, i32** %126, align 8
  %127 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %128 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %131 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %133 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %134 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %133, i32 0, i32 3
  store %struct.ixgbevf_q_vector* %132, %struct.ixgbevf_q_vector** %134, align 8
  %135 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %136 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %137 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %136, i32 0, i32 2
  %138 = call i32 @ixgbevf_add_ring(%struct.ixgbevf_ring* %135, i32* %137)
  %139 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %140 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %143 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %146 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %149 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %151 = call i32 @set_ring_xdp(%struct.ixgbevf_ring* %150)
  %152 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %153 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %154 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %153, i32 0, i32 4
  %155 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %155, i64 %157
  store %struct.ixgbevf_ring* %152, %struct.ixgbevf_ring** %158, align 8
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %19, align 4
  %165 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %166 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %165, i32 1
  store %struct.ixgbevf_ring* %166, %struct.ixgbevf_ring** %20, align 8
  br label %117

167:                                              ; preds = %117
  br label %168

168:                                              ; preds = %171, %167
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %214

171:                                              ; preds = %168
  %172 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %173 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %172, i32 0, i32 3
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %177 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %176, i32 0, i32 5
  store i32* %175, i32** %177, align 8
  %178 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %179 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %182 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  %183 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %184 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %185 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %184, i32 0, i32 3
  store %struct.ixgbevf_q_vector* %183, %struct.ixgbevf_q_vector** %185, align 8
  %186 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %187 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, align 8
  %188 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %187, i32 0, i32 1
  %189 = call i32 @ixgbevf_add_ring(%struct.ixgbevf_ring* %186, i32* %188)
  %190 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %191 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %194 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %17, align 4
  %196 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %197 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %17, align 4
  %199 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %200 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %202 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %10, align 8
  %203 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %202, i32 0, i32 0
  %204 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %203, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %204, i64 %206
  store %struct.ixgbevf_ring* %201, %struct.ixgbevf_ring** %207, align 8
  %208 = load i32, i32* %16, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %17, align 4
  %212 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %213 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %212, i32 1
  store %struct.ixgbevf_ring* %213, %struct.ixgbevf_ring** %20, align 8
  br label %168

214:                                              ; preds = %168
  store i32 0, i32* %9, align 4
  br label %215

215:                                              ; preds = %214, %41
  %216 = load i32, i32* %9, align 4
  ret i32 %216
}

declare dso_local %struct.ixgbevf_q_vector* @kzalloc(i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @ixgbevf_add_ring(%struct.ixgbevf_ring*, i32*) #1

declare dso_local i32 @set_ring_xdp(%struct.ixgbevf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
