; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_is_pkg_hdr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_is_pkg_hdr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_package_header = type { i32, i64*, %struct.i40e_ddp_version }
%struct.i40e_ddp_version = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Unsupported DDP profile version %u.%u.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid DDP profile - size is bigger than 4G\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid DDP profile - size is too small.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Invalid DDP profile - too many segments\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Invalid DDP profile %u segment alignment\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Invalid DDP profile %u segment offset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.i40e_package_header*, i64)* @i40e_ddp_is_pkg_hdr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_ddp_is_pkg_hdr_valid(%struct.net_device* %0, %struct.i40e_package_header* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.i40e_package_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40e_ddp_version, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.i40e_package_header* %1, %struct.i40e_package_header** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = and i64 4294967295, %13
  store i64 %14, i64* %8, align 8
  %15 = load %struct.i40e_package_header*, %struct.i40e_package_header** %6, align 8
  %16 = icmp ne %struct.i40e_package_header* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

18:                                               ; preds = %3
  %19 = load %struct.i40e_package_header*, %struct.i40e_package_header** %6, align 8
  %20 = getelementptr inbounds %struct.i40e_package_header, %struct.i40e_package_header* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.i40e_ddp_version, %struct.i40e_ddp_version* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load %struct.i40e_package_header*, %struct.i40e_package_header** %6, align 8
  %26 = getelementptr inbounds %struct.i40e_package_header, %struct.i40e_package_header* %25, i32 0, i32 2
  %27 = bitcast %struct.i40e_ddp_version* %11 to i8*
  %28 = bitcast %struct.i40e_ddp_version* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.i40e_ddp_version, %struct.i40e_ddp_version* %11, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.i40e_ddp_version, %struct.i40e_ddp_version* %11, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.i40e_ddp_version, %struct.i40e_ddp_version* %11, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.i40e_ddp_version, %struct.i40e_ddp_version* %11, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %33, i32 %35, i32 %37)
  store i32 0, i32* %4, align 4
  br label %104

39:                                               ; preds = %18
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %104

46:                                               ; preds = %39
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %47, 60
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %104

52:                                               ; preds = %46
  %53 = load %struct.i40e_package_header*, %struct.i40e_package_header** %6, align 8
  %54 = getelementptr inbounds %struct.i40e_package_header, %struct.i40e_package_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add i32 %55, 2
  %57 = zext i32 %56 to i64
  %58 = mul i64 8, %57
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %104

65:                                               ; preds = %52
  store i64 0, i64* %10, align 8
  br label %66

66:                                               ; preds = %100, %65
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.i40e_package_header*, %struct.i40e_package_header** %6, align 8
  %69 = getelementptr inbounds %struct.i40e_package_header, %struct.i40e_package_header* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %66
  %74 = load %struct.i40e_package_header*, %struct.i40e_package_header** %6, align 8
  %75 = getelementptr inbounds %struct.i40e_package_header, %struct.i40e_package_header* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = and i64 15, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %85)
  store i32 0, i32* %4, align 4
  br label %104

87:                                               ; preds = %73
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp uge i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91, %87
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %97)
  store i32 0, i32* %4, align 4
  br label %104

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %10, align 8
  br label %66

103:                                              ; preds = %66
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %95, %83, %62, %49, %43, %24, %17
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
