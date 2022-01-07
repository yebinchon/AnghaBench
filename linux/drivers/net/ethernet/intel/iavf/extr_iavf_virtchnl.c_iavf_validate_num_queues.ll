; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_validate_num_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_validate_num_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, %struct.virtchnl_vsi_resource* }
%struct.virtchnl_vsi_resource = type { i64 }
%struct.TYPE_3__ = type { i32 }

@IAVF_MAX_REQ_QUEUES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Received %d queues, but can only have a max of %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Fixing by reducing queues to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_validate_num_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_validate_num_queues(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.virtchnl_vsi_resource*, align 8
  %4 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %5 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IAVF_MAX_REQ_QUEUES, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %1
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IAVF_MAX_REQ_QUEUES, align 8
  %23 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* @IAVF_MAX_REQ_QUEUES, align 8
  %29 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* @IAVF_MAX_REQ_QUEUES, align 8
  %31 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %55, %12
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %35
  %44 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %48, i64 %50
  store %struct.virtchnl_vsi_resource* %51, %struct.virtchnl_vsi_resource** %3, align 8
  %52 = load i64, i64* @IAVF_MAX_REQ_QUEUES, align 8
  %53 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %3, align 8
  %54 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %35

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58, %1
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
