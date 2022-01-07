; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_alloc_q_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_alloc_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.igb_ring**, i32, %struct.TYPE_7__, i32, %struct.TYPE_5__*, %struct.igb_ring**, i32, i64, i32, %struct.igb_q_vector** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.igb_ring = type { i32, i32, i32, i32, i32, %struct.igb_q_vector*, i32, i32*, i32, i32, i64, i64, i64, i64 }
%struct.igb_q_vector = type { i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.igb_ring*, i64, %struct.igb_adapter*, i32 }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@igb_poll = common dso_local global i32 0, align 4
@IGB_START_ITR = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i64 0, align 8
@IGB_RING_FLAG_TX_CTX_IDX = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@IGB_RING_FLAG_RX_SCTP_CSUM = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@IGB_RING_FLAG_RX_LB_VLAN_BSWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32, i32, i32, i32, i32, i32)* @igb_alloc_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_alloc_q_vector(%struct.igb_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.igb_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.igb_q_vector*, align 8
  %17 = alloca %struct.igb_ring*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %14, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %7
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %280

28:                                               ; preds = %22
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %18, align 4
  %32 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %33 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %34 = load i32, i32* %18, align 4
  %35 = call i64 @struct_size(%struct.igb_q_vector* %32, %struct.igb_ring* %33, i32 %34)
  store i64 %35, i64* %19, align 8
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 11
  %38 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %38, i64 %40
  %42 = load %struct.igb_q_vector*, %struct.igb_q_vector** %41, align 8
  store %struct.igb_q_vector* %42, %struct.igb_q_vector** %16, align 8
  %43 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %44 = icmp ne %struct.igb_q_vector* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %28
  %46 = load i64, i64* %19, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.igb_q_vector* @kzalloc(i64 %46, i32 %47)
  store %struct.igb_q_vector* %48, %struct.igb_q_vector** %16, align 8
  br label %66

49:                                               ; preds = %28
  %50 = load i64, i64* %19, align 8
  %51 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %52 = call i64 @ksize(%struct.igb_q_vector* %51)
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %56 = load i32, i32* @rcu, align 4
  %57 = call i32 @kfree_rcu(%struct.igb_q_vector* %55, i32 %56)
  %58 = load i64, i64* %19, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.igb_q_vector* @kzalloc(i64 %58, i32 %59)
  store %struct.igb_q_vector* %60, %struct.igb_q_vector** %16, align 8
  br label %65

61:                                               ; preds = %49
  %62 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %63 = load i64, i64* %19, align 8
  %64 = call i32 @memset(%struct.igb_q_vector* %62, i32 0, i64 %63)
  br label %65

65:                                               ; preds = %61, %54
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %68 = icmp ne %struct.igb_q_vector* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %280

72:                                               ; preds = %66
  %73 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %74 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %77 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %76, i32 0, i32 6
  %78 = load i32, i32* @igb_poll, align 4
  %79 = call i32 @netif_napi_add(i32 %75, i32* %77, i32 %78, i32 64)
  %80 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %81 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %82 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %81, i32 0, i32 11
  %83 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %83, i64 %85
  store %struct.igb_q_vector* %80, %struct.igb_q_vector** %86, align 8
  %87 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %88 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %89 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %88, i32 0, i32 5
  store %struct.igb_adapter* %87, %struct.igb_adapter** %89, align 8
  %90 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %91 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %94 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %97 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @E1000_EITR(i32 0)
  %100 = add nsw i64 %98, %99
  %101 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %102 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @IGB_START_ITR, align 4
  %104 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %105 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %107 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %106, i32 0, i32 3
  %108 = load %struct.igb_ring*, %struct.igb_ring** %107, align 8
  store %struct.igb_ring* %108, %struct.igb_ring** %17, align 8
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %72
  %112 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %113 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %118 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 3
  br i1 %120, label %121, label %127

121:                                              ; preds = %116, %111
  %122 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %123 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %126 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %116
  br label %145

128:                                              ; preds = %72
  %129 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %130 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %135 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 3
  br i1 %137, label %138, label %144

138:                                              ; preds = %133, %128
  %139 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %140 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %143 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %138, %133
  br label %145

145:                                              ; preds = %144, %127
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %213

148:                                              ; preds = %145
  %149 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %150 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %149, i32 0, i32 6
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %154 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %153, i32 0, i32 7
  store i32* %152, i32** %154, align 8
  %155 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %156 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %159 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 8
  %160 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %161 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %162 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %161, i32 0, i32 5
  store %struct.igb_q_vector* %160, %struct.igb_q_vector** %162, align 8
  %163 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %164 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %165 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %164, i32 0, i32 2
  %166 = call i32 @igb_add_ring(%struct.igb_ring* %163, %struct.TYPE_8__* %165)
  %167 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %168 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @e1000_82575, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %148
  %175 = load i32, i32* @IGB_RING_FLAG_TX_CTX_IDX, align 4
  %176 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %177 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %176, i32 0, i32 4
  %178 = call i32 @set_bit(i32 %175, i32* %177)
  br label %179

179:                                              ; preds = %174, %148
  %180 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %181 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %184 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %187 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %189 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %188, i32 0, i32 1
  store i32 0, i32* %189, align 4
  %190 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %191 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %190, i32 0, i32 13
  store i64 0, i64* %191, align 8
  %192 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %193 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %192, i32 0, i32 12
  store i64 0, i64* %193, align 8
  %194 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %195 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %194, i32 0, i32 11
  store i64 0, i64* %195, align 8
  %196 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %197 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %196, i32 0, i32 10
  store i64 0, i64* %197, align 8
  %198 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %199 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %198, i32 0, i32 9
  %200 = call i32 @u64_stats_init(i32* %199)
  %201 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %202 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %201, i32 0, i32 8
  %203 = call i32 @u64_stats_init(i32* %202)
  %204 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %205 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %206 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %205, i32 0, i32 7
  %207 = load %struct.igb_ring**, %struct.igb_ring*** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %207, i64 %209
  store %struct.igb_ring* %204, %struct.igb_ring** %210, align 8
  %211 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %212 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %211, i32 1
  store %struct.igb_ring* %212, %struct.igb_ring** %17, align 8
  br label %213

213:                                              ; preds = %179, %145
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %279

216:                                              ; preds = %213
  %217 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %218 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %217, i32 0, i32 6
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %222 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %221, i32 0, i32 7
  store i32* %220, i32** %222, align 8
  %223 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %224 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %227 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %226, i32 0, i32 6
  store i32 %225, i32* %227, align 8
  %228 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %229 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %230 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %229, i32 0, i32 5
  store %struct.igb_q_vector* %228, %struct.igb_q_vector** %230, align 8
  %231 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %232 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  %233 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %232, i32 0, i32 1
  %234 = call i32 @igb_add_ring(%struct.igb_ring* %231, %struct.TYPE_8__* %233)
  %235 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %236 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @e1000_82576, align 8
  %241 = icmp sge i64 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %216
  %243 = load i32, i32* @IGB_RING_FLAG_RX_SCTP_CSUM, align 4
  %244 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %245 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %244, i32 0, i32 4
  %246 = call i32 @set_bit(i32 %243, i32* %245)
  br label %247

247:                                              ; preds = %242, %216
  %248 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %249 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @e1000_i350, align 8
  %254 = icmp sge i64 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %247
  %256 = load i32, i32* @IGB_RING_FLAG_RX_LB_VLAN_BSWAP, align 4
  %257 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %258 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %257, i32 0, i32 4
  %259 = call i32 @set_bit(i32 %256, i32* %258)
  br label %260

260:                                              ; preds = %255, %247
  %261 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %262 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %265 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %15, align 4
  %267 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %268 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %270 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %269, i32 0, i32 2
  %271 = call i32 @u64_stats_init(i32* %270)
  %272 = load %struct.igb_ring*, %struct.igb_ring** %17, align 8
  %273 = load %struct.igb_adapter*, %struct.igb_adapter** %9, align 8
  %274 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %273, i32 0, i32 2
  %275 = load %struct.igb_ring**, %struct.igb_ring*** %274, align 8
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %275, i64 %277
  store %struct.igb_ring* %272, %struct.igb_ring** %278, align 8
  br label %279

279:                                              ; preds = %260, %213
  store i32 0, i32* %8, align 4
  br label %280

280:                                              ; preds = %279, %69, %25
  %281 = load i32, i32* %8, align 4
  ret i32 %281
}

declare dso_local i64 @struct_size(%struct.igb_q_vector*, %struct.igb_ring*, i32) #1

declare dso_local %struct.igb_q_vector* @kzalloc(i64, i32) #1

declare dso_local i64 @ksize(%struct.igb_q_vector*) #1

declare dso_local i32 @kfree_rcu(%struct.igb_q_vector*, i32) #1

declare dso_local i32 @memset(%struct.igb_q_vector*, i32, i64) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i64 @E1000_EITR(i32) #1

declare dso_local i32 @igb_add_ring(%struct.igb_ring*, %struct.TYPE_8__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @u64_stats_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
