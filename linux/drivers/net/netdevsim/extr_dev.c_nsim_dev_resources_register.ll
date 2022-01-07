; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_resources_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_resources_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_resource_size_params = type { i32, i32, i64 }
%struct.net = type { i32 }

@DEVLINK_RESOURCE_UNIT_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@NSIM_RESOURCE_IPV4 = common dso_local global i32 0, align 4
@DEVLINK_RESOURCE_ID_PARENT_TOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to register IPv4 top resource\0A\00", align 1
@NSIM_RESOURCE_IPV4_FIB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fib\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to register IPv4 FIB resource\0A\00", align 1
@NSIM_RESOURCE_IPV4_FIB_RULES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"fib-rules\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to register IPv4 FIB rules resource\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@NSIM_RESOURCE_IPV6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed to register IPv6 top resource\0A\00", align 1
@NSIM_RESOURCE_IPV6_FIB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to register IPv6 FIB resource\0A\00", align 1
@NSIM_RESOURCE_IPV6_FIB_RULES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"Failed to register IPv6 FIB rules resource\0A\00", align 1
@nsim_dev_ipv4_fib_resource_occ_get = common dso_local global i32 0, align 4
@nsim_dev_ipv4_fib_rules_res_occ_get = common dso_local global i32 0, align 4
@nsim_dev_ipv6_fib_resource_occ_get = common dso_local global i32 0, align 4
@nsim_dev_ipv6_fib_rules_res_occ_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*)* @nsim_dev_resources_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_dev_resources_register(%struct.devlink* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca %struct.devlink_resource_size_params, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  %8 = getelementptr inbounds %struct.devlink_resource_size_params, %struct.devlink_resource_size_params* %4, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.devlink_resource_size_params, %struct.devlink_resource_size_params* %4, i32 0, i32 1
  %10 = load i32, i32* @DEVLINK_RESOURCE_UNIT_ENTRY, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.devlink_resource_size_params, %struct.devlink_resource_size_params* %4, i32 0, i32 2
  store i64 -1, i64* %11, align 8
  %12 = load %struct.devlink*, %struct.devlink** %3, align 8
  %13 = call %struct.net* @nsim_devlink_net(%struct.devlink* %12)
  store %struct.net* %13, %struct.net** %5, align 8
  %14 = load %struct.devlink*, %struct.devlink** %3, align 8
  %15 = load i32, i32* @NSIM_RESOURCE_IPV4, align 4
  %16 = load i32, i32* @DEVLINK_RESOURCE_ID_PARENT_TOP, align 4
  %17 = call i32 @devlink_resource_register(%struct.devlink* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 -1, i32 %15, i32 %16, %struct.devlink_resource_size_params* %4)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %108

22:                                               ; preds = %1
  %23 = load %struct.net*, %struct.net** %5, align 8
  %24 = load i32, i32* @NSIM_RESOURCE_IPV4_FIB, align 4
  %25 = call i64 @nsim_fib_get_val(%struct.net* %23, i32 %24, i32 1)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.devlink*, %struct.devlink** %3, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @NSIM_RESOURCE_IPV4_FIB, align 4
  %29 = load i32, i32* @NSIM_RESOURCE_IPV4, align 4
  %30 = call i32 @devlink_resource_register(%struct.devlink* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %27, i32 %28, i32 %29, %struct.devlink_resource_size_params* %4)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %110

36:                                               ; preds = %22
  %37 = load %struct.net*, %struct.net** %5, align 8
  %38 = load i32, i32* @NSIM_RESOURCE_IPV4_FIB_RULES, align 4
  %39 = call i64 @nsim_fib_get_val(%struct.net* %37, i32 %38, i32 1)
  store i64 %39, i64* %7, align 8
  %40 = load %struct.devlink*, %struct.devlink** %3, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @NSIM_RESOURCE_IPV4_FIB_RULES, align 4
  %43 = load i32, i32* @NSIM_RESOURCE_IPV4, align 4
  %44 = call i32 @devlink_resource_register(%struct.devlink* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %41, i32 %42, i32 %43, %struct.devlink_resource_size_params* %4)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %110

50:                                               ; preds = %36
  %51 = load %struct.devlink*, %struct.devlink** %3, align 8
  %52 = load i32, i32* @NSIM_RESOURCE_IPV6, align 4
  %53 = load i32, i32* @DEVLINK_RESOURCE_ID_PARENT_TOP, align 4
  %54 = call i32 @devlink_resource_register(%struct.devlink* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 -1, i32 %52, i32 %53, %struct.devlink_resource_size_params* %4)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %108

59:                                               ; preds = %50
  %60 = load %struct.net*, %struct.net** %5, align 8
  %61 = load i32, i32* @NSIM_RESOURCE_IPV6_FIB, align 4
  %62 = call i64 @nsim_fib_get_val(%struct.net* %60, i32 %61, i32 1)
  store i64 %62, i64* %7, align 8
  %63 = load %struct.devlink*, %struct.devlink** %3, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* @NSIM_RESOURCE_IPV6_FIB, align 4
  %66 = load i32, i32* @NSIM_RESOURCE_IPV6, align 4
  %67 = call i32 @devlink_resource_register(%struct.devlink* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %64, i32 %65, i32 %66, %struct.devlink_resource_size_params* %4)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %110

73:                                               ; preds = %59
  %74 = load %struct.net*, %struct.net** %5, align 8
  %75 = load i32, i32* @NSIM_RESOURCE_IPV6_FIB_RULES, align 4
  %76 = call i64 @nsim_fib_get_val(%struct.net* %74, i32 %75, i32 1)
  store i64 %76, i64* %7, align 8
  %77 = load %struct.devlink*, %struct.devlink** %3, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* @NSIM_RESOURCE_IPV6_FIB_RULES, align 4
  %80 = load i32, i32* @NSIM_RESOURCE_IPV6, align 4
  %81 = call i32 @devlink_resource_register(%struct.devlink* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %78, i32 %79, i32 %80, %struct.devlink_resource_size_params* %4)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %110

87:                                               ; preds = %73
  %88 = load %struct.devlink*, %struct.devlink** %3, align 8
  %89 = load i32, i32* @NSIM_RESOURCE_IPV4_FIB, align 4
  %90 = load i32, i32* @nsim_dev_ipv4_fib_resource_occ_get, align 4
  %91 = load %struct.net*, %struct.net** %5, align 8
  %92 = call i32 @devlink_resource_occ_get_register(%struct.devlink* %88, i32 %89, i32 %90, %struct.net* %91)
  %93 = load %struct.devlink*, %struct.devlink** %3, align 8
  %94 = load i32, i32* @NSIM_RESOURCE_IPV4_FIB_RULES, align 4
  %95 = load i32, i32* @nsim_dev_ipv4_fib_rules_res_occ_get, align 4
  %96 = load %struct.net*, %struct.net** %5, align 8
  %97 = call i32 @devlink_resource_occ_get_register(%struct.devlink* %93, i32 %94, i32 %95, %struct.net* %96)
  %98 = load %struct.devlink*, %struct.devlink** %3, align 8
  %99 = load i32, i32* @NSIM_RESOURCE_IPV6_FIB, align 4
  %100 = load i32, i32* @nsim_dev_ipv6_fib_resource_occ_get, align 4
  %101 = load %struct.net*, %struct.net** %5, align 8
  %102 = call i32 @devlink_resource_occ_get_register(%struct.devlink* %98, i32 %99, i32 %100, %struct.net* %101)
  %103 = load %struct.devlink*, %struct.devlink** %3, align 8
  %104 = load i32, i32* @NSIM_RESOURCE_IPV6_FIB_RULES, align 4
  %105 = load i32, i32* @nsim_dev_ipv6_fib_rules_res_occ_get, align 4
  %106 = load %struct.net*, %struct.net** %5, align 8
  %107 = call i32 @devlink_resource_occ_get_register(%struct.devlink* %103, i32 %104, i32 %105, %struct.net* %106)
  br label %108

108:                                              ; preds = %87, %57, %20
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %84, %70, %47, %33
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.net* @nsim_devlink_net(%struct.devlink*) #1

declare dso_local i32 @devlink_resource_register(%struct.devlink*, i8*, i64, i32, i32, %struct.devlink_resource_size_params*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @nsim_fib_get_val(%struct.net*, i32, i32) #1

declare dso_local i32 @devlink_resource_occ_get_register(%struct.devlink*, i32, i32, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
