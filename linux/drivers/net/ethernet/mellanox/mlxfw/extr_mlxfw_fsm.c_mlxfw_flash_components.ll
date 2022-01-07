; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_fsm.c_mlxfw_flash_components.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_fsm.c_mlxfw_flash_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_dev = type { i32, i32 }
%struct.mlxfw_mfa2_file = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxfw_mfa2_component = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Could not find device PSID in MFA2 file\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not find device PSID in MFA2 file\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Flashing component type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxfw_dev*, i32, %struct.mlxfw_mfa2_file*, %struct.netlink_ext_ack*)* @mlxfw_flash_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxfw_flash_components(%struct.mlxfw_dev* %0, i32 %1, %struct.mlxfw_mfa2_file* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxfw_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxfw_mfa2_file*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlxfw_mfa2_component*, align 8
  store %struct.mlxfw_dev* %0, %struct.mlxfw_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlxfw_mfa2_file* %2, %struct.mlxfw_mfa2_file** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %14 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %15 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %16 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlxfw_mfa2_file_component_count(%struct.mlxfw_mfa2_file* %14, i32 %17, i32 %20, i32* %10)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %27 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %71

29:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %67, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %36 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %37 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %40 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call %struct.mlxfw_mfa2_component* @mlxfw_mfa2_file_component_get(%struct.mlxfw_mfa2_file* %35, i32 %38, i32 %41, i32 %42)
  store %struct.mlxfw_mfa2_component* %43, %struct.mlxfw_mfa2_component** %13, align 8
  %44 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %13, align 8
  %45 = call i64 @IS_ERR(%struct.mlxfw_mfa2_component* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %13, align 8
  %49 = call i32 @PTR_ERR(%struct.mlxfw_mfa2_component* %48)
  store i32 %49, i32* %5, align 4
  br label %71

50:                                               ; preds = %34
  %51 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %13, align 8
  %52 = getelementptr inbounds %struct.mlxfw_mfa2_component, %struct.mlxfw_mfa2_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %13, align 8
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %59 = call i32 @mlxfw_flash_component(%struct.mlxfw_dev* %55, i32 %56, %struct.mlxfw_mfa2_component* %57, %struct.netlink_ext_ack* %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %13, align 8
  %61 = call i32 @mlxfw_mfa2_file_component_put(%struct.mlxfw_mfa2_component* %60)
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %71

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %30

70:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %64, %47, %24
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @mlxfw_mfa2_file_component_count(%struct.mlxfw_mfa2_file*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.mlxfw_mfa2_component* @mlxfw_mfa2_file_component_get(%struct.mlxfw_mfa2_file*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxfw_mfa2_component*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxfw_mfa2_component*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mlxfw_flash_component(%struct.mlxfw_dev*, i32, %struct.mlxfw_mfa2_component*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxfw_mfa2_file_component_put(%struct.mlxfw_mfa2_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
