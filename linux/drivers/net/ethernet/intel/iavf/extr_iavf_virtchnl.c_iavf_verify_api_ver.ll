; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_verify_api_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_verify_api_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { %struct.virtchnl_version_info, %struct.TYPE_4__*, %struct.iavf_hw }
%struct.virtchnl_version_info = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.iavf_hw = type { i32 }
%struct.iavf_arq_event_info = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@IAVF_MAX_AQ_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid reply type %d from PF\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VIRTCHNL_VERSION_MAJOR = common dso_local global i64 0, align 8
@VIRTCHNL_VERSION_MINOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_verify_api_ver(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.virtchnl_version_info*, align 8
  %4 = alloca %struct.iavf_hw*, align 8
  %5 = alloca %struct.iavf_arq_event_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %8 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %8, i32 0, i32 2
  store %struct.iavf_hw* %9, %struct.iavf_hw** %4, align 8
  %10 = load i32, i32* @IAVF_MAX_AQ_BUF_SIZE, align 4
  %11 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %5, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @kzalloc(i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %5, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %97

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %40
  %25 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %26 = call i32 @iavf_clean_arq_element(%struct.iavf_hw* %25, %struct.iavf_arq_event_info* %5, i32* null)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %93

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @VIRTCHNL_OP_VERSION, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %41

40:                                               ; preds = %30
  br label %24

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %5, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @le32_to_cpu(i32 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %93

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @VIRTCHNL_OP_VERSION, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %93

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.virtchnl_version_info*
  store %struct.virtchnl_version_info* %66, %struct.virtchnl_version_info** %3, align 8
  %67 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %67, i32 0, i32 0
  %69 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %70 = bitcast %struct.virtchnl_version_info* %68 to i8*
  %71 = bitcast %struct.virtchnl_version_info* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  %72 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %73 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VIRTCHNL_VERSION_MAJOR, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %63
  %78 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %79 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VIRTCHNL_VERSION_MAJOR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %85 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VIRTCHNL_VERSION_MINOR, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83, %63
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %83, %77
  br label %93

93:                                               ; preds = %92, %54, %49, %29
  %94 = getelementptr inbounds %struct.iavf_arq_event_info, %struct.iavf_arq_event_info* %5, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @kfree(i64 %95)
  br label %97

97:                                               ; preds = %93, %20
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @iavf_clean_arq_element(%struct.iavf_hw*, %struct.iavf_arq_event_info*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
