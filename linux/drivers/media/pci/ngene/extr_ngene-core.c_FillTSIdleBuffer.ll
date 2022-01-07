; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_FillTSIdleBuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_FillTSIdleBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRingBufferDescriptor = type { i32, %struct.SBufferHeader* }
%struct.SBufferHeader = type { %struct.SBufferHeader*, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor*)* @FillTSIdleBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FillTSIdleBuffer(%struct.SRingBufferDescriptor* %0, %struct.SRingBufferDescriptor* %1) #0 {
  %3 = alloca %struct.SRingBufferDescriptor*, align 8
  %4 = alloca %struct.SRingBufferDescriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SBufferHeader*, align 8
  %7 = alloca i32, align 4
  store %struct.SRingBufferDescriptor* %0, %struct.SRingBufferDescriptor** %3, align 8
  store %struct.SRingBufferDescriptor* %1, %struct.SRingBufferDescriptor** %4, align 8
  %8 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %9 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %12 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %11, i32 0, i32 1
  %13 = load %struct.SBufferHeader*, %struct.SBufferHeader** %12, align 8
  store %struct.SBufferHeader* %13, %struct.SBufferHeader** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %54, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %3, align 8
  %20 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %19, i32 0, i32 1
  %21 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %22 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.SBufferHeader*, %struct.SBufferHeader** %6, align 8
  %25 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %3, align 8
  %27 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %26, i32 0, i32 1
  %28 = load %struct.SBufferHeader*, %struct.SBufferHeader** %27, align 8
  %29 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.SBufferHeader*, %struct.SBufferHeader** %6, align 8
  %32 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %3, align 8
  %34 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %33, i32 0, i32 1
  %35 = load %struct.SBufferHeader*, %struct.SBufferHeader** %34, align 8
  %36 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.SBufferHeader*, %struct.SBufferHeader** %6, align 8
  %40 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %3, align 8
  %43 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %42, i32 0, i32 1
  %44 = load %struct.SBufferHeader*, %struct.SBufferHeader** %43, align 8
  %45 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.SBufferHeader*, %struct.SBufferHeader** %6, align 8
  %49 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.SBufferHeader*, %struct.SBufferHeader** %6, align 8
  %52 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %51, i32 0, i32 0
  %53 = load %struct.SBufferHeader*, %struct.SBufferHeader** %52, align 8
  store %struct.SBufferHeader* %53, %struct.SBufferHeader** %6, align 8
  br label %54

54:                                               ; preds = %18
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %14

57:                                               ; preds = %14
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
