; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.gsc_ctx = type { i32, %struct.gsc_dev* }
%struct.gsc_dev = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @gsc_m2m_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.gsc_ctx*, align 8
  %7 = alloca %struct.gsc_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.gsc_ctx* @fh_to_ctx(i32 %11)
  store %struct.gsc_ctx* %12, %struct.gsc_ctx** %6, align 8
  %13 = load %struct.gsc_ctx*, %struct.gsc_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %13, i32 0, i32 1
  %15 = load %struct.gsc_dev*, %struct.gsc_dev** %14, align 8
  store %struct.gsc_dev* %15, %struct.gsc_dev** %7, align 8
  %16 = load %struct.gsc_dev*, %struct.gsc_dev** %7, align 8
  %17 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %16, i32 0, i32 0
  %18 = call i64 @mutex_lock_interruptible(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = load %struct.gsc_ctx*, %struct.gsc_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = call i32 @v4l2_m2m_mmap(%struct.file* %24, i32 %27, %struct.vm_area_struct* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.gsc_dev*, %struct.gsc_dev** %7, align 8
  %31 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.gsc_ctx* @fh_to_ctx(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_m2m_mmap(%struct.file*, i32, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
