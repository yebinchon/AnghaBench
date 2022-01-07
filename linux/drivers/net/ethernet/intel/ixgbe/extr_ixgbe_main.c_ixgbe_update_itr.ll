; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_update_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_update_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_ring_container = type { i64, i32, i32, i32, i32 }

@IXGBE_ITR_ADAPTIVE_MIN_USECS = common dso_local global i32 0, align 4
@IXGBE_ITR_ADAPTIVE_LATENCY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IXGBE_ITR_ADAPTIVE_MIN_INC = common dso_local global i32 0, align 4
@IXGBE_ITR_ADAPTIVE_MAX_USECS = common dso_local global i32 0, align 4
@IXGBE_ITR_ADAPTIVE_BULK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_q_vector*, %struct.ixgbe_ring_container*)* @ixgbe_update_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_update_itr(%struct.ixgbe_q_vector* %0, %struct.ixgbe_ring_container* %1) #0 {
  %3 = alloca %struct.ixgbe_q_vector*, align 8
  %4 = alloca %struct.ixgbe_ring_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %3, align 8
  store %struct.ixgbe_ring_container* %1, %struct.ixgbe_ring_container** %4, align 8
  %10 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MIN_USECS, align 4
  %11 = load i32, i32* @IXGBE_ITR_ADAPTIVE_LATENCY, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %189

19:                                               ; preds = %2
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %22 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @time_after(i64 %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %177

27:                                               ; preds = %19
  %28 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %29 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %27
  %34 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 2
  %38 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MIN_INC, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MAX_USECS, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MAX_USECS, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %33
  %46 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IXGBE_ITR_ADAPTIVE_LATENCY, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %177

53:                                               ; preds = %27
  %54 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = icmp ult i32 %60, 9000
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @IXGBE_ITR_ADAPTIVE_LATENCY, align 4
  store i32 %63, i32* %5, align 4
  br label %104

64:                                               ; preds = %59, %53
  %65 = load i32, i32* %7, align 4
  %66 = icmp ult i32 %65, 48
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 2
  %72 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MIN_INC, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MAX_USECS, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MAX_USECS, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %67
  br label %177

80:                                               ; preds = %64
  %81 = load i32, i32* %7, align 4
  %82 = icmp ult i32 %81, 96
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %85 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 2
  store i32 %87, i32* %5, align 4
  br label %177

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = icmp ult i32 %89, 256
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %93 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %94, 3
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MIN_USECS, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MIN_USECS, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %91
  br label %177

102:                                              ; preds = %88
  %103 = load i32, i32* @IXGBE_ITR_ADAPTIVE_BULK, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %62
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = udiv i32 %105, %106
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ule i32 %108, 60
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 5120, i32* %6, align 4
  br label %139

111:                                              ; preds = %104
  %112 = load i32, i32* %6, align 4
  %113 = icmp ule i32 %112, 316
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = mul i32 %115, 40
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = add i32 %117, 2720
  store i32 %118, i32* %6, align 4
  br label %138

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = icmp ule i32 %120, 1084
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = mul i32 %123, 15
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = add i32 %125, 11452
  store i32 %126, i32* %6, align 4
  br label %137

127:                                              ; preds = %119
  %128 = load i32, i32* %6, align 4
  %129 = icmp ult i32 %128, 1968
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = mul i32 %131, 5
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = add i32 %133, 22420
  store i32 %134, i32* %6, align 4
  br label %136

135:                                              ; preds = %127
  store i32 32256, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %130
  br label %137

137:                                              ; preds = %136, %122
  br label %138

138:                                              ; preds = %137, %114
  br label %139

139:                                              ; preds = %138, %110
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @IXGBE_ITR_ADAPTIVE_LATENCY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* %6, align 4
  %146 = lshr i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %144, %139
  %148 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %149 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %154 [
    i32 131, label %153
    i32 132, label %153
    i32 128, label %163
    i32 129, label %163
    i32 130, label %163
  ]

153:                                              ; preds = %147, %147
  br label %154

154:                                              ; preds = %147, %153
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MIN_INC, align 4
  %157 = mul nsw i32 %156, 256
  %158 = call i32 @DIV_ROUND_UP(i32 %155, i32 %157)
  %159 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MIN_INC, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load i32, i32* %5, align 4
  %162 = add i32 %161, %160
  store i32 %162, i32* %5, align 4
  br label %176

163:                                              ; preds = %147, %147, %147
  %164 = load i32, i32* %6, align 4
  %165 = icmp ugt i32 %164, 8064
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 8064, i32* %6, align 4
  br label %167

167:                                              ; preds = %166, %163
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MIN_INC, align 4
  %170 = mul nsw i32 %169, 64
  %171 = call i32 @DIV_ROUND_UP(i32 %168, i32 %170)
  %172 = load i32, i32* @IXGBE_ITR_ADAPTIVE_MIN_INC, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load i32, i32* %5, align 4
  %175 = add i32 %174, %173
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %167, %154
  br label %177

177:                                              ; preds = %176, %101, %83, %79, %45, %26
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %180 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = load i64, i64* %9, align 8
  %182 = add i64 %181, 1
  %183 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %184 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %186 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %185, i32 0, i32 3
  store i32 0, i32* %186, align 8
  %187 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %188 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %187, i32 0, i32 1
  store i32 0, i32* %188, align 8
  br label %189

189:                                              ; preds = %177, %18
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
