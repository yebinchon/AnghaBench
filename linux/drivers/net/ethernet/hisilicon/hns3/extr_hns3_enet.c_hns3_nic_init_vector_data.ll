; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_init_vector_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_init_vector_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { i32, %struct.hns3_enet_tqp_vector*, i32, %struct.TYPE_8__*, %struct.hnae3_handle* }
%struct.hns3_enet_tqp_vector = type { i32, i32, %struct.hnae3_handle*, %struct.TYPE_11__, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.hns3_enet_tqp_vector* }
%struct.hnae3_handle = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)* }
%struct.hnae3_ring_chain_node = type { i32 }
%struct.TYPE_7__ = type { i32 }

@hns3_nic_common_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_nic_priv*)* @hns3_nic_init_vector_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_nic_init_vector_data(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns3_nic_priv*, align 8
  %4 = alloca %struct.hnae3_ring_chain_node, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %3, align 8
  %11 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %12 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %11, i32 0, i32 4
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %12, align 8
  store %struct.hnae3_handle* %13, %struct.hnae3_handle** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %15 = call i32 @hns3_nic_set_cpumask(%struct.hns3_nic_priv* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %34, %1
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %19 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %24 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %23, i32 0, i32 1
  %25 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %25, i64 %27
  store %struct.hns3_enet_tqp_vector* %28, %struct.hns3_enet_tqp_vector** %6, align 8
  %29 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %30 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %31 = call i32 @hns3_vector_gl_rl_init_hw(%struct.hns3_enet_tqp_vector* %29, %struct.hns3_nic_priv* %30)
  %32 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %33 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %16

37:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %112, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %41 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %115

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %48 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = srem i32 %46, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %9, align 8
  %52 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %53 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %10, align 8
  %57 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %58 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %57, i32 0, i32 1
  %59 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %59, i64 %60
  store %struct.hns3_enet_tqp_vector* %61, %struct.hns3_enet_tqp_vector** %6, align 8
  %62 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %63 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %62, i32 0, i32 3
  %64 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %65 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %64, i32 0, i32 3
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = call i32 @hns3_add_ring_to_group(%struct.TYPE_11__* %63, %struct.TYPE_12__* %71)
  %73 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %74 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %73, i32 0, i32 4
  %75 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %76 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %79, %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = call i32 @hns3_add_ring_to_group(%struct.TYPE_11__* %74, %struct.TYPE_12__* %84)
  %86 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %87 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %88 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %87, i32 0, i32 3
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store %struct.hns3_enet_tqp_vector* %86, %struct.hns3_enet_tqp_vector** %95, align 8
  %96 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %97 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %98 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %101, %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store %struct.hns3_enet_tqp_vector* %96, %struct.hns3_enet_tqp_vector** %107, align 8
  %108 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %109 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %45
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %38

115:                                              ; preds = %38
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %176, %115
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %119 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %179

122:                                              ; preds = %116
  %123 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %124 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %123, i32 0, i32 1
  %125 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %125, i64 %127
  store %struct.hns3_enet_tqp_vector* %128, %struct.hns3_enet_tqp_vector** %6, align 8
  %129 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %130 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %133 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %136 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %139 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %142 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %143 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %142, i32 0, i32 2
  store %struct.hnae3_handle* %141, %struct.hnae3_handle** %143, align 8
  %144 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %145 = call i32 @hns3_get_vector_ring_chain(%struct.hns3_enet_tqp_vector* %144, %struct.hnae3_ring_chain_node* %4)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %122
  br label %180

149:                                              ; preds = %122
  %150 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %151 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)*, i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)** %155, align 8
  %157 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %158 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %159 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 %156(%struct.hnae3_handle* %157, i32 %160, %struct.hnae3_ring_chain_node* %4)
  store i32 %161, i32* %7, align 4
  %162 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %163 = call i32 @hns3_free_vector_ring_chain(%struct.hns3_enet_tqp_vector* %162, %struct.hnae3_ring_chain_node* %4)
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %149
  br label %180

167:                                              ; preds = %149
  %168 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %169 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %6, align 8
  %172 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %171, i32 0, i32 0
  %173 = load i32, i32* @hns3_nic_common_poll, align 4
  %174 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %175 = call i32 @netif_napi_add(i32 %170, i32* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %116

179:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %196

180:                                              ; preds = %166, %148
  br label %181

181:                                              ; preds = %185, %180
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %8, align 4
  %184 = icmp ne i32 %182, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %181
  %186 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %187 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %186, i32 0, i32 1
  %188 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %188, i64 %190
  %192 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %191, i32 0, i32 0
  %193 = call i32 @netif_napi_del(i32* %192)
  br label %181

194:                                              ; preds = %181
  %195 = load i32, i32* %7, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %194, %179
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @hns3_nic_set_cpumask(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_vector_gl_rl_init_hw(%struct.hns3_enet_tqp_vector*, %struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_add_ring_to_group(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @hns3_get_vector_ring_chain(%struct.hns3_enet_tqp_vector*, %struct.hnae3_ring_chain_node*) #1

declare dso_local i32 @hns3_free_vector_ring_chain(%struct.hns3_enet_tqp_vector*, %struct.hnae3_ring_chain_node*) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
