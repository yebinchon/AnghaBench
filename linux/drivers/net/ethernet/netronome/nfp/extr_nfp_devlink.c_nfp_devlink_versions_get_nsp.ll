; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_versions_get_nsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_versions_get_nsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_devlink_versions = type { i32, i32 }
%struct.devlink_info_req = type { i32 }

@nfp_devlink_versions_nsp = common dso_local global %struct.nfp_devlink_versions* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_info_req*, i32, i32*, i32)* @nfp_devlink_versions_get_nsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_versions_get_nsp(%struct.devlink_info_req* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_info_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfp_devlink_versions*, align 8
  %13 = alloca i8*, align 8
  store %struct.devlink_info_req* %0, %struct.devlink_info_req** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %67, %4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.nfp_devlink_versions*, %struct.nfp_devlink_versions** @nfp_devlink_versions_nsp, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.nfp_devlink_versions* %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %14
  %20 = load %struct.nfp_devlink_versions*, %struct.nfp_devlink_versions** @nfp_devlink_versions_nsp, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nfp_devlink_versions, %struct.nfp_devlink_versions* %20, i64 %22
  store %struct.nfp_devlink_versions* %23, %struct.nfp_devlink_versions** %12, align 8
  %24 = load %struct.nfp_devlink_versions*, %struct.nfp_devlink_versions** %12, align 8
  %25 = getelementptr inbounds %struct.nfp_devlink_versions, %struct.nfp_devlink_versions* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i8* @nfp_nsp_versions_get(i32 %26, i32 %27, i32* %28, i32 %29)
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %67

41:                                               ; preds = %34
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %5, align 4
  br label %71

44:                                               ; preds = %19
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %49 = load %struct.nfp_devlink_versions*, %struct.nfp_devlink_versions** %12, align 8
  %50 = getelementptr inbounds %struct.nfp_devlink_versions, %struct.nfp_devlink_versions* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @devlink_info_version_stored_put(%struct.devlink_info_req* %48, i32 %51, i8* %52)
  store i32 %53, i32* %11, align 4
  br label %61

54:                                               ; preds = %44
  %55 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %56 = load %struct.nfp_devlink_versions*, %struct.nfp_devlink_versions** %12, align 8
  %57 = getelementptr inbounds %struct.nfp_devlink_versions, %struct.nfp_devlink_versions* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @devlink_info_version_running_put(%struct.devlink_info_req* %55, i32 %58, i8* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %54, %47
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %71

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %14

70:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %64, %41
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @ARRAY_SIZE(%struct.nfp_devlink_versions*) #1

declare dso_local i8* @nfp_nsp_versions_get(i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devlink_info_version_stored_put(%struct.devlink_info_req*, i32, i8*) #1

declare dso_local i32 @devlink_info_version_running_put(%struct.devlink_info_req*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
