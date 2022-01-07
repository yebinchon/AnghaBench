; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_viu_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_viu_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.viu_fh* }
%struct.viu_fh = type { i32, %struct.viu_dev* }
%struct.viu_dev = type { i32 }
%struct.vm_area_struct = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"mmap called, vma=%p\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"vma start=0x%08lx, size=%ld, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @viu_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viu_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.viu_fh*, align 8
  %7 = alloca %struct.viu_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.viu_fh*, %struct.viu_fh** %10, align 8
  store %struct.viu_fh* %11, %struct.viu_fh** %6, align 8
  %12 = load %struct.viu_fh*, %struct.viu_fh** %6, align 8
  %13 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %12, i32 0, i32 1
  %14 = load %struct.viu_dev*, %struct.viu_dev** %13, align 8
  store %struct.viu_dev* %14, %struct.viu_dev** %7, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %15)
  %17 = load %struct.viu_dev*, %struct.viu_dev** %7, align 8
  %18 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %17, i32 0, i32 0
  %19 = call i64 @mutex_lock_interruptible(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.viu_fh*, %struct.viu_fh** %6, align 8
  %26 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %25, i32 0, i32 0
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = call i32 @videobuf_mmap_mapper(i32* %26, %struct.vm_area_struct* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.viu_dev*, %struct.viu_dev** %7, align 8
  %30 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %24, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @videobuf_mmap_mapper(i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
