; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_update_ena_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_update_ena_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_q_vector = type { i64, i32, %struct.ice_vsi*, %struct.ice_ring_container, %struct.ice_ring_container }
%struct.ice_vsi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ice_ring_container = type { i32, i32, i32, i32 }

@ICE_IN_WB_ON_ITR_MODE = common dso_local global i64 0, align 8
@ICE_WB_ON_ITR_USECS = common dso_local global i32 0, align 4
@ICE_ITR_DYNAMIC = common dso_local global i32 0, align 4
@ITR_COUNTDOWN_START = common dso_local global i8* null, align 8
@ICE_ITR_NONE = common dso_local global i32 0, align 4
@__ICE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_q_vector*)* @ice_update_ena_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_update_ena_itr(%struct.ice_q_vector* %0) #0 {
  %2 = alloca %struct.ice_q_vector*, align 8
  %3 = alloca %struct.ice_ring_container*, align 8
  %4 = alloca %struct.ice_ring_container*, align 8
  %5 = alloca %struct.ice_vsi*, align 8
  %6 = alloca i32, align 4
  store %struct.ice_q_vector* %0, %struct.ice_q_vector** %2, align 8
  %7 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %8 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %7, i32 0, i32 4
  store %struct.ice_ring_container* %8, %struct.ice_ring_container** %3, align 8
  %9 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %10 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %9, i32 0, i32 3
  store %struct.ice_ring_container* %10, %struct.ice_ring_container** %4, align 8
  %11 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %12 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %11, i32 0, i32 2
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  store %struct.ice_vsi* %13, %struct.ice_vsi** %5, align 8
  %14 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %15 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ICE_IN_WB_ON_ITR_MODE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %1
  %20 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %21 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ICE_WB_ON_ITR_USECS, align 4
  %24 = call i32 @ice_buildreg_itr(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %26 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %30 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @GLINT_DYN_CTL(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @wr32(i32* %28, i32 %32, i32 %33)
  %35 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %36 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %39 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ICE_WB_ON_ITR_USECS, align 4
  %41 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %42 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ICE_ITR_DYNAMIC, align 4
  %45 = and i32 %43, %44
  %46 = or i32 %40, %45
  %47 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %48 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %50 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %185

51:                                               ; preds = %1
  %52 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %53 = load %struct.ice_ring_container*, %struct.ice_ring_container** %3, align 8
  %54 = call i32 @ice_update_itr(%struct.ice_q_vector* %52, %struct.ice_ring_container* %53)
  %55 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %56 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %57 = call i32 @ice_update_itr(%struct.ice_q_vector* %55, %struct.ice_ring_container* %56)
  %58 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %59 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %62 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %51
  %66 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %67 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %70 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ice_buildreg_itr(i32 %68, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %74 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %77 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** @ITR_COUNTDOWN_START, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %81 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %163

82:                                               ; preds = %51
  %83 = load %struct.ice_ring_container*, %struct.ice_ring_container** %3, align 8
  %84 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ice_ring_container*, %struct.ice_ring_container** %3, align 8
  %87 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %82
  %91 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %92 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %95 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = load %struct.ice_ring_container*, %struct.ice_ring_container** %3, align 8
  %99 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ice_ring_container*, %struct.ice_ring_container** %3, align 8
  %102 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %100, %103
  %105 = icmp slt i32 %97, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %90, %82
  %107 = load %struct.ice_ring_container*, %struct.ice_ring_container** %3, align 8
  %108 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ice_ring_container*, %struct.ice_ring_container** %3, align 8
  %111 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ice_buildreg_itr(i32 %109, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load %struct.ice_ring_container*, %struct.ice_ring_container** %3, align 8
  %115 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ice_ring_container*, %struct.ice_ring_container** %3, align 8
  %118 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load i8*, i8** @ITR_COUNTDOWN_START, align 8
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %122 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %162

123:                                              ; preds = %90
  %124 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %125 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %128 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %123
  %132 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %133 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %136 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ice_buildreg_itr(i32 %134, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %140 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ice_ring_container*, %struct.ice_ring_container** %4, align 8
  %143 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load i8*, i8** @ITR_COUNTDOWN_START, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %147 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %161

148:                                              ; preds = %123
  %149 = load i32, i32* @ICE_ITR_NONE, align 4
  %150 = call i32 @ice_buildreg_itr(i32 %149, i32 0)
  store i32 %150, i32* %6, align 4
  %151 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %152 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %157 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, -1
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %155, %148
  br label %161

161:                                              ; preds = %160, %131
  br label %162

162:                                              ; preds = %161, %106
  br label %163

163:                                              ; preds = %162, %65
  %164 = load i32, i32* @__ICE_DOWN, align 4
  %165 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %166 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %165, i32 0, i32 2
  %167 = load %struct.ice_vsi*, %struct.ice_vsi** %166, align 8
  %168 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @test_bit(i32 %164, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %163
  %173 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %174 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %173, i32 0, i32 2
  %175 = load %struct.ice_vsi*, %struct.ice_vsi** %174, align 8
  %176 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %180 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @GLINT_DYN_CTL(i32 %181)
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @wr32(i32* %178, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %19, %172, %163
  ret void
}

declare dso_local i32 @ice_buildreg_itr(i32, i32) #1

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local i32 @GLINT_DYN_CTL(i32) #1

declare dso_local i32 @ice_update_itr(%struct.ice_q_vector*, %struct.ice_ring_container*) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
