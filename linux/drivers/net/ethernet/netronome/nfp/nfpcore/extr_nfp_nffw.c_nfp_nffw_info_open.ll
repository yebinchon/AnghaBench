; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nffw.c_nfp_nffw_info_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nffw.c_nfp_nffw_info_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nffw_info = type { i32, %struct.nfp_cpp*, %struct.nfp_nffw_info_data }
%struct.nfp_nffw_info_data = type { i32 }
%struct.nfp_cpp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFP_RESOURCE_NFP_NFFW = common dso_local global i32 0, align 4
@NFFW_INFO_VERSION_CURRENT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_nffw_info* @nfp_nffw_info_open(%struct.nfp_cpp* %0) #0 {
  %2 = alloca %struct.nfp_nffw_info*, align 8
  %3 = alloca %struct.nfp_cpp*, align 8
  %4 = alloca %struct.nfp_nffw_info_data*, align 8
  %5 = alloca %struct.nfp_nffw_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nfp_nffw_info* @kzalloc(i32 24, i32 %8)
  store %struct.nfp_nffw_info* %9, %struct.nfp_nffw_info** %5, align 8
  %10 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %11 = icmp ne %struct.nfp_nffw_info* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.nfp_nffw_info* @ERR_PTR(i32 %14)
  store %struct.nfp_nffw_info* %15, %struct.nfp_nffw_info** %2, align 8
  br label %81

16:                                               ; preds = %1
  %17 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %18 = load i32, i32* @NFP_RESOURCE_NFP_NFFW, align 4
  %19 = call i32 @nfp_resource_acquire(%struct.nfp_cpp* %17, i32 %18)
  %20 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %75

28:                                               ; preds = %16
  %29 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %30 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %29, i32 0, i32 2
  store %struct.nfp_nffw_info_data* %30, %struct.nfp_nffw_info_data** %4, align 8
  %31 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %32 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @nfp_resource_size(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = icmp ugt i64 4, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %70

38:                                               ; preds = %28
  %39 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %40 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %41 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @nfp_resource_cpp_id(i32 %42)
  %44 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %45 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @nfp_resource_address(i32 %46)
  %48 = load %struct.nfp_nffw_info_data*, %struct.nfp_nffw_info_data** %4, align 8
  %49 = call i32 @nfp_cpp_read(%struct.nfp_cpp* %39, i32 %43, i32 %47, %struct.nfp_nffw_info_data* %48, i32 4)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %70

53:                                               ; preds = %38
  %54 = load %struct.nfp_nffw_info_data*, %struct.nfp_nffw_info_data** %4, align 8
  %55 = call i32 @nffw_res_flg_init_get(%struct.nfp_nffw_info_data* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %70

58:                                               ; preds = %53
  %59 = load %struct.nfp_nffw_info_data*, %struct.nfp_nffw_info_data** %4, align 8
  %60 = call i64 @nffw_res_info_version_get(%struct.nfp_nffw_info_data* %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @NFFW_INFO_VERSION_CURRENT, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %70

65:                                               ; preds = %58
  %66 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %67 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %68 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %67, i32 0, i32 1
  store %struct.nfp_cpp* %66, %struct.nfp_cpp** %68, align 8
  %69 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  store %struct.nfp_nffw_info* %69, %struct.nfp_nffw_info** %2, align 8
  br label %81

70:                                               ; preds = %64, %57, %52, %37
  %71 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %72 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @nfp_resource_release(i32 %73)
  br label %75

75:                                               ; preds = %70, %27
  %76 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %77 = call i32 @kfree(%struct.nfp_nffw_info* %76)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.nfp_nffw_info* @ERR_PTR(i32 %79)
  store %struct.nfp_nffw_info* %80, %struct.nfp_nffw_info** %2, align 8
  br label %81

81:                                               ; preds = %75, %65, %12
  %82 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %2, align 8
  ret %struct.nfp_nffw_info* %82
}

declare dso_local %struct.nfp_nffw_info* @kzalloc(i32, i32) #1

declare dso_local %struct.nfp_nffw_info* @ERR_PTR(i32) #1

declare dso_local i32 @nfp_resource_acquire(%struct.nfp_cpp*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @nfp_resource_size(i32) #1

declare dso_local i32 @nfp_cpp_read(%struct.nfp_cpp*, i32, i32, %struct.nfp_nffw_info_data*, i32) #1

declare dso_local i32 @nfp_resource_cpp_id(i32) #1

declare dso_local i32 @nfp_resource_address(i32) #1

declare dso_local i32 @nffw_res_flg_init_get(%struct.nfp_nffw_info_data*) #1

declare dso_local i64 @nffw_res_info_version_get(%struct.nfp_nffw_info_data*) #1

declare dso_local i32 @nfp_resource_release(i32) #1

declare dso_local i32 @kfree(%struct.nfp_nffw_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
