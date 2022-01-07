; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_reset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__**, %struct.rtnl_link_stats64, %struct.rtnl_link_stats64, %struct.rtnl_link_stats64 }
%struct.TYPE_4__ = type { %struct.rtnl_link_stats64, %struct.rtnl_link_stats64 }
%struct.TYPE_3__ = type { %struct.rtnl_link_stats64, %struct.rtnl_link_stats64 }
%struct.rtnl_link_stats64 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_vsi_reset_stats(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.rtnl_link_stats64*, align 8
  %4 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %5 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %6 = icmp ne %struct.i40e_vsi* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %84

8:                                                ; preds = %1
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %10 = call %struct.rtnl_link_stats64* @i40e_get_vsi_stats_struct(%struct.i40e_vsi* %9)
  store %struct.rtnl_link_stats64* %10, %struct.rtnl_link_stats64** %3, align 8
  %11 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %12 = call i32 @memset(%struct.rtnl_link_stats64* %11, i32 0, i32 4)
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 6
  %15 = call i32 @memset(%struct.rtnl_link_stats64* %14, i32 0, i32 4)
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 5
  %18 = call i32 @memset(%struct.rtnl_link_stats64* %17, i32 0, i32 4)
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 4
  %21 = call i32 @memset(%struct.rtnl_link_stats64* %20, i32 0, i32 4)
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %23, align 8
  %25 = icmp ne %struct.TYPE_3__** %24, null
  br i1 %25, label %26, label %81

26:                                               ; preds = %8
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %28 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %81

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %77, %33
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %34
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %42 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i32 @memset(%struct.rtnl_link_stats64* %48, i32 0, i32 4)
  %50 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %51 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @memset(%struct.rtnl_link_stats64* %57, i32 0, i32 4)
  %59 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = call i32 @memset(%struct.rtnl_link_stats64* %66, i32 0, i32 4)
  %68 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @memset(%struct.rtnl_link_stats64* %75, i32 0, i32 4)
  br label %77

77:                                               ; preds = %40
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %34

80:                                               ; preds = %34
  br label %81

81:                                               ; preds = %80, %26, %8
  %82 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %83 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %7
  ret void
}

declare dso_local %struct.rtnl_link_stats64* @i40e_get_vsi_stats_struct(%struct.i40e_vsi*) #1

declare dso_local i32 @memset(%struct.rtnl_link_stats64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
