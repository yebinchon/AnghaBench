; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_irq_reallocate_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_irq_reallocate_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_3__, %struct.TYPE_4__*, i32*, i32*, i64, %struct.octeon_device*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.1*, i32)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.msix_entry = type { i32 }

@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"OCTEON: ioq vector allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Setup interrupt failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, i32)* @lio_irq_reallocate_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_irq_reallocate_irqs(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msix_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %157

14:                                               ; preds = %2
  %15 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.1*, i32)** %17, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %20 = bitcast %struct.octeon_device* %19 to %struct.octeon_device.1*
  %21 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %22 = call i32 %18(%struct.octeon_device.1* %20, i32 %21)
  %23 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %120

27:                                               ; preds = %14
  %28 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %29 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %33 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %45

36:                                               ; preds = %27
  %37 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %38 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to %struct.msix_entry*
  store %struct.msix_entry* %49, %struct.msix_entry** %6, align 8
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %93, %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  %55 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %56 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %55, i32 0, i32 6
  %57 = load %struct.octeon_device*, %struct.octeon_device** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %57, i64 %59
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %54
  %65 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %65, i64 %67
  %69 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @irq_set_affinity_hint(i32 %70, i32* null)
  %72 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %72, i64 %74
  %76 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %79 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %78, i32 0, i32 6
  %80 = load %struct.octeon_device*, %struct.octeon_device** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %80, i64 %82
  %84 = call i32 @free_irq(i32 %77, %struct.octeon_device* %83)
  %85 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %86 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %85, i32 0, i32 6
  %87 = load %struct.octeon_device*, %struct.octeon_device** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %87, i64 %89
  %91 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %90, i32 0, i32 5
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %64, %54
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %50

96:                                               ; preds = %50
  %97 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %98 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %101, i64 %103
  %105 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %108 = call i32 @free_irq(i32 %106, %struct.octeon_device* %107)
  br label %109

109:                                              ; preds = %100, %96
  %110 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %111 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = call i32 @pci_disable_msix(%struct.TYPE_4__* %112)
  %114 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %115 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @kfree(i32* %116)
  %118 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %119 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %118, i32 0, i32 4
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %109, %14
  %121 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %122 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @kfree(i32* %123)
  %125 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %126 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %125, i32 0, i32 3
  store i32* null, i32** %126, align 8
  %127 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i64 @octeon_allocate_ioq_vector(%struct.octeon_device* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %133 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %157

137:                                              ; preds = %120
  %138 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i64 @octeon_setup_interrupt(%struct.octeon_device* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %144 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = call i32 @dev_info(i32* %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %157

148:                                              ; preds = %137
  %149 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %150 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.0*, i32)** %151, align 8
  %153 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %154 = bitcast %struct.octeon_device* %153 to %struct.octeon_device.0*
  %155 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %156 = call i32 %152(%struct.octeon_device.0* %154, i32 %155)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %148, %142, %131, %13
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.octeon_device*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @octeon_allocate_ioq_vector(%struct.octeon_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @octeon_setup_interrupt(%struct.octeon_device*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
