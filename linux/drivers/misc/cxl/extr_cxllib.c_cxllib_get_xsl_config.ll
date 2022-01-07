; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_cxllib_get_xsl_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_cxllib_get_xsl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cxllib_xsl_config = type { i64, i32, i32, i32, i32 }

@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dra_mutex = common dso_local global i32 0, align 4
@dummy_read_addr = common dso_local global i64 0, align 8
@CXL_INVALID_DRA = common dso_local global i64 0, align 8
@CXL_XSL_CONFIG_CURRENT_VERSION = common dso_local global i32 0, align 4
@CXL_CAPI_WINDOW_LOG_SIZE = common dso_local global i32 0, align 4
@CXL_CAPI_WINDOW_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxllib_get_xsl_config(%struct.pci_dev* %0, %struct.cxllib_xsl_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.cxllib_xsl_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.cxllib_xsl_config* %1, %struct.cxllib_xsl_config** %5, align 8
  %10 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %11 = call i32 @cpu_has_feature(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = call i32 @mutex_lock(i32* @dra_mutex)
  %18 = load i64, i64* @dummy_read_addr, align 8
  %19 = load i64, i64* @CXL_INVALID_DRA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = call i32 (...) @allocate_dummy_read_buf()
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 @mutex_unlock(i32* @dra_mutex)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %16
  %30 = call i32 @mutex_unlock(i32* @dra_mutex)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @cxl_calc_capp_routing(%struct.pci_dev* %31, i32* %8, i32* %7, i32* %9)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %29
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.cxllib_xsl_config*, %struct.cxllib_xsl_config** %5, align 8
  %41 = getelementptr inbounds %struct.cxllib_xsl_config, %struct.cxllib_xsl_config* %40, i32 0, i32 4
  %42 = call i32 @cxl_get_xsl9_dsnctl(%struct.pci_dev* %38, i32 %39, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %37
  %48 = load i32, i32* @CXL_XSL_CONFIG_CURRENT_VERSION, align 4
  %49 = load %struct.cxllib_xsl_config*, %struct.cxllib_xsl_config** %5, align 8
  %50 = getelementptr inbounds %struct.cxllib_xsl_config, %struct.cxllib_xsl_config* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @CXL_CAPI_WINDOW_LOG_SIZE, align 4
  %52 = load %struct.cxllib_xsl_config*, %struct.cxllib_xsl_config** %5, align 8
  %53 = getelementptr inbounds %struct.cxllib_xsl_config, %struct.cxllib_xsl_config* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @CXL_CAPI_WINDOW_START, align 4
  %55 = load %struct.cxllib_xsl_config*, %struct.cxllib_xsl_config** %5, align 8
  %56 = getelementptr inbounds %struct.cxllib_xsl_config, %struct.cxllib_xsl_config* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @dummy_read_addr, align 8
  %58 = load %struct.cxllib_xsl_config*, %struct.cxllib_xsl_config** %5, align 8
  %59 = getelementptr inbounds %struct.cxllib_xsl_config, %struct.cxllib_xsl_config* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %45, %35, %25, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @allocate_dummy_read_buf(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cxl_calc_capp_routing(%struct.pci_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @cxl_get_xsl9_dsnctl(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
