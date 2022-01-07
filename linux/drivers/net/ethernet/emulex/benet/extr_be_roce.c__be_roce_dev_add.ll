; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_roce.c__be_roce_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_roce.c__be_roce_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 (%struct.be_dev_info*)* }
%struct.be_dev_info = type { i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.pci_dev*, i64, i64 }
%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pci_dev = type { i64, i32 }
%struct.be_adapter = type { i32, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32, %struct.pci_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ocrdma_drv = common dso_local global %struct.TYPE_10__* null, align 8
@BE_ROCE_ABI_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Cannot initialize RoCE due to ocrdma ABI mismatch\0A\00", align 1
@OC_DEVICE_ID5 = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@BE_INTERRUPT_MODE_MSIX = common dso_local global i32 0, align 4
@MAX_MSIX_VECTORS = common dso_local global i32 0, align 4
@BE_INTERRUPT_MODE_INTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @_be_roce_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_be_roce_dev_add(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_dev_info, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 9
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ocrdma_drv, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %145

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ocrdma_drv, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BE_ROCE_ABI_VERSION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %145

23:                                               ; preds = %13
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OC_DEVICE_ID5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %31 = call i64 @msix_enabled(%struct.be_adapter* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %145

34:                                               ; preds = %29
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = call i64 @pci_resource_start(%struct.pci_dev* %35, i32 2)
  %37 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 11
  store i64 %36, i64* %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = call i64 @pci_resource_len(%struct.pci_dev* %38, i32 2)
  %40 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 10
  store i64 %39, i64* %40, align 8
  br label %44

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 11
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 10
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %45, i32 0, i32 9
  %47 = load %struct.pci_dev*, %struct.pci_dev** %46, align 8
  %48 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 9
  store %struct.pci_dev* %47, %struct.pci_dev** %48, align 8
  %49 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 7
  store i32 %56, i32* %57, align 8
  %58 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 6
  store i32 %61, i32* %62, align 4
  %63 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 5
  store i32 %66, i32* %67, align 8
  %68 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %68, i32 0, i32 6
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 4
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %71, align 8
  %72 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 6
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = call i32 @memcpy(i32 %73, i32 %78, i32 %79)
  %81 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %86 = call i64 @msix_enabled(%struct.be_adapter* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %133

88:                                               ; preds = %44
  %89 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @BE_INTERRUPT_MODE_MSIX, align 4
  %97 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @MAX_MSIX_VECTORS, align 4
  %100 = call i32 @min(i32 %98, i32 %99)
  %101 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %129, %88
  %109 = load i32, i32* %4, align 4
  %110 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %108
  %115 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %116 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %115, i32 0, i32 3
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %114
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %108

132:                                              ; preds = %108
  br label %138

133:                                              ; preds = %44
  %134 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  %136 = load i32, i32* @BE_INTERRUPT_MODE_INTX, align 4
  %137 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 0
  store i32 %136, i32* %137, align 8
  br label %138

138:                                              ; preds = %133, %132
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ocrdma_drv, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32 (%struct.be_dev_info*)*, i32 (%struct.be_dev_info*)** %140, align 8
  %142 = call i32 %141(%struct.be_dev_info* %3)
  %143 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %144 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %138, %33, %19, %12
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @msix_enabled(%struct.be_adapter*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
