; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_afu_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_afu_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn_config = type { i32 }
%struct.ocxl_afu_config = type { i32, i32, i32, i32, i8*, i8* }

@OCXL_DVSEC_TEMPL_MMIO_GLOBAL = common dso_local global i64 0, align 8
@OCXL_DVSEC_TEMPL_MMIO_GLOBAL_SZ = common dso_local global i64 0, align 8
@OCXL_DVSEC_TEMPL_MMIO_PP = common dso_local global i64 0, align 8
@OCXL_DVSEC_TEMPL_MMIO_PP_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_fn_config*, %struct.ocxl_afu_config*)* @read_afu_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_afu_mmio(%struct.pci_dev* %0, %struct.ocxl_fn_config* %1, %struct.ocxl_afu_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ocxl_fn_config*, align 8
  %7 = alloca %struct.ocxl_afu_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.ocxl_fn_config* %1, %struct.ocxl_fn_config** %6, align 8
  store %struct.ocxl_afu_config* %2, %struct.ocxl_afu_config** %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %12 = load i64, i64* @OCXL_DVSEC_TEMPL_MMIO_GLOBAL, align 8
  %13 = call i32 @read_afu_info(%struct.pci_dev* %10, %struct.ocxl_fn_config* %11, i64 %12, i8** %9)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %104

18:                                               ; preds = %3
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @EXTRACT_BITS(i8* %19, i32 0, i32 2)
  %21 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %22 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @EXTRACT_BITS(i8* %23, i32 16, i32 31)
  %25 = shl i32 %24, 16
  %26 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %27 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %30 = load i64, i64* @OCXL_DVSEC_TEMPL_MMIO_GLOBAL, align 8
  %31 = add nsw i64 %30, 4
  %32 = call i32 @read_afu_info(%struct.pci_dev* %28, %struct.ocxl_fn_config* %29, i64 %31, i8** %9)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %104

37:                                               ; preds = %18
  %38 = load i8*, i8** %9, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = shl i32 %39, 32
  %41 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %42 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %47 = load i64, i64* @OCXL_DVSEC_TEMPL_MMIO_GLOBAL_SZ, align 8
  %48 = call i32 @read_afu_info(%struct.pci_dev* %45, %struct.ocxl_fn_config* %46, i64 %47, i8** %9)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %104

53:                                               ; preds = %37
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %56 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %59 = load i64, i64* @OCXL_DVSEC_TEMPL_MMIO_PP, align 8
  %60 = call i32 @read_afu_info(%struct.pci_dev* %57, %struct.ocxl_fn_config* %58, i64 %59, i8** %9)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %104

65:                                               ; preds = %53
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @EXTRACT_BITS(i8* %66, i32 0, i32 2)
  %68 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %69 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @EXTRACT_BITS(i8* %70, i32 16, i32 31)
  %72 = shl i32 %71, 16
  %73 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %74 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %77 = load i64, i64* @OCXL_DVSEC_TEMPL_MMIO_PP, align 8
  %78 = add nsw i64 %77, 4
  %79 = call i32 @read_afu_info(%struct.pci_dev* %75, %struct.ocxl_fn_config* %76, i64 %78, i8** %9)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %104

84:                                               ; preds = %65
  %85 = load i8*, i8** %9, align 8
  %86 = ptrtoint i8* %85 to i32
  %87 = shl i32 %86, 32
  %88 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %89 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %93 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %94 = load i64, i64* @OCXL_DVSEC_TEMPL_MMIO_PP_SZ, align 8
  %95 = call i32 @read_afu_info(%struct.pci_dev* %92, %struct.ocxl_fn_config* %93, i64 %94, i8** %9)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %104

100:                                              ; preds = %84
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %7, align 8
  %103 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %98, %82, %63, %51, %35, %16
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @read_afu_info(%struct.pci_dev*, %struct.ocxl_fn_config*, i64, i8**) #1

declare dso_local i32 @EXTRACT_BITS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
