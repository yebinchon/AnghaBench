; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tm6000_fh* }
%struct.tm6000_fh = type { i32, %struct.tm6000_core* }
%struct.tm6000_core = type { i32 }
%struct.vm_area_struct = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @tm6000_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm6000_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.tm6000_fh*, align 8
  %7 = alloca %struct.tm6000_core*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.tm6000_fh*, %struct.tm6000_fh** %10, align 8
  store %struct.tm6000_fh* %11, %struct.tm6000_fh** %6, align 8
  %12 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %13 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %12, i32 0, i32 1
  %14 = load %struct.tm6000_core*, %struct.tm6000_core** %13, align 8
  store %struct.tm6000_core* %14, %struct.tm6000_core** %7, align 8
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %16 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %15, i32 0, i32 0
  %17 = call i64 @mutex_lock_interruptible(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ERESTARTSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %24 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %23, i32 0, i32 0
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = call i32 @videobuf_mmap_mapper(i32* %24, %struct.vm_area_struct* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %28 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @videobuf_mmap_mapper(i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
