; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_remap_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_remap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i64, i64, i32, i64, i32 }
%struct.vm_area_struct = type { i64, i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"mmap offset:%ld size:%ld\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_remap_buffer(%struct.camera_data* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.camera_data* %0, %struct.camera_data** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = shl i64 %25, %26
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  %33 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %34 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %33, i32 0, i32 4
  %35 = call i32 @video_is_registered(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %115

40:                                               ; preds = %2
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %43 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %46 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 %44, %47
  %49 = icmp ugt i64 %41, %48
  br i1 %49, label %69, label %50

50:                                               ; preds = %40
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = urem i64 %51, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %58, %59
  %61 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %62 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %65 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %63, %66
  %68 = icmp ugt i64 %60, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %57, %50, %40
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %115

72:                                               ; preds = %57
  %73 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %74 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %75, %76
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %111, %72
  %79 = load i64, i64* %7, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %78
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @kvirt_to_pa(i64 %82)
  store i64 %83, i64* %10, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @PAGE_SHIFT, align 8
  %88 = lshr i64 %86, %87
  %89 = load i64, i64* @PAGE_SIZE, align 8
  %90 = load i32, i32* @PAGE_SHARED, align 4
  %91 = call i64 @remap_pfn_range(%struct.vm_area_struct* %84, i64 %85, i64 %88, i64 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %115

96:                                               ; preds = %81
  %97 = load i64, i64* @PAGE_SIZE, align 8
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* @PAGE_SIZE, align 8
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @PAGE_SIZE, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = load i64, i64* @PAGE_SIZE, align 8
  %108 = load i64, i64* %7, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %7, align 8
  br label %111

110:                                              ; preds = %96
  store i64 0, i64* %7, align 8
  br label %111

111:                                              ; preds = %110, %106
  br label %78

112:                                              ; preds = %78
  %113 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %114 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %93, %69, %37
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @DBG(i8*, i64, i64) #1

declare dso_local i32 @video_is_registered(i32*) #1

declare dso_local i64 @kvirt_to_pa(i64) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
