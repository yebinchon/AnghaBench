; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_remove_elems.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_remove_elems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ice_sched_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ice_aqc_delete_elem = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_DBG_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"remove node failed FW error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_sched_node*, i32, i32*)* @ice_sched_remove_elems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_sched_remove_elems(%struct.ice_hw* %0, %struct.ice_sched_node* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca %struct.ice_sched_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ice_aqc_delete_elem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store %struct.ice_sched_node* %1, %struct.ice_sched_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = add i64 16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %14, align 4
  %21 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %22 = call i32 @ice_hw_to_dev(%struct.ice_hw* %21)
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ice_aqc_delete_elem* @devm_kzalloc(i32 %22, i32 %23, i32 %24)
  store %struct.ice_aqc_delete_elem* %25, %struct.ice_aqc_delete_elem** %10, align 8
  %26 = load %struct.ice_aqc_delete_elem*, %struct.ice_aqc_delete_elem** %10, align 8
  %27 = icmp ne %struct.ice_aqc_delete_elem* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %29, i32* %5, align 4
  br label %87

30:                                               ; preds = %4
  %31 = load %struct.ice_sched_node*, %struct.ice_sched_node** %7, align 8
  %32 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ice_aqc_delete_elem*, %struct.ice_aqc_delete_elem** %10, align 8
  %36 = getelementptr inbounds %struct.ice_aqc_delete_elem, %struct.ice_aqc_delete_elem* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @cpu_to_le16(i32 %38)
  %40 = load %struct.ice_aqc_delete_elem*, %struct.ice_aqc_delete_elem** %10, align 8
  %41 = getelementptr inbounds %struct.ice_aqc_delete_elem, %struct.ice_aqc_delete_elem* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %60, %30
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  %54 = load %struct.ice_aqc_delete_elem*, %struct.ice_aqc_delete_elem** %10, align 8
  %55 = getelementptr inbounds %struct.ice_aqc_delete_elem, %struct.ice_aqc_delete_elem* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %65 = load %struct.ice_aqc_delete_elem*, %struct.ice_aqc_delete_elem** %10, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @ice_aq_delete_sched_elems(%struct.ice_hw* %64, i32 1, %struct.ice_aqc_delete_elem* %65, i32 %66, i32* %12, i32* null)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %81

73:                                               ; preds = %70, %63
  %74 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %75 = load i32, i32* @ICE_DBG_SCHED, align 4
  %76 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %77 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ice_debug(%struct.ice_hw* %74, i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %73, %70
  %82 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %83 = call i32 @ice_hw_to_dev(%struct.ice_hw* %82)
  %84 = load %struct.ice_aqc_delete_elem*, %struct.ice_aqc_delete_elem** %10, align 8
  %85 = call i32 @devm_kfree(i32 %83, %struct.ice_aqc_delete_elem* %84)
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %28
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.ice_aqc_delete_elem* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ice_aq_delete_sched_elems(%struct.ice_hw*, i32, %struct.ice_aqc_delete_elem*, i32, i32*, i32*) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_delete_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
