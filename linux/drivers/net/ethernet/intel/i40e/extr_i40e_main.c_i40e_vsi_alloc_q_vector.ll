; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_alloc_q_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_alloc_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_q_vector**, i64 }
%struct.i40e_q_vector = type { i32, i32, i32, %struct.i40e_vsi* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@i40e_napi_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i32, i32)* @i40e_vsi_alloc_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_alloc_q_vector(%struct.i40e_vsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_q_vector*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.i40e_q_vector* @kzalloc(i32 24, i32 %9)
  store %struct.i40e_q_vector* %10, %struct.i40e_q_vector** %8, align 8
  %11 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %12 = icmp ne %struct.i40e_q_vector* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %48

16:                                               ; preds = %3
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %18 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %19 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %18, i32 0, i32 3
  store %struct.i40e_vsi* %17, %struct.i40e_vsi** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %22 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %24 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %23, i32 0, i32 2
  %25 = load i32, i32* @cpu_possible_mask, align 4
  %26 = call i32 @cpumask_copy(i32* %24, i32 %25)
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %28 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %16
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %36 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %35, i32 0, i32 1
  %37 = load i32, i32* @i40e_napi_poll, align 4
  %38 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %39 = call i32 @netif_napi_add(i64 %34, i32* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %16
  %41 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %43 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %42, i32 0, i32 0
  %44 = load %struct.i40e_q_vector**, %struct.i40e_q_vector*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.i40e_q_vector*, %struct.i40e_q_vector** %44, i64 %46
  store %struct.i40e_q_vector* %41, %struct.i40e_q_vector** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %13
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.i40e_q_vector* @kzalloc(i32, i32) #1

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @netif_napi_add(i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
