; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_alloc_q_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_alloc_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.fm10k_ring**, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__, i32, %struct.fm10k_ring**, i32, i32, %struct.fm10k_q_vector** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.fm10k_ring = type { i32, i32, %struct.fm10k_q_vector*, i32, i32, i32* }
%struct.fm10k_q_vector = type { i32, %struct.TYPE_9__, %struct.TYPE_6__, %struct.fm10k_ring*, %struct.fm10k_intfc*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.fm10k_ring* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.fm10k_ring* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fm10k_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@FM10K_DEFAULT_TX_WORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*, i32, i32, i32, i32, i32, i32)* @fm10k_alloc_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_alloc_q_vector(%struct.fm10k_intfc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.fm10k_intfc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fm10k_q_vector*, align 8
  %17 = alloca %struct.fm10k_ring*, align 8
  %18 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %14, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %18, align 4
  %22 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %23 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %24 = load i32, i32* %18, align 4
  %25 = call i32 @struct_size(%struct.fm10k_q_vector* %22, %struct.fm10k_ring* %23, i32 %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.fm10k_q_vector* @kzalloc(i32 %25, i32 %26)
  store %struct.fm10k_q_vector* %27, %struct.fm10k_q_vector** %16, align 8
  %28 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %29 = icmp ne %struct.fm10k_q_vector* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %197

33:                                               ; preds = %7
  %34 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %35 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %38 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %37, i32 0, i32 5
  %39 = load i32, i32* @fm10k_poll, align 4
  %40 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %41 = call i32 @netif_napi_add(i32 %36, i32* %38, i32 %39, i32 %40)
  %42 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %43 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %44 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %43, i32 0, i32 10
  %45 = load %struct.fm10k_q_vector**, %struct.fm10k_q_vector*** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %45, i64 %47
  store %struct.fm10k_q_vector* %42, %struct.fm10k_q_vector** %48, align 8
  %49 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %50 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %51 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %50, i32 0, i32 4
  store %struct.fm10k_intfc* %49, %struct.fm10k_intfc** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %54 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %56 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %55, i32 0, i32 3
  %57 = load %struct.fm10k_ring*, %struct.fm10k_ring** %56, align 8
  store %struct.fm10k_ring* %57, %struct.fm10k_ring** %17, align 8
  %58 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %59 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %60 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  store %struct.fm10k_ring* %58, %struct.fm10k_ring** %61, align 8
  %62 = load i32, i32* @FM10K_DEFAULT_TX_WORK, align 4
  %63 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %64 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %67 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %70 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %73 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %78 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %82 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %87, %33
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %84
  %88 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %89 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %88, i32 0, i32 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %93 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %92, i32 0, i32 5
  store i32* %91, i32** %93, align 8
  %94 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %95 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %98 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %100 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %101 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %100, i32 0, i32 2
  store %struct.fm10k_q_vector* %99, %struct.fm10k_q_vector** %101, align 8
  %102 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %103 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %106 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %109 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %111 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %112 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %111, i32 0, i32 7
  %113 = load %struct.fm10k_ring**, %struct.fm10k_ring*** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.fm10k_ring*, %struct.fm10k_ring** %113, i64 %115
  store %struct.fm10k_ring* %110, %struct.fm10k_ring** %116, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, -1
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %13, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %13, align 4
  %122 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %123 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %122, i32 1
  store %struct.fm10k_ring* %123, %struct.fm10k_ring** %17, align 8
  br label %84

124:                                              ; preds = %84
  %125 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %126 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %127 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  store %struct.fm10k_ring* %125, %struct.fm10k_ring** %128, align 8
  %129 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %130 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %133 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %136 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %141 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %145 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  br label %147

147:                                              ; preds = %150, %124
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %194

150:                                              ; preds = %147
  %151 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %152 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %151, i32 0, i32 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %156 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %155, i32 0, i32 5
  store i32* %154, i32** %156, align 8
  %157 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %158 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %161 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %163 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %166 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @rcu_assign_pointer(i32 %164, i32 %167)
  %169 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %170 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %171 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %170, i32 0, i32 2
  store %struct.fm10k_q_vector* %169, %struct.fm10k_q_vector** %171, align 8
  %172 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %173 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %176 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %179 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %181 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %182 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %181, i32 0, i32 0
  %183 = load %struct.fm10k_ring**, %struct.fm10k_ring*** %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.fm10k_ring*, %struct.fm10k_ring** %183, i64 %185
  store %struct.fm10k_ring* %180, %struct.fm10k_ring** %186, align 8
  %187 = load i32, i32* %14, align 4
  %188 = add i32 %187, -1
  store i32 %188, i32* %14, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %15, align 4
  %191 = add i32 %190, %189
  store i32 %191, i32* %15, align 4
  %192 = load %struct.fm10k_ring*, %struct.fm10k_ring** %17, align 8
  %193 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %192, i32 1
  store %struct.fm10k_ring* %193, %struct.fm10k_ring** %17, align 8
  br label %147

194:                                              ; preds = %147
  %195 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %16, align 8
  %196 = call i32 @fm10k_dbg_q_vector_init(%struct.fm10k_q_vector* %195)
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %194, %30
  %198 = load i32, i32* %8, align 4
  ret i32 %198
}

declare dso_local %struct.fm10k_q_vector* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.fm10k_q_vector*, %struct.fm10k_ring*, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @fm10k_dbg_q_vector_init(%struct.fm10k_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
