; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_enable_wb_on_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_enable_wb_on_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_vsi = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.iavf_q_vector = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IAVF_TXR_FLAGS_WB_ON_ITR = common dso_local global i32 0, align 4
@IAVF_VFINT_DYN_CTLN1_WB_ON_ITR_MASK = common dso_local global i32 0, align 4
@IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_vsi*, %struct.iavf_q_vector*)* @iavf_enable_wb_on_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_enable_wb_on_itr(%struct.iavf_vsi* %0, %struct.iavf_q_vector* %1) #0 {
  %3 = alloca %struct.iavf_vsi*, align 8
  %4 = alloca %struct.iavf_q_vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iavf_vsi* %0, %struct.iavf_vsi** %3, align 8
  store %struct.iavf_q_vector* %1, %struct.iavf_q_vector** %4, align 8
  %7 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %8 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IAVF_TXR_FLAGS_WB_ON_ITR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %41

19:                                               ; preds = %2
  %20 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %21 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %41

25:                                               ; preds = %19
  %26 = load i32, i32* @IAVF_VFINT_DYN_CTLN1_WB_ON_ITR_MASK, align 4
  %27 = load i32, i32* @IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.iavf_vsi*, %struct.iavf_vsi** %3, align 8
  %30 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %34 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IAVF_VFINT_DYN_CTLN1(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @wr32(i32* %32, i32 %36, i32 %37)
  %39 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %4, align 8
  %40 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %25, %24, %18
  ret void
}

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local i32 @IAVF_VFINT_DYN_CTLN1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
