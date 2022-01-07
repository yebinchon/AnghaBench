; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_find_node_by_teid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_find_node_by_teid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_sched_node = type { i64, i64, %struct.ice_sched_node**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ICE_AQC_TOPO_MAX_LEVEL_NUM = common dso_local global i64 0, align 8
@ICE_AQC_ELEM_TYPE_LEAF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ice_sched_node* @ice_sched_find_node_by_teid(%struct.ice_sched_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_sched_node*, align 8
  %4 = alloca %struct.ice_sched_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ice_sched_node*, align 8
  store %struct.ice_sched_node* %0, %struct.ice_sched_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  %9 = call i32 @ICE_TXSCHED_GET_NODE_TEID(%struct.ice_sched_node* %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  store %struct.ice_sched_node* %13, %struct.ice_sched_node** %3, align 8
  br label %87

14:                                               ; preds = %2
  %15 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  %16 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  %21 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ICE_AQC_TOPO_MAX_LEVEL_NUM, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  %27 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ICE_AQC_ELEM_TYPE_LEAF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %19, %14
  store %struct.ice_sched_node* null, %struct.ice_sched_node** %3, align 8
  br label %87

34:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  %38 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  %43 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %42, i32 0, i32 2
  %44 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %44, i64 %45
  %47 = load %struct.ice_sched_node*, %struct.ice_sched_node** %46, align 8
  %48 = call i32 @ICE_TXSCHED_GET_NODE_TEID(%struct.ice_sched_node* %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  %53 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %52, i32 0, i32 2
  %54 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %54, i64 %55
  %57 = load %struct.ice_sched_node*, %struct.ice_sched_node** %56, align 8
  store %struct.ice_sched_node* %57, %struct.ice_sched_node** %3, align 8
  br label %87

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %35

62:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %63

63:                                               ; preds = %83, %62
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  %66 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load %struct.ice_sched_node*, %struct.ice_sched_node** %4, align 8
  %71 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %70, i32 0, i32 2
  %72 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %72, i64 %73
  %75 = load %struct.ice_sched_node*, %struct.ice_sched_node** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call %struct.ice_sched_node* @ice_sched_find_node_by_teid(%struct.ice_sched_node* %75, i32 %76)
  store %struct.ice_sched_node* %77, %struct.ice_sched_node** %7, align 8
  %78 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  %79 = icmp ne %struct.ice_sched_node* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  store %struct.ice_sched_node* %81, %struct.ice_sched_node** %3, align 8
  br label %87

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %63

86:                                               ; preds = %63
  store %struct.ice_sched_node* null, %struct.ice_sched_node** %3, align 8
  br label %87

87:                                               ; preds = %86, %80, %51, %33, %12
  %88 = load %struct.ice_sched_node*, %struct.ice_sched_node** %3, align 8
  ret %struct.ice_sched_node* %88
}

declare dso_local i32 @ICE_TXSCHED_GET_NODE_TEID(%struct.ice_sched_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
