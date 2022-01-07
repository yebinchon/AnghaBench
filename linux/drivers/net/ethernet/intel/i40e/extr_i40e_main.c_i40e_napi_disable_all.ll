; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_napi_disable_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_napi_disable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.i40e_q_vector**, i32 }
%struct.i40e_q_vector = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_napi_disable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_napi_disable_all(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_q_vector*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %5 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %41, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 1
  %20 = load %struct.i40e_q_vector**, %struct.i40e_q_vector*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.i40e_q_vector*, %struct.i40e_q_vector** %20, i64 %22
  %24 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %23, align 8
  store %struct.i40e_q_vector* %24, %struct.i40e_q_vector** %4, align 8
  %25 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %17
  %31 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %32 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %17
  %37 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %38 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %37, i32 0, i32 0
  %39 = call i32 @napi_disable(i32* %38)
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %11

44:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
