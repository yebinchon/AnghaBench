; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_setup_msa_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_setup_msa_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i32, i32, i32, %struct.ath10k* }
%struct.ath10k = type { %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to resolve msa fixed region\0A\00", align 1
@MEMREMAP_WT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to map memory region: %pa\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to allocate dma memory for msa region\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"msa pa: %pad , msa va: 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*, i32)* @ath10k_qmi_setup_msa_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_setup_msa_resources(%struct.ath10k_qmi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k_qmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.resource, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %11, i32 0, i32 3
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %6, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.device_node* @of_parse_phandle(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %20, %struct.device_node** %8, align 8
  %21 = load %struct.device_node*, %struct.device_node** %8, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %67

23:                                               ; preds = %2
  %24 = load %struct.device_node*, %struct.device_node** %8, align 8
  %25 = call i32 @of_address_to_resource(%struct.device_node* %24, i32 0, %struct.resource* %9)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %98

32:                                               ; preds = %23
  %33 = load %struct.device_node*, %struct.device_node** %8, align 8
  %34 = call i32 @of_node_put(%struct.device_node* %33)
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %38 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = call i32 @resource_size(%struct.resource* %9)
  %40 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %44 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MEMREMAP_WT, align 4
  %50 = call i32 @devm_memremap(%struct.device* %42, i32 %45, i32 %48, i32 %49)
  %51 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %52 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %54 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %32
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %60)
  %62 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %63 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %3, align 4
  br label %98

66:                                               ; preds = %32
  br label %89

67:                                               ; preds = %2
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %71 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %70, i32 0, i32 1
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @dmam_alloc_coherent(%struct.device* %68, i32 %69, i32* %71, i32 %72)
  %74 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %75 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %77 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %67
  %81 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %82 = call i32 @ath10k_err(%struct.ath10k* %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %98

85:                                               ; preds = %67
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %88 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %66
  %90 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %91 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %92 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %93 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %92, i32 0, i32 1
  %94 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %4, align 8
  %95 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ath10k_dbg(%struct.ath10k* %90, i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32* %93, i32 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %89, %80, %58, %28
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_memremap(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
