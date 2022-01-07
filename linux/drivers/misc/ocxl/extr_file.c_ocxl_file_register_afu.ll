; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_file.c_ocxl_file_register_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_file.c_ocxl_file_register_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { %struct.TYPE_7__, %struct.ocxl_fn* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ocxl_fn = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ocxl_file_info = type { %struct.TYPE_8__, %struct.ocxl_afu* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ocxl_dev = common dso_local global i32 0, align 4
@ocxl_class = common dso_local global i32 0, align 4
@info_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s.%s.%hhu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_file_register_afu(%struct.ocxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocxl_afu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocxl_file_info*, align 8
  %7 = alloca %struct.ocxl_fn*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.ocxl_afu* %0, %struct.ocxl_afu** %3, align 8
  %9 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %10 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %9, i32 0, i32 1
  %11 = load %struct.ocxl_fn*, %struct.ocxl_fn** %10, align 8
  store %struct.ocxl_fn* %11, %struct.ocxl_fn** %7, align 8
  %12 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  %13 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ocxl_file_info* @kzalloc(i32 32, i32 %17)
  store %struct.ocxl_file_info* %18, %struct.ocxl_file_info** %6, align 8
  %19 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %20 = icmp eq %struct.ocxl_file_info* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %113

24:                                               ; preds = %1
  %25 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %26 = call i32 @allocate_minor(%struct.ocxl_file_info* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %31 = call i32 @kfree(%struct.ocxl_file_info* %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %113

33:                                               ; preds = %24
  %34 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  %35 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %34, i32 0, i32 0
  %36 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %37 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %38, align 8
  %39 = load i32, i32* @ocxl_dev, align 4
  %40 = call i32 @MAJOR(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @MKDEV(i32 %40, i32 %41)
  %43 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %44 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @ocxl_class, align 4
  %47 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %48 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @info_release, align 4
  %51 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %52 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %55 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %56 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %55, i32 0, i32 1
  store %struct.ocxl_afu* %54, %struct.ocxl_afu** %56, align 8
  %57 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %58 = call i32 @ocxl_afu_get(%struct.ocxl_afu* %57)
  %59 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %60 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %59, i32 0, i32 0
  %61 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %62 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = call i32 @dev_name(i32* %66)
  %68 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %69 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_set_name(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %33
  br label %105

76:                                               ; preds = %33
  %77 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %78 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %77, i32 0, i32 0
  %79 = call i32 @device_register(%struct.TYPE_8__* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %105

83:                                               ; preds = %76
  %84 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %85 = call i32 @ocxl_sysfs_register_afu(%struct.ocxl_file_info* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %99

89:                                               ; preds = %83
  %90 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %91 = call i32 @ocxl_file_make_visible(%struct.ocxl_file_info* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %99

95:                                               ; preds = %89
  %96 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %97 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %98 = call i32 @ocxl_afu_set_private(%struct.ocxl_afu* %96, %struct.ocxl_file_info* %97)
  store i32 0, i32* %2, align 4
  br label %113

99:                                               ; preds = %94, %88
  %100 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %101 = call i32 @ocxl_sysfs_unregister_afu(%struct.ocxl_file_info* %100)
  %102 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %103 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %102, i32 0, i32 0
  %104 = call i32 @device_unregister(%struct.TYPE_8__* %103)
  br label %105

105:                                              ; preds = %99, %82, %75
  %106 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %107 = call i32 @ocxl_afu_put(%struct.ocxl_afu* %106)
  %108 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %109 = call i32 @free_minor(%struct.ocxl_file_info* %108)
  %110 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %6, align 8
  %111 = call i32 @kfree(%struct.ocxl_file_info* %110)
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %105, %95, %29, %21
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ocxl_file_info* @kzalloc(i32, i32) #1

declare dso_local i32 @allocate_minor(%struct.ocxl_file_info*) #1

declare dso_local i32 @kfree(%struct.ocxl_file_info*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @ocxl_afu_get(%struct.ocxl_afu*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_register(%struct.TYPE_8__*) #1

declare dso_local i32 @ocxl_sysfs_register_afu(%struct.ocxl_file_info*) #1

declare dso_local i32 @ocxl_file_make_visible(%struct.ocxl_file_info*) #1

declare dso_local i32 @ocxl_afu_set_private(%struct.ocxl_afu*, %struct.ocxl_file_info*) #1

declare dso_local i32 @ocxl_sysfs_unregister_afu(%struct.ocxl_file_info*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_8__*) #1

declare dso_local i32 @ocxl_afu_put(%struct.ocxl_afu*) #1

declare dso_local i32 @free_minor(%struct.ocxl_file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
