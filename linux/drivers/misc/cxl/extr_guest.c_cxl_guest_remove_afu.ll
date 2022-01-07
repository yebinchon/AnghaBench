; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_cxl_guest_remove_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_cxl_guest_remove_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.cxl_afu*, i32)* }
%struct.cxl_afu = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32** }
%struct.TYPE_5__ = type { i32, i32 }

@cxl_ops = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_guest_remove_afu(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = icmp ne %struct.cxl_afu* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %56

6:                                                ; preds = %1
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %8 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %7, i32 0, i32 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %12 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = call i32 @flush_delayed_work(i32* %14)
  %16 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %17 = call i32 @cxl_pci_vphb_remove(%struct.cxl_afu* %16)
  %18 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %19 = call i32 @cxl_sysfs_afu_remove(%struct.cxl_afu* %18)
  %20 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %21 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %26 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %31 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  store i32* null, i32** %33, align 8
  %34 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %35 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %40 = call i32 @cxl_context_detach_all(%struct.cxl_afu* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxl_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.cxl_afu*, i32)*, i32 (%struct.cxl_afu*, i32)** %42, align 8
  %44 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %45 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %46 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %43(%struct.cxl_afu* %44, i32 %47)
  %49 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %50 = call i32 @guest_release_serr_irq(%struct.cxl_afu* %49)
  %51 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %52 = call i32 @guest_unmap_slice_regs(%struct.cxl_afu* %51)
  %53 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %54 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %53, i32 0, i32 1
  %55 = call i32 @device_unregister(i32* %54)
  br label %56

56:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @cxl_pci_vphb_remove(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_sysfs_afu_remove(%struct.cxl_afu*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cxl_context_detach_all(%struct.cxl_afu*) #1

declare dso_local i32 @guest_release_serr_irq(%struct.cxl_afu*) #1

declare dso_local i32 @guest_unmap_slice_regs(%struct.cxl_afu*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
