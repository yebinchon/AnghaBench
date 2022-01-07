; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_toggle_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_toggle_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.i40e_ring** }
%struct.i40e_ring = type { %struct.i40e_q_vector* }
%struct.i40e_q_vector = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, i32, i32)* @i40e_queue_pair_toggle_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_queue_pair_toggle_napi(%struct.i40e_vsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_ring*, align 8
  %8 = alloca %struct.i40e_q_vector*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 1
  %11 = load %struct.i40e_ring**, %struct.i40e_ring*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %11, i64 %13
  %15 = load %struct.i40e_ring*, %struct.i40e_ring** %14, align 8
  store %struct.i40e_ring* %15, %struct.i40e_ring** %7, align 8
  %16 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %17 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %16, i32 0, i32 0
  %18 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %17, align 8
  store %struct.i40e_q_vector* %18, %struct.i40e_q_vector** %8, align 8
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %26 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %32 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %41 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %40, i32 0, i32 0
  %42 = call i32 @napi_enable(i32* %41)
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %45 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %44, i32 0, i32 0
  %46 = call i32 @napi_disable(i32* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %23, %47, %30
  ret void
}

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
