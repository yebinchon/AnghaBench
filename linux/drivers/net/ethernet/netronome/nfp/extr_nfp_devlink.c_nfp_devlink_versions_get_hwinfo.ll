; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_versions_get_hwinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_versions_get_hwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_devlink_versions_simple = type { i32, i32 }
%struct.nfp_pf = type { i32 }
%struct.devlink_info_req = type { i32 }

@nfp_devlink_versions_hwinfo = common dso_local global %struct.nfp_devlink_versions_simple* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.devlink_info_req*)* @nfp_devlink_versions_get_hwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_versions_get_hwinfo(%struct.nfp_pf* %0, %struct.devlink_info_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_pf*, align 8
  %5 = alloca %struct.devlink_info_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_devlink_versions_simple*, align 8
  %9 = alloca i8*, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %4, align 8
  store %struct.devlink_info_req* %1, %struct.devlink_info_req** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %42, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.nfp_devlink_versions_simple*, %struct.nfp_devlink_versions_simple** @nfp_devlink_versions_hwinfo, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.nfp_devlink_versions_simple* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load %struct.nfp_devlink_versions_simple*, %struct.nfp_devlink_versions_simple** @nfp_devlink_versions_hwinfo, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nfp_devlink_versions_simple, %struct.nfp_devlink_versions_simple* %16, i64 %18
  store %struct.nfp_devlink_versions_simple* %19, %struct.nfp_devlink_versions_simple** %8, align 8
  %20 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfp_devlink_versions_simple*, %struct.nfp_devlink_versions_simple** %8, align 8
  %24 = getelementptr inbounds %struct.nfp_devlink_versions_simple, %struct.nfp_devlink_versions_simple* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @nfp_hwinfo_lookup(i32 %22, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  br label %42

30:                                               ; preds = %15
  %31 = load %struct.devlink_info_req*, %struct.devlink_info_req** %5, align 8
  %32 = load %struct.nfp_devlink_versions_simple*, %struct.nfp_devlink_versions_simple** %8, align 8
  %33 = getelementptr inbounds %struct.nfp_devlink_versions_simple, %struct.nfp_devlink_versions_simple* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @devlink_info_version_fixed_put(%struct.devlink_info_req* %31, i32 %34, i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %10

45:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ARRAY_SIZE(%struct.nfp_devlink_versions_simple*) #1

declare dso_local i8* @nfp_hwinfo_lookup(i32, i32) #1

declare dso_local i32 @devlink_info_version_fixed_put(%struct.devlink_info_req*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
