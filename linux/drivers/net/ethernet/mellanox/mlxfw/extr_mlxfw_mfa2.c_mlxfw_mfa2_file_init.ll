; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_mfa2_file = type { i8*, i32, i8*, i8*, i32, i32, %struct.firmware* }
%struct.firmware = type { i8* }
%struct.mlxfw_mfa2_tlv_package_descriptor = type { i32, i32, i32, i32 }
%struct.mlxfw_mfa2_tlv_multi = type { i32 }
%struct.mlxfw_mfa2_tlv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxfw_mfa2_fingerprint_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not parse package descriptor TLV\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"First TLV is not of valid multi type\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"First device TLV is not valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Component block is out side the file\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Component block size is too big\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxfw_mfa2_file* @mlxfw_mfa2_file_init(%struct.firmware* %0) #0 {
  %2 = alloca %struct.mlxfw_mfa2_file*, align 8
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca %struct.mlxfw_mfa2_tlv_package_descriptor*, align 8
  %5 = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %6 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %7 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %8 = alloca %struct.mlxfw_mfa2_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlxfw_mfa2_file* @kcalloc(i32 1, i32 48, i32 %11)
  store %struct.mlxfw_mfa2_file* %12, %struct.mlxfw_mfa2_file** %8, align 8
  %13 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %14 = icmp ne %struct.mlxfw_mfa2_file* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.mlxfw_mfa2_file* @ERR_PTR(i32 %17)
  store %struct.mlxfw_mfa2_file* %18, %struct.mlxfw_mfa2_file** %2, align 8
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.firmware*, %struct.firmware** %3, align 8
  %21 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %22 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %21, i32 0, i32 6
  store %struct.firmware* %20, %struct.firmware** %22, align 8
  %23 = load %struct.firmware*, %struct.firmware** %3, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @mlxfw_mfa2_fingerprint_len, align 4
  %27 = call i32 @NLA_ALIGN(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %25, i64 %28
  store i8* %29, i8** %9, align 8
  %30 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file* %30, i8* %31)
  store %struct.mlxfw_mfa2_tlv* %32, %struct.mlxfw_mfa2_tlv** %7, align 8
  %33 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %7, align 8
  %34 = icmp ne %struct.mlxfw_mfa2_tlv* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %19
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %144

37:                                               ; preds = %19
  %38 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %39 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %7, align 8
  %40 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %38, %struct.mlxfw_mfa2_tlv* %39)
  store %struct.mlxfw_mfa2_tlv_multi* %40, %struct.mlxfw_mfa2_tlv_multi** %5, align 8
  %41 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %5, align 8
  %42 = icmp ne %struct.mlxfw_mfa2_tlv_multi* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %144

45:                                               ; preds = %37
  %46 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %47 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %5, align 8
  %48 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %46, %struct.mlxfw_mfa2_tlv_multi* %47)
  store %struct.mlxfw_mfa2_tlv* %48, %struct.mlxfw_mfa2_tlv** %6, align 8
  %49 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %6, align 8
  %50 = icmp ne %struct.mlxfw_mfa2_tlv* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %144

52:                                               ; preds = %45
  %53 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %54 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %6, align 8
  %55 = call %struct.mlxfw_mfa2_tlv_package_descriptor* @mlxfw_mfa2_tlv_package_descriptor_get(%struct.mlxfw_mfa2_file* %53, %struct.mlxfw_mfa2_tlv* %54)
  store %struct.mlxfw_mfa2_tlv_package_descriptor* %55, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %56 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %57 = icmp ne %struct.mlxfw_mfa2_tlv_package_descriptor* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %144

60:                                               ; preds = %52
  %61 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %62 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %7, align 8
  %63 = call i32 @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %61, %struct.mlxfw_mfa2_tlv* %62)
  %64 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %65 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %67 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %144

72:                                               ; preds = %60
  %73 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %74 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @be16_to_cpu(i32 %75)
  %77 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %78 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %80 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %81 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %84 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file* %79, i32 %82, i8* %85)
  %87 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %88 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %90 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @be16_to_cpu(i32 %91)
  %93 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %94 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.firmware*, %struct.firmware** %3, align 8
  %96 = getelementptr inbounds %struct.firmware, %struct.firmware* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %99 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @be32_to_cpu(i32 %100)
  %102 = call i32 @NLA_ALIGN(i32 %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %97, i64 %103
  %105 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %106 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %108 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %109 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %107, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %72
  %114 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %144

115:                                              ; preds = %72
  %116 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %4, align 8
  %117 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @be32_to_cpu(i32 %118)
  %120 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %121 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %123 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %126 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, i8* %124, i64 %128
  %130 = getelementptr i8, i8* %129, i64 -1
  store i8* %130, i8** %10, align 8
  %131 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %131, i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %115
  %136 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %144

137:                                              ; preds = %115
  %138 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %139 = call i32 @mlxfw_mfa2_file_validate(%struct.mlxfw_mfa2_file* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  br label %144

142:                                              ; preds = %137
  %143 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  store %struct.mlxfw_mfa2_file* %143, %struct.mlxfw_mfa2_file** %2, align 8
  br label %150

144:                                              ; preds = %141, %135, %113, %70, %58, %51, %43, %35
  %145 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %146 = call i32 @kfree(%struct.mlxfw_mfa2_file* %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  %149 = call %struct.mlxfw_mfa2_file* @ERR_PTR(i32 %148)
  store %struct.mlxfw_mfa2_file* %149, %struct.mlxfw_mfa2_file** %2, align 8
  br label %150

150:                                              ; preds = %144, %142, %15
  %151 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %2, align 8
  ret %struct.mlxfw_mfa2_file* %151
}

declare dso_local %struct.mlxfw_mfa2_file* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.mlxfw_mfa2_file* @ERR_PTR(i32) #1

declare dso_local i32 @NLA_ALIGN(i32) #1

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*) #1

declare dso_local %struct.mlxfw_mfa2_tlv_package_descriptor* @mlxfw_mfa2_tlv_package_descriptor_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i32 @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file*, i32, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file*, i8*) #1

declare dso_local i32 @mlxfw_mfa2_file_validate(%struct.mlxfw_mfa2_file*) #1

declare dso_local i32 @kfree(%struct.mlxfw_mfa2_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
