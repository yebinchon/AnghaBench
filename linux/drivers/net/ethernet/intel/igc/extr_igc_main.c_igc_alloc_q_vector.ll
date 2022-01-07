; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_alloc_q_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_alloc_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, %struct.igc_ring**, i32, i32, %struct.TYPE_3__*, %struct.igc_ring**, i32, i64, i32, %struct.igc_q_vector** }
%struct.TYPE_3__ = type { i32 }
%struct.igc_ring = type { i32, i32, %struct.igc_q_vector*, i32, i32* }
%struct.igc_q_vector = type { i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.igc_ring*, i64, %struct.igc_adapter*, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@igc_poll = common dso_local global i32 0, align 4
@IGC_START_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_adapter*, i32, i32, i32, i32, i32, i32)* @igc_alloc_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_alloc_q_vector(%struct.igc_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.igc_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.igc_q_vector*, align 8
  %17 = alloca %struct.igc_ring*, align 8
  %18 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %14, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %210

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = add i32 %28, %29
  store i32 %30, i32* %18, align 4
  %31 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %32 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %31, i32 0, i32 10
  %33 = load %struct.igc_q_vector**, %struct.igc_q_vector*** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.igc_q_vector*, %struct.igc_q_vector** %33, i64 %35
  %37 = load %struct.igc_q_vector*, %struct.igc_q_vector** %36, align 8
  store %struct.igc_q_vector* %37, %struct.igc_q_vector** %16, align 8
  %38 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %39 = icmp ne %struct.igc_q_vector* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %27
  %41 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %42 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @struct_size(%struct.igc_q_vector* %41, %struct.igc_ring* %42, i32 %43)
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.igc_q_vector* @kzalloc(i32 %44, i32 %45)
  store %struct.igc_q_vector* %46, %struct.igc_q_vector** %16, align 8
  br label %54

47:                                               ; preds = %27
  %48 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %49 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %50 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @struct_size(%struct.igc_q_vector* %49, %struct.igc_ring* %50, i32 %51)
  %53 = call i32 @memset(%struct.igc_q_vector* %48, i32 0, i32 %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %56 = icmp ne %struct.igc_q_vector* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %210

60:                                               ; preds = %54
  %61 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %62 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %65 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %64, i32 0, i32 6
  %66 = load i32, i32* @igc_poll, align 4
  %67 = call i32 @netif_napi_add(i32 %63, i32* %65, i32 %66, i32 64)
  %68 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %69 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %70 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %69, i32 0, i32 10
  %71 = load %struct.igc_q_vector**, %struct.igc_q_vector*** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.igc_q_vector*, %struct.igc_q_vector** %71, i64 %73
  store %struct.igc_q_vector* %68, %struct.igc_q_vector** %74, align 8
  %75 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %76 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %77 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %76, i32 0, i32 5
  store %struct.igc_adapter* %75, %struct.igc_adapter** %77, align 8
  %78 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %79 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %82 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %85 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @IGC_EITR(i32 0)
  %88 = add nsw i64 %86, %87
  %89 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %90 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %89, i32 0, i32 4
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @IGC_START_ITR, align 4
  %92 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %93 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %95 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %94, i32 0, i32 3
  %96 = load %struct.igc_ring*, %struct.igc_ring** %95, align 8
  store %struct.igc_ring* %96, %struct.igc_ring** %17, align 8
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %60
  %100 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %101 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %106 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 3
  br i1 %108, label %109, label %115

109:                                              ; preds = %104, %99
  %110 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %111 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %114 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %109, %104
  br label %133

116:                                              ; preds = %60
  %117 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %118 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %123 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 3
  br i1 %125, label %126, label %132

126:                                              ; preds = %121, %116
  %127 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %128 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %131 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %126, %121
  br label %133

133:                                              ; preds = %132, %115
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %172

136:                                              ; preds = %133
  %137 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %138 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %137, i32 0, i32 5
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %142 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %141, i32 0, i32 4
  store i32* %140, i32** %142, align 8
  %143 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %144 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %147 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 8
  %148 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %149 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %150 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %149, i32 0, i32 2
  store %struct.igc_q_vector* %148, %struct.igc_q_vector** %150, align 8
  %151 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %152 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %153 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %152, i32 0, i32 2
  %154 = call i32 @igc_add_ring(%struct.igc_ring* %151, %struct.TYPE_4__* %153)
  %155 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %156 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %159 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %162 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %164 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %165 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %164, i32 0, i32 6
  %166 = load %struct.igc_ring**, %struct.igc_ring*** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.igc_ring*, %struct.igc_ring** %166, i64 %168
  store %struct.igc_ring* %163, %struct.igc_ring** %169, align 8
  %170 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %171 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %170, i32 1
  store %struct.igc_ring* %171, %struct.igc_ring** %17, align 8
  br label %172

172:                                              ; preds = %136, %133
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %209

175:                                              ; preds = %172
  %176 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %177 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %176, i32 0, i32 5
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %181 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %180, i32 0, i32 4
  store i32* %179, i32** %181, align 8
  %182 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %183 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %186 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  %187 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %188 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %189 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %188, i32 0, i32 2
  store %struct.igc_q_vector* %187, %struct.igc_q_vector** %189, align 8
  %190 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %191 = load %struct.igc_q_vector*, %struct.igc_q_vector** %16, align 8
  %192 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %191, i32 0, i32 1
  %193 = call i32 @igc_add_ring(%struct.igc_ring* %190, %struct.TYPE_4__* %192)
  %194 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %195 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %198 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %201 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load %struct.igc_ring*, %struct.igc_ring** %17, align 8
  %203 = load %struct.igc_adapter*, %struct.igc_adapter** %9, align 8
  %204 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %203, i32 0, i32 2
  %205 = load %struct.igc_ring**, %struct.igc_ring*** %204, align 8
  %206 = load i32, i32* %15, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.igc_ring*, %struct.igc_ring** %205, i64 %207
  store %struct.igc_ring* %202, %struct.igc_ring** %208, align 8
  br label %209

209:                                              ; preds = %175, %172
  store i32 0, i32* %8, align 4
  br label %210

210:                                              ; preds = %209, %57, %24
  %211 = load i32, i32* %8, align 4
  ret i32 %211
}

declare dso_local %struct.igc_q_vector* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.igc_q_vector*, %struct.igc_ring*, i32) #1

declare dso_local i32 @memset(%struct.igc_q_vector*, i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i64 @IGC_EITR(i32) #1

declare dso_local i32 @igc_add_ring(%struct.igc_ring*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
