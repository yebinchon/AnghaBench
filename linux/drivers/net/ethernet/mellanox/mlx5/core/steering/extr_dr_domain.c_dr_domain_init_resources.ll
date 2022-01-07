; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_init_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_init_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"Couldn't allocate PD\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Couldn't allocate UAR\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DR_ICM_TYPE_STE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Couldn't get icm memory\0A\00", align 1
@DR_ICM_TYPE_MODIFY_ACTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Couldn't get action icm memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Couldn't create send-ring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*)* @dr_domain_init_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_domain_init_resources(%struct.mlx5dr_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  %5 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %8, i32 0, i32 0
  %10 = call i32 @mlx5_core_alloc_pd(i32 %7, i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %15 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %99

17:                                               ; preds = %1
  %18 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx5_get_uars_page(i32 %20)
  %22 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %17
  %29 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %30 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %90

33:                                               ; preds = %17
  %34 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %35 = load i32, i32* @DR_ICM_TYPE_STE, align 4
  %36 = call i8* @mlx5dr_icm_pool_create(%struct.mlx5dr_domain* %34, i32 %35)
  %37 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %45 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %82

48:                                               ; preds = %33
  %49 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %50 = load i32, i32* @DR_ICM_TYPE_MODIFY_ACTION, align 4
  %51 = call i8* @mlx5dr_icm_pool_create(%struct.mlx5dr_domain* %49, i32 %50)
  %52 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  %59 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %60 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %77

63:                                               ; preds = %48
  %64 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %65 = call i32 @mlx5dr_send_ring_alloc(%struct.mlx5dr_domain* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %70 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %72

71:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %99

72:                                               ; preds = %68
  %73 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %74 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %73, i32 0, i32 4
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @mlx5dr_icm_pool_destroy(i8* %75)
  br label %77

77:                                               ; preds = %72, %58
  %78 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %79 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @mlx5dr_icm_pool_destroy(i8* %80)
  br label %82

82:                                               ; preds = %77, %43
  %83 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %84 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %87 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @mlx5_put_uars_page(i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %82, %28
  %91 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %92 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %95 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @mlx5_core_dealloc_pd(i32 %93, i32 %96)
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %90, %71, %13
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @mlx5_core_alloc_pd(i32, i32*) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @mlx5_get_uars_page(i32) #1

declare dso_local i32 @mlx5dr_err(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i8* @mlx5dr_icm_pool_create(%struct.mlx5dr_domain*, i32) #1

declare dso_local i32 @mlx5dr_send_ring_alloc(%struct.mlx5dr_domain*) #1

declare dso_local i32 @mlx5dr_icm_pool_destroy(i8*) #1

declare dso_local i32 @mlx5_put_uars_page(i32, i32) #1

declare dso_local i32 @mlx5_core_dealloc_pd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
