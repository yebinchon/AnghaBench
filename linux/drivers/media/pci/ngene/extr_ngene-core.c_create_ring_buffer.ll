; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_create_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_create_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.SRingBufferDescriptor = type { i32, i32, i8*, %struct.SBufferHeader* }
%struct.SBufferHeader = type { %struct.TYPE_2__, %struct.SBufferHeader* }
%struct.TYPE_2__ = type { i8* }

@SIZEOF_SBufferHeader = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.SRingBufferDescriptor*, i32)* @create_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ring_buffer(%struct.pci_dev* %0, %struct.SRingBufferDescriptor* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.SRingBufferDescriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SBufferHeader*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.SBufferHeader*, align 8
  %16 = alloca %struct.SBufferHeader*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.SRingBufferDescriptor* %1, %struct.SRingBufferDescriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @SIZEOF_SBufferHeader, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %21 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %20, i32 0, i32 3
  store %struct.SBufferHeader* null, %struct.SBufferHeader** %21, align 8
  %22 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %23 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %25 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %24, i32 0, i32 2
  store i8* null, i8** %25, align 8
  %26 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %27 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 4096
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 4096, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.SBufferHeader* @pci_alloc_consistent(%struct.pci_dev* %32, i32 %33, i8** %8)
  store %struct.SBufferHeader* %34, %struct.SBufferHeader** %9, align 8
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %12, align 8
  %36 = load %struct.SBufferHeader*, %struct.SBufferHeader** %9, align 8
  %37 = icmp ne %struct.SBufferHeader* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %92

41:                                               ; preds = %31
  %42 = load i8*, i8** %12, align 8
  store i8* %42, i8** %13, align 8
  %43 = load %struct.SBufferHeader*, %struct.SBufferHeader** %9, align 8
  store %struct.SBufferHeader* %43, %struct.SBufferHeader** %15, align 8
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %69, %41
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %51 = bitcast %struct.SBufferHeader* %50 to i32*
  %52 = load i32, i32* @SIZEOF_SBufferHeader, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = bitcast i32* %54 to %struct.SBufferHeader*
  store %struct.SBufferHeader* %55, %struct.SBufferHeader** %16, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* @SIZEOF_SBufferHeader, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  store i8* %59, i8** %14, align 8
  %60 = load %struct.SBufferHeader*, %struct.SBufferHeader** %16, align 8
  %61 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %62 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %61, i32 0, i32 1
  store %struct.SBufferHeader* %60, %struct.SBufferHeader** %62, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %65 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.SBufferHeader*, %struct.SBufferHeader** %16, align 8
  store %struct.SBufferHeader* %67, %struct.SBufferHeader** %15, align 8
  %68 = load i8*, i8** %14, align 8
  store i8* %68, i8** %13, align 8
  br label %69

69:                                               ; preds = %49
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %44

72:                                               ; preds = %44
  %73 = load %struct.SBufferHeader*, %struct.SBufferHeader** %9, align 8
  %74 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %75 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %74, i32 0, i32 1
  store %struct.SBufferHeader* %73, %struct.SBufferHeader** %75, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %78 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.SBufferHeader*, %struct.SBufferHeader** %9, align 8
  %81 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %82 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %81, i32 0, i32 3
  store %struct.SBufferHeader* %80, %struct.SBufferHeader** %82, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %85 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %88 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %91 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %72, %38
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.SBufferHeader* @pci_alloc_consistent(%struct.pci_dev*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
