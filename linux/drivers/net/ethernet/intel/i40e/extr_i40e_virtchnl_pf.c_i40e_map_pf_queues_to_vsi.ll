; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_map_pf_queues_to_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_map_pf_queues_to_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i64, i32, %struct.TYPE_3__*, i64, %struct.i40e_pf* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i40e_pf = type { %struct.TYPE_4__**, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vf*)* @i40e_map_pf_queues_to_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_map_pf_queues_to_vsi(%struct.i40e_vf* %0) #0 {
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
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %12, i32 0, i32 5
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %3, align 8
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 1
  store %struct.i40e_hw* %16, %struct.i40e_hw** %4, align 8
  store i32 1, i32* %6, align 4
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %1
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %104, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %107

30:                                               ; preds = %26
  %31 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %32 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %45 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  br label %66

52:                                               ; preds = %30
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %57 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %64 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %52, %35
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %100, %66
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 7
  br i1 %69, label %70, label %103

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 2
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 134154239, i32* %5, align 4
  br label %93

76:                                               ; preds = %70
  %77 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %79, 2
  %81 = call i32 @i40e_vc_get_pf_queue_id(%struct.i40e_vf* %77, i32 %78, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  %83 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %85, 2
  %87 = add nsw i32 %86, 1
  %88 = call i32 @i40e_vc_get_pf_queue_id(%struct.i40e_vf* %83, i32 %84, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = shl i32 %89, 16
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %76, %75
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @I40E_VSILAN_QTABLE(i32 %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %94, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %67

103:                                              ; preds = %67
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %26

107:                                              ; preds = %26
  ret void
}

declare dso_local i32 @i40e_vc_get_pf_queue_id(%struct.i40e_vf*, i32, i32) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VSILAN_QTABLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
