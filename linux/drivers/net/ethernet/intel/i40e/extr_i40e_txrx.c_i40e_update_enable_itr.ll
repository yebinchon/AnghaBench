; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_update_enable_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_update_enable_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.i40e_q_vector = type { i32, i8*, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@I40E_RX_ITR = common dso_local global i32 0, align 4
@ITR_COUNTDOWN_START = common dso_local global i8* null, align 8
@I40E_TX_ITR = common dso_local global i32 0, align 4
@I40E_ITR_NONE = common dso_local global i32 0, align 4
@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, %struct.i40e_q_vector*)* @i40e_update_enable_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_update_enable_itr(%struct.i40e_vsi* %0, %struct.i40e_q_vector* %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_q_vector*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store %struct.i40e_q_vector* %1, %struct.i40e_q_vector** %4, align 8
  %7 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.i40e_hw* %10, %struct.i40e_hw** %5, align 8
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @i40e_irq_dynamic_enable_icr0(%struct.TYPE_4__* %22)
  br label %163

24:                                               ; preds = %2
  %25 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %26 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %26, i32 0, i32 3
  %28 = call i32 @i40e_update_itr(%struct.i40e_q_vector* %25, %struct.TYPE_3__* %27)
  %29 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %30 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %31 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %30, i32 0, i32 2
  %32 = call i32 @i40e_update_itr(%struct.i40e_q_vector* %29, %struct.TYPE_3__* %31)
  %33 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %34 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %38 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %24
  %43 = load i32, i32* @I40E_RX_ITR, align 4
  %44 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @i40e_buildreg_itr(i32 %43, i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %50 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %54 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load i8*, i8** @ITR_COUNTDOWN_START, align 8
  %57 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %58 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %148

59:                                               ; preds = %24
  %60 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %61 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %65 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %59
  %70 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %71 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %75 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %73, %77
  %79 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %80 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %84 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %82, %86
  %88 = icmp slt i64 %78, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %69, %59
  %90 = load i32, i32* @I40E_TX_ITR, align 4
  %91 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %92 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @i40e_buildreg_itr(i32 %90, i64 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %97 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %101 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  %103 = load i8*, i8** @ITR_COUNTDOWN_START, align 8
  %104 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %105 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  br label %147

106:                                              ; preds = %69
  %107 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %108 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %112 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %110, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %106
  %117 = load i32, i32* @I40E_RX_ITR, align 4
  %118 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %119 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @i40e_buildreg_itr(i32 %117, i64 %121)
  store i32 %122, i32* %6, align 4
  %123 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %124 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %128 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i64 %126, i64* %129, align 8
  %130 = load i8*, i8** @ITR_COUNTDOWN_START, align 8
  %131 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %132 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  br label %146

133:                                              ; preds = %106
  %134 = load i32, i32* @I40E_ITR_NONE, align 4
  %135 = call i32 @i40e_buildreg_itr(i32 %134, i64 0)
  store i32 %135, i32* %6, align 4
  %136 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %137 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %142 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 -1
  store i8* %144, i8** %142, align 8
  br label %145

145:                                              ; preds = %140, %133
  br label %146

146:                                              ; preds = %145, %116
  br label %147

147:                                              ; preds = %146, %89
  br label %148

148:                                              ; preds = %147, %42
  %149 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %150 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %151 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @test_bit(i32 %149, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %148
  %156 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %157 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %158 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @INTREG(i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @wr32(%struct.i40e_hw* %156, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %19, %155, %148
  ret void
}

declare dso_local i32 @i40e_irq_dynamic_enable_icr0(%struct.TYPE_4__*) #1

declare dso_local i32 @i40e_update_itr(%struct.i40e_q_vector*, %struct.TYPE_3__*) #1

declare dso_local i32 @i40e_buildreg_itr(i32, i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @INTREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
