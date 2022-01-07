; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.s5p_mfc_ctx = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@DST_QUEUE_OFF_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"mmaping source\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"mmaping destination\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @s5p_mfc_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.s5p_mfc_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %10)
  store %struct.s5p_mfc_ctx* %11, %struct.s5p_mfc_ctx** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = shl i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @DST_QUEUE_OFF_BASE, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %22, i32 0, i32 1
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = call i32 @vb2_mmap(i32* %23, %struct.vm_area_struct* %24)
  store i32 %25, i32* %7, align 4
  br label %39

26:                                               ; preds = %2
  %27 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* @DST_QUEUE_OFF_BASE, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %35, i32 0, i32 0
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %38 = call i32 @vb2_mmap(i32* %36, %struct.vm_area_struct* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %26, %20
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @mfc_debug(i32, i8*) #1

declare dso_local i32 @vb2_mmap(i32*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
