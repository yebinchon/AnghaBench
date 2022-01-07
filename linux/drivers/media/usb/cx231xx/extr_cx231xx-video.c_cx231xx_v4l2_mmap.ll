; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i32, %struct.cx231xx* }
%struct.cx231xx = type { i32 }
%struct.vm_area_struct = type { i64, i64 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vma start=0x%08lx, size=%ld, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @cx231xx_v4l2_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_v4l2_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.cx231xx_fh*, align 8
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %10, align 8
  store %struct.cx231xx_fh* %11, %struct.cx231xx_fh** %6, align 8
  %12 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %6, align 8
  %13 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %12, i32 0, i32 1
  %14 = load %struct.cx231xx*, %struct.cx231xx** %13, align 8
  store %struct.cx231xx* %14, %struct.cx231xx** %7, align 8
  %15 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %16 = call i32 @check_dev(%struct.cx231xx* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %6, align 8
  %23 = call i32 @res_get(%struct.cx231xx_fh* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %21
  %32 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 0
  %34 = call i64 @mutex_lock_interruptible(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ERESTARTSYS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %31
  %40 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %6, align 8
  %41 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %40, i32 0, i32 0
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = call i32 @videobuf_mmap_mapper(i32* %41, %struct.vm_area_struct* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %52, %55
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @cx231xx_videodbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %39, %36, %29, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @check_dev(%struct.cx231xx*) #1

declare dso_local i32 @res_get(%struct.cx231xx_fh*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @videobuf_mmap_mapper(i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cx231xx_videodbg(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
