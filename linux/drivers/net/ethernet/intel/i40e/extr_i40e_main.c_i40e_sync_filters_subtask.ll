; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_sync_filters_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_sync_filters_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@__I40E_MACVLAN_SYNC_PENDING = common dso_local global i32 0, align 4
@__I40E_VF_DISABLE = common dso_local global i32 0, align 4
@I40E_VSI_FLAG_FILTER_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_sync_filters_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_sync_filters_subtask(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %5 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %6 = icmp ne %struct.i40e_pf* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %86

8:                                                ; preds = %1
  %9 = load i32, i32* @__I40E_MACVLAN_SYNC_PENDING, align 4
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @test_and_clear_bit(i32 %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %86

16:                                               ; preds = %8
  %17 = load i32, i32* @__I40E_VF_DISABLE, align 4
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @test_and_set_bit(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* @__I40E_MACVLAN_SYNC_PENDING, align 4
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_bit(i32 %24, i32 %27)
  br label %86

29:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %77, %29
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %30
  %37 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %76

45:                                               ; preds = %36
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %47 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @I40E_VSI_FLAG_FILTER_CHANGED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %45
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 %63
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @i40e_sync_vsi_filters(%struct.TYPE_2__* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i32, i32* @__I40E_MACVLAN_SYNC_PENDING, align 4
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @set_bit(i32 %70, i32 %73)
  br label %80

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %45, %36
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %30

80:                                               ; preds = %69, %30
  %81 = load i32, i32* @__I40E_VF_DISABLE, align 4
  %82 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %83 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @clear_bit(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %23, %15, %7
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @i40e_sync_vsi_filters(%struct.TYPE_2__*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
