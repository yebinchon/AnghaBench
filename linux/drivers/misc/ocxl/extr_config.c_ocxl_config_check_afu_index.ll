; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_check_afu_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_check_afu_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn_config = type { i64 }

@OCXL_DVSEC_AFU_INFO_AFU_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"AFU descriptor template version %d.%d\0A\00", align 1
@OCXL_TEMPL_LEN_1_0 = common dso_local global i32 0, align 4
@OCXL_TEMPL_LEN_1_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unknown AFU template version %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"Unexpected template length %#x in AFU information, expected %#x for version %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_config_check_afu_index(%struct.pci_dev* %0, %struct.ocxl_fn_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ocxl_fn_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.ocxl_fn_config* %1, %struct.ocxl_fn_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %14 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OCXL_DVSEC_AFU_INFO_AFU_IDX, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @pci_write_config_byte(%struct.pci_dev* %12, i64 %17, i32 %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %6, align 8
  %22 = call i32 @read_template_version(%struct.pci_dev* %20, %struct.ocxl_fn_config* %21, i32* %10, i32* %9)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %65

34:                                               ; preds = %30, %27
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 8
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 255
  %41 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %47 [
    i32 5, label %43
    i32 256, label %43
    i32 257, label %45
  ]

43:                                               ; preds = %34, %34
  %44 = load i32, i32* @OCXL_TEMPL_LEN_1_0, align 4
  store i32 %44, i32* %11, align 4
  br label %53

45:                                               ; preds = %34
  %46 = load i32, i32* @OCXL_TEMPL_LEN_1_1, align 4
  store i32 %46, i32* %11, align 4
  br label %53

47:                                               ; preds = %34
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %47, %45, %43
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %59, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %53
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %33, %25
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @read_template_version(%struct.pci_dev*, %struct.ocxl_fn_config*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
