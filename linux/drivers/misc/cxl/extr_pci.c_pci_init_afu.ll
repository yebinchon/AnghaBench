; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_pci_init_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_pci_init_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.cxl_afu**, i32 }
%struct.cxl_afu = type { i64, %struct.cxl_afu*, i32, i32 }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"afu%i.%i\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't register vPHB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, i32, %struct.pci_dev*)* @pci_init_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_init_afu(%struct.cxl* %0, i32 %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.cxl_afu*, align 8
  %9 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.cxl*, %struct.cxl** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.cxl_afu* @cxl_alloc_afu(%struct.cxl* %12, i32 %13)
  store %struct.cxl_afu* %14, %struct.cxl_afu** %8, align 8
  %15 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %16 = icmp ne %struct.cxl_afu* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %101

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.cxl_afu* @kzalloc(i32 4, i32 %21)
  %23 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %24 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %23, i32 0, i32 1
  store %struct.cxl_afu* %22, %struct.cxl_afu** %24, align 8
  %25 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %26 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %25, i32 0, i32 1
  %27 = load %struct.cxl_afu*, %struct.cxl_afu** %26, align 8
  %28 = icmp ne %struct.cxl_afu* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %97

30:                                               ; preds = %20
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %32 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %31, i32 0, i32 1
  %33 = load %struct.cxl_afu*, %struct.cxl_afu** %32, align 8
  %34 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %33, i32 0, i32 3
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %37 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %36, i32 0, i32 2
  %38 = load %struct.cxl*, %struct.cxl** %5, align 8
  %39 = getelementptr inbounds %struct.cxl, %struct.cxl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dev_set_name(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %92

46:                                               ; preds = %30
  %47 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %48 = load %struct.cxl*, %struct.cxl** %5, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = call i32 @pci_configure_afu(%struct.cxl_afu* %47, %struct.cxl* %48, %struct.pci_dev* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %92

54:                                               ; preds = %46
  %55 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %56 = call i32 @cxl_debugfs_afu_add(%struct.cxl_afu* %55)
  %57 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %58 = call i32 @cxl_register_afu(%struct.cxl_afu* %57)
  store i32 %58, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %83

61:                                               ; preds = %54
  %62 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %63 = call i32 @cxl_sysfs_afu_add(%struct.cxl_afu* %62)
  store i32 %63, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %83

66:                                               ; preds = %61
  %67 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %68 = load %struct.cxl*, %struct.cxl** %5, align 8
  %69 = getelementptr inbounds %struct.cxl, %struct.cxl* %68, i32 0, i32 0
  %70 = load %struct.cxl_afu**, %struct.cxl_afu*** %69, align 8
  %71 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %72 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.cxl_afu*, %struct.cxl_afu** %70, i64 %73
  store %struct.cxl_afu* %67, %struct.cxl_afu** %74, align 8
  %75 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %76 = call i32 @cxl_pci_vphb_add(%struct.cxl_afu* %75)
  store i32 %76, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %80 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %79, i32 0, i32 2
  %81 = call i32 @dev_info(i32* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %66
  store i32 0, i32* %4, align 4
  br label %101

83:                                               ; preds = %65, %60
  %84 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %85 = call i32 @pci_deconfigure_afu(%struct.cxl_afu* %84)
  %86 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %87 = call i32 @cxl_debugfs_afu_remove(%struct.cxl_afu* %86)
  %88 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %89 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %88, i32 0, i32 2
  %90 = call i32 @device_unregister(i32* %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %101

92:                                               ; preds = %53, %45
  %93 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %94 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %93, i32 0, i32 1
  %95 = load %struct.cxl_afu*, %struct.cxl_afu** %94, align 8
  %96 = call i32 @kfree(%struct.cxl_afu* %95)
  br label %97

97:                                               ; preds = %92, %29
  %98 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %99 = call i32 @kfree(%struct.cxl_afu* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %83, %82, %17
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.cxl_afu* @cxl_alloc_afu(%struct.cxl*, i32) #1

declare dso_local %struct.cxl_afu* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_configure_afu(%struct.cxl_afu*, %struct.cxl*, %struct.pci_dev*) #1

declare dso_local i32 @cxl_debugfs_afu_add(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_register_afu(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_sysfs_afu_add(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_pci_vphb_add(%struct.cxl_afu*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pci_deconfigure_afu(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_debugfs_afu_remove(%struct.cxl_afu*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
