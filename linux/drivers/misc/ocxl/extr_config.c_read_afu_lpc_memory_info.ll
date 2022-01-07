; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_afu_lpc_memory_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_afu_lpc_memory_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn_config = type { i32 }
%struct.ocxl_afu_config = type { i64, i32, i32, i32 }

@OCXL_DVSEC_TEMPL_ALL_MEM_SZ = common dso_local global i64 0, align 8
@OCXL_DVSEC_TEMPL_LPC_MEM_START = common dso_local global i64 0, align 8
@OCXL_DVSEC_TEMPL_LPC_MEM_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_fn_config*, %struct.ocxl_afu_config*)* @read_afu_lpc_memory_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_afu_lpc_memory_info(%struct.pci_dev* %0, %struct.ocxl_fn_config* %1, %struct.ocxl_afu_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ocxl_fn_config*, align 8
  %7 = alloca %struct.ocxl_afu_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.ocxl_fn_config* %1, %struct.ocxl_fn_config** %6, align 8
  store %struct.ocxl_afu_config* %2, %struct.ocxl_afu_config** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %15 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %17 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %19 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %18, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %21 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %20, i32 0, i32 3
  store i32 0, i32* %21, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %24 = load i64, i64* @OCXL_DVSEC_TEMPL_ALL_MEM_SZ, align 8
  %25 = call i32 @read_afu_info(%struct.pci_dev* %22, %struct.ocxl_fn_config* %23, i64 %24, i64* %9)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %132

30:                                               ; preds = %3
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @EXTRACT_BITS(i64 %31, i32 0, i32 7)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %132

36:                                               ; preds = %30
  %37 = load i64, i64* %9, align 8
  %38 = shl i64 1, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %42 = load i64, i64* @OCXL_DVSEC_TEMPL_LPC_MEM_START, align 8
  %43 = call i32 @read_afu_info(%struct.pci_dev* %40, %struct.ocxl_fn_config* %41, i64 %42, i64* %9)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %132

48:                                               ; preds = %36
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %51 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %54 = load i64, i64* @OCXL_DVSEC_TEMPL_LPC_MEM_START, align 8
  %55 = add nsw i64 %54, 4
  %56 = call i32 @read_afu_info(%struct.pci_dev* %52, %struct.ocxl_fn_config* %53, i64 %55, i64* %9)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %132

61:                                               ; preds = %48
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 32
  %65 = sext i32 %64 to i64
  %66 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %67 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %72 = call i32 @read_template_version(%struct.pci_dev* %70, %struct.ocxl_fn_config* %71, i32* %11, i32* %10)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %132

77:                                               ; preds = %61
  %78 = load i32, i32* %10, align 4
  %79 = icmp sge i32 %78, 257
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %82 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %83 = load i64, i64* @OCXL_DVSEC_TEMPL_LPC_MEM_SZ, align 8
  %84 = call i32 @read_afu_info(%struct.pci_dev* %81, %struct.ocxl_fn_config* %82, i64 %83, i64* %9)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %132

89:                                               ; preds = %80
  %90 = load i64, i64* %9, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %13, align 4
  %92 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %93 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %94 = load i64, i64* @OCXL_DVSEC_TEMPL_LPC_MEM_SZ, align 8
  %95 = add nsw i64 %94, 4
  %96 = call i32 @read_afu_info(%struct.pci_dev* %92, %struct.ocxl_fn_config* %93, i64 %95, i64* %9)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %132

101:                                              ; preds = %89
  %102 = load i64, i64* %9, align 8
  %103 = trunc i64 %102 to i32
  %104 = shl i32 %103, 32
  %105 = load i32, i32* %13, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %13, align 4
  br label %109

107:                                              ; preds = %77
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %107, %101
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %112 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %118 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %119, %121
  %123 = trunc i64 %122 to i32
  %124 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %125 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %130 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %116, %109
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %99, %87, %75, %59, %46, %35, %28
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @read_afu_info(%struct.pci_dev*, %struct.ocxl_fn_config*, i64, i64*) #1

declare dso_local i64 @EXTRACT_BITS(i64, i32, i32) #1

declare dso_local i32 @read_template_version(%struct.pci_dev*, %struct.ocxl_fn_config*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
