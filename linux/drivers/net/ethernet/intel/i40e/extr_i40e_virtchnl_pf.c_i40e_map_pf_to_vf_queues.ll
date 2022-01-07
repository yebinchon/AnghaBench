; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_map_pf_to_vf_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_map_pf_to_vf_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i64, i32, i32, %struct.TYPE_3__*, i64, %struct.i40e_pf* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i40e_pf = type { %struct.TYPE_4__**, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { i32 }

@I40E_VPLAN_QTABLE_QINDEX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vf*)* @i40e_map_pf_to_vf_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_map_pf_to_vf_queues(%struct.i40e_vf* %0) #0 {
  %2 = alloca %struct.i40e_vf*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %13 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %13, i32 0, i32 6
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %3, align 8
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 1
  store %struct.i40e_hw* %17, %struct.i40e_hw** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %18 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %1
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %94, %26
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %97

31:                                               ; preds = %27
  %32 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %46 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  br label %67

53:                                               ; preds = %31
  %54 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %55 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %58 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %65 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %53, %36
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %90, %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @i40e_vc_get_pf_queue_id(%struct.i40e_vf* %73, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @I40E_VPLAN_QTABLE_QINDEX_MASK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %5, align 4
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %83 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @I40E_VPLAN_QTABLE(i32 %81, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @wr32(%struct.i40e_hw* %80, i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %72
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %68

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %27

97:                                               ; preds = %27
  ret void
}

declare dso_local i32 @i40e_vc_get_pf_queue_id(%struct.i40e_vf*, i32, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VPLAN_QTABLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
