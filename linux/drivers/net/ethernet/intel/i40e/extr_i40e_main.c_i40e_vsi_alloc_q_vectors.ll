; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_alloc_q_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_alloc_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i64, %struct.i40e_vsi** }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_vsi_alloc_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_alloc_q_vectors(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 1
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %4, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 2
  %26 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %25, align 8
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %26, i64 %29
  %31 = load %struct.i40e_vsi*, %struct.i40e_vsi** %30, align 8
  %32 = icmp eq %struct.i40e_vsi* %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %82

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i32, i32* @cpu_online_mask, align 4
  %40 = call i32 @cpumask_first(i32 %39)
  store i32 %40, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %67, %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  %46 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @i40e_vsi_alloc_q_vector(%struct.i40e_vsi* %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %71

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @cpu_online_mask, align 4
  %56 = call i32 @cpumask_next(i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @nr_cpu_ids, align 4
  %59 = icmp sge i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @cpu_online_mask, align 4
  %65 = call i32 @cpumask_first(i32 %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %53
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %41

70:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %82

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @i40e_free_q_vector(%struct.i40e_vsi* %77, i32 %78)
  br label %72

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %70, %34
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @i40e_vsi_alloc_q_vector(%struct.i40e_vsi*, i32, i32) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i40e_free_q_vector(%struct.i40e_vsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
