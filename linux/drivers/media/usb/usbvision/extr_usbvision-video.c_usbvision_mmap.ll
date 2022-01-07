; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_usbvision_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i64 }
%struct.usb_usbvision = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@DBG_MMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"mmap: user supplied mapping address is out of range\00", align 1
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"mmap: vm_insert_page failed\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @usbvision_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_usbvision*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %21)
  store %struct.usb_usbvision* %22, %struct.usb_usbvision** %10, align 8
  %23 = load i32, i32* @DBG_MMAP, align 4
  %24 = call i32 @PDEBUG(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %26 = call i32 @USBVISION_IS_OPERATIONAL(%struct.usb_usbvision* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %127

31:                                               ; preds = %2
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VM_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %41 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @PAGE_ALIGN(i32 %42)
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38, %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %127

48:                                               ; preds = %38
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %70, %48
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %57 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @PAGE_ALIGN(i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = mul i64 %59, %60
  %62 = load i64, i64* @PAGE_SHIFT, align 8
  %63 = lshr i64 %61, %62
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %73

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %49

73:                                               ; preds = %68, %49
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %76 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i32, i32* @DBG_MMAP, align 4
  %81 = call i32 @PDEBUG(i32 %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %127

84:                                               ; preds = %73
  %85 = load i32, i32* @VM_IO, align 4
  %86 = load i32, i32* @VM_DONTEXPAND, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @VM_DONTDUMP, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %95 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %8, align 8
  br label %101

101:                                              ; preds = %116, %84
  %102 = load i64, i64* %6, align 8
  %103 = icmp ugt i64 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %101
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @vmalloc_to_page(i8* %107)
  %109 = call i64 @vm_insert_page(%struct.vm_area_struct* %105, i64 %106, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i32, i32* @DBG_MMAP, align 4
  %113 = call i32 @PDEBUG(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @EAGAIN, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %127

116:                                              ; preds = %104
  %117 = load i64, i64* @PAGE_SIZE, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* @PAGE_SIZE, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr i8, i8* %121, i64 %120
  store i8* %122, i8** %8, align 8
  %123 = load i64, i64* @PAGE_SIZE, align 8
  %124 = load i64, i64* %6, align 8
  %125 = sub i64 %124, %123
  store i64 %125, i64* %6, align 8
  br label %101

126:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %111, %79, %45, %28
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @USBVISION_IS_OPERATIONAL(%struct.usb_usbvision*) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i64 @vm_insert_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
