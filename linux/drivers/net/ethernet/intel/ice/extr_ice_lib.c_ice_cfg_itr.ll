; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_cfg_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_cfg_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_q_vector = type { i32, %struct.ice_ring_container, i64, %struct.ice_ring_container, i64 }
%struct.ice_ring_container = type { i8*, i32, i8*, i8*, i64 }

@ICE_DFLT_RX_ITR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@ICE_ITR_GRAN_S = common dso_local global i32 0, align 4
@ICE_DFLT_TX_ITR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, %struct.ice_q_vector*)* @ice_cfg_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_cfg_itr(%struct.ice_hw* %0, %struct.ice_q_vector* %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_q_vector*, align 8
  %5 = alloca %struct.ice_ring_container*, align 8
  %6 = alloca %struct.ice_ring_container*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store %struct.ice_q_vector* %1, %struct.ice_q_vector** %4, align 8
  %7 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %8 = call i32 @ice_cfg_itr_gran(%struct.ice_hw* %7)
  %9 = load %struct.ice_q_vector*, %struct.ice_q_vector** %4, align 8
  %10 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %2
  %14 = load %struct.ice_q_vector*, %struct.ice_q_vector** %4, align 8
  %15 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %14, i32 0, i32 3
  store %struct.ice_ring_container* %15, %struct.ice_ring_container** %5, align 8
  %16 = load %struct.ice_ring_container*, %struct.ice_ring_container** %5, align 8
  %17 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i64, i64* @ICE_DFLT_RX_ITR, align 8
  %22 = load %struct.ice_ring_container*, %struct.ice_ring_container** %5, align 8
  %23 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.ice_ring_container*, %struct.ice_ring_container** %5, align 8
  %26 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @ITR_TO_REG(i64 %27)
  %29 = load %struct.ice_ring_container*, %struct.ice_ring_container** %5, align 8
  %30 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @jiffies, align 8
  %32 = getelementptr i8, i8* %31, i64 1
  %33 = load %struct.ice_ring_container*, %struct.ice_ring_container** %5, align 8
  %34 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ice_ring_container*, %struct.ice_ring_container** %5, align 8
  %36 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.ice_ring_container*, %struct.ice_ring_container** %5, align 8
  %39 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %41 = load %struct.ice_ring_container*, %struct.ice_ring_container** %5, align 8
  %42 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ice_q_vector*, %struct.ice_q_vector** %4, align 8
  %45 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @GLINT_ITR(i32 %43, i32 %46)
  %48 = load %struct.ice_ring_container*, %struct.ice_ring_container** %5, align 8
  %49 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @ITR_REG_ALIGN(i8* %50)
  %52 = load i32, i32* @ICE_ITR_GRAN_S, align 4
  %53 = ashr i32 %51, %52
  %54 = call i32 @wr32(%struct.ice_hw* %40, i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %24, %2
  %56 = load %struct.ice_q_vector*, %struct.ice_q_vector** %4, align 8
  %57 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %55
  %61 = load %struct.ice_q_vector*, %struct.ice_q_vector** %4, align 8
  %62 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %61, i32 0, i32 1
  store %struct.ice_ring_container* %62, %struct.ice_ring_container** %6, align 8
  %63 = load %struct.ice_ring_container*, %struct.ice_ring_container** %6, align 8
  %64 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* @ICE_DFLT_TX_ITR, align 8
  %69 = load %struct.ice_ring_container*, %struct.ice_ring_container** %6, align 8
  %70 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.ice_ring_container*, %struct.ice_ring_container** %6, align 8
  %73 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @ITR_TO_REG(i64 %74)
  %76 = load %struct.ice_ring_container*, %struct.ice_ring_container** %6, align 8
  %77 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @jiffies, align 8
  %79 = getelementptr i8, i8* %78, i64 1
  %80 = load %struct.ice_ring_container*, %struct.ice_ring_container** %6, align 8
  %81 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ice_ring_container*, %struct.ice_ring_container** %6, align 8
  %83 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.ice_ring_container*, %struct.ice_ring_container** %6, align 8
  %86 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %88 = load %struct.ice_ring_container*, %struct.ice_ring_container** %6, align 8
  %89 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ice_q_vector*, %struct.ice_q_vector** %4, align 8
  %92 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @GLINT_ITR(i32 %90, i32 %93)
  %95 = load %struct.ice_ring_container*, %struct.ice_ring_container** %6, align 8
  %96 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @ITR_REG_ALIGN(i8* %97)
  %99 = load i32, i32* @ICE_ITR_GRAN_S, align 4
  %100 = ashr i32 %98, %99
  %101 = call i32 @wr32(%struct.ice_hw* %87, i32 %94, i32 %100)
  br label %102

102:                                              ; preds = %71, %55
  ret void
}

declare dso_local i32 @ice_cfg_itr_gran(%struct.ice_hw*) #1

declare dso_local i8* @ITR_TO_REG(i64) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @GLINT_ITR(i32, i32) #1

declare dso_local i32 @ITR_REG_ALIGN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
