; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_dev_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_dev_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_mfa2_file = type { i32 }
%struct.mlxfw_mfa2_tlv = type { i32 }
%struct.mlxfw_mfa2_tlv_component_ptr = type { i32 }
%struct.mlxfw_mfa2_tlv_multi = type { i32 }
%struct.mlxfw_mfa2_tlv_psid = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Device %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Device %d is not a valid TLV error\0A\00", align 1
@MLXFW_MFA2_TLV_PSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Device %d does not have PSID\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Device %d PSID TLV is not valid\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"  -- Device PSID \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@MLXFW_MFA2_TLV_COMPONENT_PTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Device %d has no components\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Device %d COMPONENT_PTR TLV is not valid\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"  -- Component index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*, i64)* @mlxfw_mfa2_file_dev_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxfw_mfa2_file_dev_validate(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxfw_mfa2_file*, align 8
  %6 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlxfw_mfa2_tlv_component_ptr*, align 8
  %9 = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %10 = alloca %struct.mlxfw_mfa2_tlv_psid*, align 8
  %11 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_file** %5, align 8
  store %struct.mlxfw_mfa2_tlv* %1, %struct.mlxfw_mfa2_tlv** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %18 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %6, align 8
  %19 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %17, %struct.mlxfw_mfa2_tlv* %18)
  store %struct.mlxfw_mfa2_tlv_multi* %19, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %20 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %21 = icmp ne %struct.mlxfw_mfa2_tlv_multi* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  store i32 0, i32* %4, align 4
  br label %106

25:                                               ; preds = %3
  %26 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %27 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %28 = call i32 @mlxfw_mfa2_tlv_multi_validate(%struct.mlxfw_mfa2_file* %26, %struct.mlxfw_mfa2_tlv_multi* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %106

31:                                               ; preds = %25
  %32 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %33 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %34 = load i32, i32* @MLXFW_MFA2_TLV_PSID, align 4
  %35 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file* %32, %struct.mlxfw_mfa2_tlv_multi* %33, i32 %34, i64 0)
  store %struct.mlxfw_mfa2_tlv* %35, %struct.mlxfw_mfa2_tlv** %11, align 8
  %36 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %11, align 8
  %37 = icmp ne %struct.mlxfw_mfa2_tlv* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  store i32 0, i32* %4, align 4
  br label %106

41:                                               ; preds = %31
  %42 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %43 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %11, align 8
  %44 = call %struct.mlxfw_mfa2_tlv_psid* @mlxfw_mfa2_tlv_psid_get(%struct.mlxfw_mfa2_file* %42, %struct.mlxfw_mfa2_tlv* %43)
  store %struct.mlxfw_mfa2_tlv_psid* %44, %struct.mlxfw_mfa2_tlv_psid** %10, align 8
  %45 = load %struct.mlxfw_mfa2_tlv_psid*, %struct.mlxfw_mfa2_tlv_psid** %10, align 8
  %46 = icmp ne %struct.mlxfw_mfa2_tlv_psid* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  store i32 0, i32* %4, align 4
  br label %106

50:                                               ; preds = %41
  %51 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %52 = load %struct.mlxfw_mfa2_tlv_psid*, %struct.mlxfw_mfa2_tlv_psid** %10, align 8
  %53 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_psid, %struct.mlxfw_mfa2_tlv_psid* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %11, align 8
  %56 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @be16_to_cpu(i32 %57)
  %59 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %51, i32 16, i32 16, i32 %54, i64 %58, i32 1)
  %60 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %61 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %62 = load i32, i32* @MLXFW_MFA2_TLV_COMPONENT_PTR, align 4
  %63 = call i32 @mlxfw_mfa2_tlv_multi_child_count(%struct.mlxfw_mfa2_file* %60, %struct.mlxfw_mfa2_tlv_multi* %61, i32 %62, i64* %12)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %106

67:                                               ; preds = %50
  %68 = load i64, i64* %12, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %71)
  store i32 0, i32* %4, align 4
  br label %106

73:                                               ; preds = %67
  store i64 0, i64* %13, align 8
  br label %74

74:                                               ; preds = %102, %73
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %74
  %79 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %80 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %81 = load i32, i32* @MLXFW_MFA2_TLV_COMPONENT_PTR, align 4
  %82 = load i64, i64* %13, align 8
  %83 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file* %79, %struct.mlxfw_mfa2_tlv_multi* %80, i32 %81, i64 %82)
  store %struct.mlxfw_mfa2_tlv* %83, %struct.mlxfw_mfa2_tlv** %11, align 8
  %84 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %11, align 8
  %85 = icmp ne %struct.mlxfw_mfa2_tlv* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %106

87:                                               ; preds = %78
  %88 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %89 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %11, align 8
  %90 = call %struct.mlxfw_mfa2_tlv_component_ptr* @mlxfw_mfa2_tlv_component_ptr_get(%struct.mlxfw_mfa2_file* %88, %struct.mlxfw_mfa2_tlv* %89)
  store %struct.mlxfw_mfa2_tlv_component_ptr* %90, %struct.mlxfw_mfa2_tlv_component_ptr** %8, align 8
  %91 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %8, align 8
  %92 = icmp ne %struct.mlxfw_mfa2_tlv_component_ptr* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %94)
  store i32 0, i32* %4, align 4
  br label %106

96:                                               ; preds = %87
  %97 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %8, align 8
  %98 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_ptr, %struct.mlxfw_mfa2_tlv_component_ptr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @be16_to_cpu(i32 %99)
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %96
  %103 = load i64, i64* %13, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %13, align 8
  br label %74

105:                                              ; preds = %74
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %93, %86, %70, %66, %47, %38, %30, %22
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @mlxfw_mfa2_tlv_multi_validate(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*) #1

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*, i32, i64) #1

declare dso_local %struct.mlxfw_mfa2_tlv_psid* @mlxfw_mfa2_tlv_psid_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @mlxfw_mfa2_tlv_multi_child_count(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*, i32, i64*) #1

declare dso_local %struct.mlxfw_mfa2_tlv_component_ptr* @mlxfw_mfa2_tlv_component_ptr_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
