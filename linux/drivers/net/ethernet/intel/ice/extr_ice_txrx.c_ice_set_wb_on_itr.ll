; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_set_wb_on_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_set_wb_on_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_q_vector = type { i64, i32, i64, i64, %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ICE_IN_WB_ON_ITR_MODE = common dso_local global i64 0, align 8
@ICE_WB_ON_ITR_USECS = common dso_local global i32 0, align 4
@ICE_RX_ITR = common dso_local global i32 0, align 4
@ICE_TX_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_q_vector*)* @ice_set_wb_on_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_set_wb_on_itr(%struct.ice_q_vector* %0) #0 {
  %2 = alloca %struct.ice_q_vector*, align 8
  %3 = alloca %struct.ice_vsi*, align 8
  store %struct.ice_q_vector* %0, %struct.ice_q_vector** %2, align 8
  %4 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %5 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %4, i32 0, i32 4
  %6 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  store %struct.ice_vsi* %6, %struct.ice_vsi** %3, align 8
  %7 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %8 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ICE_IN_WB_ON_ITR_MODE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %53

13:                                               ; preds = %1
  %14 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %15 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %24 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @GLINT_DYN_CTL(i32 %25)
  %27 = load i32, i32* @ICE_WB_ON_ITR_USECS, align 4
  %28 = load i32, i32* @ICE_RX_ITR, align 4
  %29 = call i32 @ICE_GLINT_DYN_CTL_WB_ON_ITR(i32 %27, i32 %28)
  %30 = call i32 @wr32(i32* %22, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %18, %13
  %32 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %33 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %38 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %42 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @GLINT_DYN_CTL(i32 %43)
  %45 = load i32, i32* @ICE_WB_ON_ITR_USECS, align 4
  %46 = load i32, i32* @ICE_TX_ITR, align 4
  %47 = call i32 @ICE_GLINT_DYN_CTL_WB_ON_ITR(i32 %45, i32 %46)
  %48 = call i32 @wr32(i32* %40, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %36, %31
  %50 = load i64, i64* @ICE_IN_WB_ON_ITR_MODE, align 8
  %51 = load %struct.ice_q_vector*, %struct.ice_q_vector** %2, align 8
  %52 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %12
  ret void
}

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local i32 @GLINT_DYN_CTL(i32) #1

declare dso_local i32 @ICE_GLINT_DYN_CTL_WB_ON_ITR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
