; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc_q_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, %struct.ice_q_vector**, i64, %struct.ice_pf* }
%struct.ice_q_vector = type { i32, i32, i32, %struct.ice_vsi* }
%struct.ice_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_VSI_VF = common dso_local global i64 0, align 8
@ice_napi_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*, i32)* @ice_vsi_alloc_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_alloc_q_vector(%struct.ice_vsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_pf*, align 8
  %7 = alloca %struct.ice_q_vector*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %9 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %8, i32 0, i32 3
  %10 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  store %struct.ice_pf* %10, %struct.ice_pf** %6, align 8
  %11 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %12 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ice_q_vector* @devm_kzalloc(i32* %14, i32 24, i32 %15)
  store %struct.ice_q_vector* %16, %struct.ice_q_vector** %7, align 8
  %17 = load %struct.ice_q_vector*, %struct.ice_q_vector** %7, align 8
  %18 = icmp ne %struct.ice_q_vector* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %67

22:                                               ; preds = %2
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %24 = load %struct.ice_q_vector*, %struct.ice_q_vector** %7, align 8
  %25 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %24, i32 0, i32 3
  store %struct.ice_vsi* %23, %struct.ice_vsi** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ice_q_vector*, %struct.ice_q_vector** %7, align 8
  %28 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %30 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ICE_VSI_VF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %59

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @cpu_online(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ice_q_vector*, %struct.ice_q_vector** %7, align 8
  %42 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %41, i32 0, i32 2
  %43 = call i32 @cpumask_set_cpu(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %46 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %51 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ice_q_vector*, %struct.ice_q_vector** %7, align 8
  %54 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %53, i32 0, i32 1
  %55 = load i32, i32* @ice_napi_poll, align 4
  %56 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %57 = call i32 @netif_napi_add(i64 %52, i32* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %44
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.ice_q_vector*, %struct.ice_q_vector** %7, align 8
  %61 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %62 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %61, i32 0, i32 1
  %63 = load %struct.ice_q_vector**, %struct.ice_q_vector*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ice_q_vector*, %struct.ice_q_vector** %63, i64 %65
  store %struct.ice_q_vector* %60, %struct.ice_q_vector** %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.ice_q_vector* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @netif_napi_add(i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
