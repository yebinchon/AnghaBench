; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_pci_deconfigure_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_pci_deconfigure_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.cxl_afu*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_afu*)* @pci_deconfigure_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_deconfigure_afu(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %3, i32 0, i32 1
  %5 = call i32 @atomic_read(i32* %4)
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %13, %7
  %9 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %10 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %9, i32 0, i32 1
  %11 = call i32 @atomic_cmpxchg(i32* %10, i32 0, i32 -1)
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @schedule()
  br label %8

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %18 = call i32 @cxl_native_release_psl_irq(%struct.cxl_afu* %17)
  %19 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %20 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (%struct.cxl_afu*)*, i32 (%struct.cxl_afu*)** %26, align 8
  %28 = icmp ne i32 (%struct.cxl_afu*)* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %16
  %30 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %31 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.cxl_afu*)*, i32 (%struct.cxl_afu*)** %37, align 8
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %40 = call i32 %38(%struct.cxl_afu* %39)
  br label %41

41:                                               ; preds = %29, %16
  %42 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %43 = call i32 @pci_unmap_slice_regs(%struct.cxl_afu* %42)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @cxl_native_release_psl_irq(%struct.cxl_afu*) #1

declare dso_local i32 @pci_unmap_slice_regs(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
