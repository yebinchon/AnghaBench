; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_update_enable_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_update_enable_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_vsi = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.iavf_hw }
%struct.iavf_hw = type { i32 }
%struct.iavf_q_vector = type { i32, i8*, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@IAVF_RX_ITR = common dso_local global i32 0, align 4
@ITR_COUNTDOWN_START = common dso_local global i8* null, align 8
@IAVF_TX_ITR = common dso_local global i32 0, align 4
@IAVF_ITR_NONE = common dso_local global i32 0, align 4
@__IAVF_VSI_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_vsi*, %struct.iavf_q_vector*)* @iavf_update_enable_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_update_enable_itr(%struct.iavf_vsi* %0, %struct.iavf_q_vector* %1) #0 {
  %3 = alloca %struct.iavf_vsi*, align 8
  %4 = alloca %struct.iavf_q_vector*, align 8
  %5 = alloca %struct.iavf_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.iavf_vsi* %0, %struct.iavf_vsi** %3, align 8
  store %struct.iavf_q_vector* %1, %struct.iavf_q_vector** %4, align 8
  %7 = load %struct.iavf_vsi*, %struct.iavf_vsi** %3, align 8
  %8 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.iavf_hw* %10, %struct.iavf_hw** %5, align 8
  %11 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %12 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %13 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %12, i32 0, i32 3
  %14 = call i32 @iavf_update_itr(%struct.iavf_q_vector* %11, %struct.TYPE_4__* %13)
  %15 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %16 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %17 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %16, i32 0, i32 2
  %18 = call i32 @iavf_update_itr(%struct.iavf_q_vector* %15, %struct.TYPE_4__* %17)
  %19 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %20 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %24 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %2
  %29 = load i32, i32* @IAVF_RX_ITR, align 4
  %30 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %31 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @iavf_buildreg_itr(i32 %29, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %36 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %40 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load i8*, i8** @ITR_COUNTDOWN_START, align 8
  %43 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %44 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %134

45:                                               ; preds = %2
  %46 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %47 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %51 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %75, label %55

55:                                               ; preds = %45
  %56 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %57 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %61 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %59, %63
  %65 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %66 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %70 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %68, %72
  %74 = icmp slt i64 %64, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %55, %45
  %76 = load i32, i32* @IAVF_TX_ITR, align 4
  %77 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %78 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @iavf_buildreg_itr(i32 %76, i64 %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %83 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %87 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  %89 = load i8*, i8** @ITR_COUNTDOWN_START, align 8
  %90 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %91 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  br label %133

92:                                               ; preds = %55
  %93 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %94 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %98 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %96, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %92
  %103 = load i32, i32* @IAVF_RX_ITR, align 4
  %104 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %105 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @iavf_buildreg_itr(i32 %103, i64 %107)
  store i32 %108, i32* %6, align 4
  %109 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %110 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %114 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i64 %112, i64* %115, align 8
  %116 = load i8*, i8** @ITR_COUNTDOWN_START, align 8
  %117 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %118 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  br label %132

119:                                              ; preds = %92
  %120 = load i32, i32* @IAVF_ITR_NONE, align 4
  %121 = call i32 @iavf_buildreg_itr(i32 %120, i64 0)
  store i32 %121, i32* %6, align 4
  %122 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %123 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %128 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 -1
  store i8* %130, i8** %128, align 8
  br label %131

131:                                              ; preds = %126, %119
  br label %132

132:                                              ; preds = %131, %102
  br label %133

133:                                              ; preds = %132, %75
  br label %134

134:                                              ; preds = %133, %28
  %135 = load i32, i32* @__IAVF_VSI_DOWN, align 4
  %136 = load %struct.iavf_vsi*, %struct.iavf_vsi** %3, align 8
  %137 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @test_bit(i32 %135, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %134
  %142 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %143 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %144 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @INTREG(i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @wr32(%struct.iavf_hw* %142, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %141, %134
  ret void
}

declare dso_local i32 @iavf_update_itr(%struct.iavf_q_vector*, %struct.TYPE_4__*) #1

declare dso_local i32 @iavf_buildreg_itr(i32, i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wr32(%struct.iavf_hw*, i32, i32) #1

declare dso_local i32 @INTREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
