; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_main.h_octeon_map_pci_barx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_main.h_octeon_map_pci_barx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pci_request_region failed for bar %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"BAR%d start: 0x%llx mapped %u of %u bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error ioremap for bar %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, i32, i32)* @octeon_map_pci_barx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_map_pci_barx(%struct.octeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 2
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call i64 @pci_request_region(%struct.TYPE_7__* %11, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 1, i32* %4, align 4
  br label %151

24:                                               ; preds = %3
  %25 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 2
  %30 = call i32 @pci_resource_start(%struct.TYPE_7__* %27, i32 %29)
  %31 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32 %30, i32* %37, align 4
  %38 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %39 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 2
  %43 = call i32 @pci_resource_len(%struct.TYPE_7__* %40, i32 %42)
  %44 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %45 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  %51 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %24
  br label %144

62:                                               ; preds = %24
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %65, %62
  %72 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %73 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ioremap(i32 %79, i32 %80)
  %82 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 %81, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %91 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32 %89, i32* %96, align 4
  %97 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %98 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %103 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %112 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_dbg(i32* %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %109, i32 %110, i32 %118)
  %120 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %121 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %71
  %130 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %131 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %144

136:                                              ; preds = %71
  %137 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %138 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  store i32 1, i32* %143, align 4
  store i32 0, i32* %4, align 4
  br label %151

144:                                              ; preds = %129, %61
  %145 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %146 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = mul nsw i32 %148, 2
  %150 = call i32 @pci_release_region(%struct.TYPE_7__* %147, i32 %149)
  store i32 1, i32* %4, align 4
  br label %151

151:                                              ; preds = %144, %136, %17
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i64 @pci_request_region(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_release_region(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
