; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_update_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_update_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_q_vector = type { %struct.TYPE_4__*, %struct.ice_ring_container, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ice_ring_container = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@ICE_ITR_ADAPTIVE_MIN_USECS = common dso_local global i32 0, align 4
@ICE_ITR_ADAPTIVE_LATENCY = common dso_local global i32 0, align 4
@ICE_ITR_ADAPTIVE_MAX_USECS = common dso_local global i32 0, align 4
@ICE_ITR_MASK = common dso_local global i32 0, align 4
@ICE_ITR_ADAPTIVE_MIN_INC = common dso_local global i32 0, align 4
@ICE_ITR_ADAPTIVE_BULK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_q_vector*, %struct.ice_ring_container*)* @ice_update_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_update_itr(%struct.ice_q_vector* %0, %struct.ice_ring_container* %1) #0 {
  %3 = alloca %struct.ice_q_vector*, align 8
  %4 = alloca %struct.ice_ring_container*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ice_q_vector* %0, %struct.ice_q_vector** %3, align 8
  store %struct.ice_ring_container* %1, %struct.ice_ring_container** %4, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %12 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %17 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ITR_IS_DYNAMIC(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %2
  br label %201

22:                                               ; preds = %15
  %23 = load %struct.ice_q_vector*, %struct.ice_q_vector** %3, align 8
  %24 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %29 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  br label %189

31:                                               ; preds = %22
  %32 = load %struct.ice_q_vector*, %struct.ice_q_vector** %3, align 8
  %33 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %32, i32 0, i32 1
  %34 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %35 = icmp eq %struct.ice_ring_container* %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @ICE_ITR_ADAPTIVE_MIN_USECS, align 4
  %41 = load i32, i32* @ICE_ITR_ADAPTIVE_LATENCY, align 4
  %42 = or i32 %40, %41
  br label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @ICE_ITR_ADAPTIVE_MAX_USECS, align 4
  %45 = load i32, i32* @ICE_ITR_ADAPTIVE_LATENCY, align 4
  %46 = or i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %42, %39 ], [ %46, %43 ]
  store i32 %48, i32* %8, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %51 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @time_after(i64 %49, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %189

56:                                               ; preds = %47
  %57 = load %struct.ice_q_vector*, %struct.ice_q_vector** %3, align 8
  %58 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @prefetch(i32 %61)
  %63 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %64 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  %66 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %67 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp ult i32 %75, 4
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp ult i32 %78, 9000
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.ice_q_vector*, %struct.ice_q_vector** %3, align 8
  %82 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ICE_ITR_ADAPTIVE_LATENCY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @ICE_ITR_ADAPTIVE_LATENCY, align 4
  store i32 %89, i32* %8, align 4
  br label %178

90:                                               ; preds = %80, %77, %74, %71
  br label %123

91:                                               ; preds = %56
  %92 = load i32, i32* %6, align 4
  %93 = icmp ult i32 %92, 4
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %96 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ICE_ITR_ADAPTIVE_MAX_USECS, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load %struct.ice_q_vector*, %struct.ice_q_vector** %3, align 8
  %102 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ICE_ITR_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @ICE_ITR_ADAPTIVE_MAX_USECS, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %189

110:                                              ; preds = %100, %94
  br label %122

111:                                              ; preds = %91
  %112 = load i32, i32* %6, align 4
  %113 = icmp ugt i32 %112, 32
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* @ICE_ITR_ADAPTIVE_LATENCY, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %118 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %114, %111
  br label %122

122:                                              ; preds = %121, %110
  br label %123

123:                                              ; preds = %122, %90
  %124 = load i32, i32* %6, align 4
  %125 = icmp ult i32 %124, 56
  br i1 %125, label %126, label %145

126:                                              ; preds = %123
  %127 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %128 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ICE_ITR_ADAPTIVE_MIN_INC, align 4
  %131 = add i32 %129, %130
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @ICE_ITR_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @ICE_ITR_ADAPTIVE_MAX_USECS, align 4
  %136 = icmp ugt i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %126
  %138 = load i32, i32* @ICE_ITR_ADAPTIVE_LATENCY, align 4
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* @ICE_ITR_ADAPTIVE_MAX_USECS, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %137, %126
  br label %189

145:                                              ; preds = %123
  %146 = load i32, i32* %6, align 4
  %147 = icmp ule i32 %146, 256
  br i1 %147, label %148, label %176

148:                                              ; preds = %145
  %149 = load %struct.ice_q_vector*, %struct.ice_q_vector** %3, align 8
  %150 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ice_q_vector*, %struct.ice_q_vector** %3, align 8
  %154 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @min(i32 %152, i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* @ICE_ITR_MASK, align 4
  %159 = load i32, i32* %8, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ule i32 %161, 112
  br i1 %162, label %163, label %164

163:                                              ; preds = %148
  br label %189

164:                                              ; preds = %148
  %165 = load i32, i32* %8, align 4
  %166 = lshr i32 %165, 1
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* @ICE_ITR_MASK, align 4
  %168 = load i32, i32* %8, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @ICE_ITR_ADAPTIVE_MIN_USECS, align 4
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i32, i32* @ICE_ITR_ADAPTIVE_MIN_USECS, align 4
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %173, %164
  br label %189

176:                                              ; preds = %145
  %177 = load i32, i32* @ICE_ITR_ADAPTIVE_BULK, align 4
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %176, %88
  %179 = load %struct.ice_q_vector*, %struct.ice_q_vector** %3, align 8
  %180 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %6, align 4
  %186 = udiv i32 %184, %185
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @ice_adjust_itr_by_size_and_speed(i32 %183, i32 %186, i32 %187)
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %178, %175, %163, %144, %109, %55, %27
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %192 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i64, i64* %5, align 8
  %194 = add i64 %193, 1
  %195 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %196 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %198 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %197, i32 0, i32 3
  store i32 0, i32* %198, align 4
  %199 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %200 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %199, i32 0, i32 2
  store i32 0, i32* %200, align 8
  br label %201

201:                                              ; preds = %189, %21
  ret void
}

declare dso_local i32 @ITR_IS_DYNAMIC(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ice_adjust_itr_by_size_and_speed(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
