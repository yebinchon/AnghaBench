; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_AllocateRingBuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_AllocateRingBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.SRingBufferDescriptor = type { i32, i32, i32, i32, i32, %struct.SBufferHeader*, i8* }
%struct.SBufferHeader = type { %struct.TYPE_2__, %struct.HW_SCATTER_GATHER_ELEMENT*, i8*, %struct.HW_SCATTER_GATHER_ELEMENT*, i8*, %struct.SBufferHeader* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.HW_SCATTER_GATHER_ELEMENT = type { i32, i32 }

@NUM_SCATTER_GATHER_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OVERFLOW_BUFFER_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*, %struct.SRingBufferDescriptor*, i32, i32)* @AllocateRingBuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocateRingBuffers(%struct.pci_dev* %0, i8* %1, %struct.SRingBufferDescriptor* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SRingBufferDescriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.HW_SCATTER_GATHER_ELEMENT*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.SBufferHeader*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.SRingBufferDescriptor* %2, %struct.SRingBufferDescriptor** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %24 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @NUM_SCATTER_GATHER_ENTRIES, align 4
  %30 = mul nsw i32 %29, 2
  br label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @NUM_SCATTER_GATHER_ENTRIES, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %35 = mul nsw i32 %25, %34
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 4096
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 4096, i32* %15, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i8* @pci_alloc_consistent(%struct.pci_dev* %43, i32 %44, i8** %12)
  store i8* %45, i8** %20, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %16, align 4
  %48 = load i8*, i8** %20, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %167

53:                                               ; preds = %42
  %54 = load i8*, i8** %20, align 8
  %55 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %56 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %59 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %62 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %65 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %68 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %20, align 8
  %70 = bitcast i8* %69 to %struct.HW_SCATTER_GATHER_ELEMENT*
  store %struct.HW_SCATTER_GATHER_ELEMENT* %70, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %18, align 4
  %72 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %73 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %72, i32 0, i32 5
  %74 = load %struct.SBufferHeader*, %struct.SBufferHeader** %73, align 8
  store %struct.SBufferHeader* %74, %struct.SBufferHeader** %19, align 8
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %160, %53
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %78 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %166

81:                                               ; preds = %75
  %82 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i8* @pci_alloc_consistent(%struct.pci_dev* %82, i32 %83, i8** %12)
  store i8* %84, i8** %22, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %21, align 4
  %87 = load i8*, i8** %22, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %167

92:                                               ; preds = %81
  %93 = load i8*, i8** %22, align 8
  %94 = load %struct.SBufferHeader*, %struct.SBufferHeader** %19, align 8
  %95 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %21, align 4
  %97 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %98 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %101 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %103 = load %struct.SBufferHeader*, %struct.SBufferHeader** %19, align 8
  %104 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %103, i32 0, i32 3
  store %struct.HW_SCATTER_GATHER_ELEMENT* %102, %struct.HW_SCATTER_GATHER_ELEMENT** %104, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load %struct.SBufferHeader*, %struct.SBufferHeader** %19, align 8
  %107 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* @NUM_SCATTER_GATHER_ENTRIES, align 4
  %110 = load %struct.SBufferHeader*, %struct.SBufferHeader** %19, align 8
  %111 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %114 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %113, i64 1
  store %struct.HW_SCATTER_GATHER_ELEMENT* %114, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %92
  br label %160

122:                                              ; preds = %92
  %123 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i8* @pci_alloc_consistent(%struct.pci_dev* %123, i32 %124, i8** %12)
  store i8* %125, i8** %22, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %21, align 4
  %128 = load i8*, i8** %22, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %167

133:                                              ; preds = %122
  %134 = load i8*, i8** %22, align 8
  %135 = load %struct.SBufferHeader*, %struct.SBufferHeader** %19, align 8
  %136 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %21, align 4
  %138 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %139 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %142 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %144 = load %struct.SBufferHeader*, %struct.SBufferHeader** %19, align 8
  %145 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %144, i32 0, i32 1
  store %struct.HW_SCATTER_GATHER_ELEMENT* %143, %struct.HW_SCATTER_GATHER_ELEMENT** %145, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.SBufferHeader*, %struct.SBufferHeader** %19, align 8
  %148 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  store i32 %146, i32* %149, align 8
  %150 = load i32, i32* @NUM_SCATTER_GATHER_ENTRIES, align 4
  %151 = load %struct.SBufferHeader*, %struct.SBufferHeader** %19, align 8
  %152 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  store i32 %150, i32* %153, align 4
  %154 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %155 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %154, i64 1
  store %struct.HW_SCATTER_GATHER_ELEMENT* %155, %struct.HW_SCATTER_GATHER_ELEMENT** %17, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 %157, 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %133, %121
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  %163 = load %struct.SBufferHeader*, %struct.SBufferHeader** %19, align 8
  %164 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %163, i32 0, i32 5
  %165 = load %struct.SBufferHeader*, %struct.SBufferHeader** %164, align 8
  store %struct.SBufferHeader* %165, %struct.SBufferHeader** %19, align 8
  br label %75

166:                                              ; preds = %75
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %166, %130, %89, %50
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
