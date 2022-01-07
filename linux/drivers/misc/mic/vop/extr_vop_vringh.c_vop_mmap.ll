; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vop_vdev* }
%struct.vop_vdev = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @vop_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vop_vdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.vop_vdev*, %struct.vop_vdev** %13, align 8
  store %struct.vop_vdev* %14, %struct.vop_vdev** %5, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = shl i64 %17, %18
  store i64 %19, i64* %6, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.vop_vdev*, %struct.vop_vdev** %5, align 8
  %29 = call i32 @vop_vdev_inited(%struct.vop_vdev* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %82

33:                                               ; preds = %2
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VM_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %82

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %74, %43
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = load %struct.vop_vdev*, %struct.vop_vdev** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @vop_query_offset(%struct.vop_vdev* %48, i64 %49, i64* %8, i64* %7)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %82

56:                                               ; preds = %47
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %60, %61
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @PAGE_SHIFT, align 8
  %65 = lshr i64 %63, %64
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @remap_pfn_range(%struct.vm_area_struct* %57, i64 %62, i64 %65, i64 %66, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  br label %82

74:                                               ; preds = %56
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %6, align 8
  br label %44

81:                                               ; preds = %44
  br label %82

82:                                               ; preds = %81, %73, %53, %40, %32
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i32 @vop_vdev_inited(%struct.vop_vdev*) #1

declare dso_local i32 @vop_query_offset(%struct.vop_vdev*, i64, i64*, i64*) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
