; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_ocxl_sysfs_register_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_ocxl_sysfs_register_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_file_info = type { i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@afu_attrs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"global_mmio_area\00", align 1
@global_mmio_read = common dso_local global i32 0, align 4
@global_mmio_mmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to create global mmio attr for afu: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_sysfs_register_afu(%struct.ocxl_file_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocxl_file_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocxl_file_info* %0, %struct.ocxl_file_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @afu_attrs, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %13 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %12, i32 0, i32 0
  %14 = load i32*, i32** @afu_attrs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @device_create_file(i32* %13, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %69

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %28 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %29)
  %31 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %32 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %36 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 384, i32* %38, align 8
  %39 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %40 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %46 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @global_mmio_read, align 4
  %49 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %50 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @global_mmio_mmap, align 4
  %53 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %54 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %57 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %56, i32 0, i32 0
  %58 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %59 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %58, i32 0, i32 1
  %60 = call i32 @device_create_bin_file(i32* %57, %struct.TYPE_8__* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %26
  %64 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %65 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %64, i32 0, i32 0
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %69

68:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %88

69:                                               ; preds = %63, %21
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %83, %69
  %73 = load i32, i32* %4, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %77 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %76, i32 0, i32 0
  %78 = load i32*, i32** @afu_attrs, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @device_remove_file(i32* %77, i32* %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %4, align 4
  br label %72

86:                                               ; preds = %72
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %68
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_7__*) #1

declare dso_local i32 @device_create_bin_file(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
