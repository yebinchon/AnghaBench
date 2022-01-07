; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.jmb38x_ms = type { i32, i32**, %struct.pci_dev* }

@DRIVER_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @jmb38x_ms_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.jmb38x_ms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @DMA_BIT_MASK(i32 32)
  %13 = call i32 @dma_set_mask(i32* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %144

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_enable_device(%struct.pci_dev* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %144

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_set_master(%struct.pci_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* @DRIVER_NAME, align 4
  %30 = call i32 @pci_request_regions(%struct.pci_dev* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %136

34:                                               ; preds = %25
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @jmb38x_ms_pmos(%struct.pci_dev* %35, i32 1)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @jmb38x_ms_count_slots(%struct.pci_dev* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %133

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = add i64 24, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.jmb38x_ms* @kzalloc(i32 %49, i32 %50)
  store %struct.jmb38x_ms* %51, %struct.jmb38x_ms** %6, align 8
  %52 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %53 = icmp ne %struct.jmb38x_ms* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %133

57:                                               ; preds = %44
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %60 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %59, i32 0, i32 2
  store %struct.pci_dev* %58, %struct.pci_dev** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %63 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %66 = call i32 @pci_set_drvdata(%struct.pci_dev* %64, %struct.jmb38x_ms* %65)
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %119, %57
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %70 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %67
  %74 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32* @jmb38x_ms_alloc_host(%struct.jmb38x_ms* %74, i32 %75)
  %77 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %78 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  store i32* %76, i32** %82, align 8
  %83 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %84 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %73
  br label %122

92:                                               ; preds = %73
  %93 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %94 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @memstick_add_host(i32* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %92
  %104 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %105 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %104, i32 0, i32 1
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @jmb38x_ms_free_host(i32* %110)
  %112 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %113 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %112, i32 0, i32 1
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  store i32* null, i32** %117, align 8
  br label %122

118:                                              ; preds = %92
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %67

122:                                              ; preds = %103, %91, %67
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %144

126:                                              ; preds = %122
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  %129 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %130 = call i32 @pci_set_drvdata(%struct.pci_dev* %129, %struct.jmb38x_ms* null)
  %131 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %132 = call i32 @kfree(%struct.jmb38x_ms* %131)
  br label %133

133:                                              ; preds = %126, %54, %41
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = call i32 @pci_release_regions(%struct.pci_dev* %134)
  br label %136

136:                                              ; preds = %133, %33
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = call i32 @pci_disable_device(%struct.pci_dev* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %125, %23, %16
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @jmb38x_ms_pmos(%struct.pci_dev*, i32) #1

declare dso_local i32 @jmb38x_ms_count_slots(%struct.pci_dev*) #1

declare dso_local %struct.jmb38x_ms* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.jmb38x_ms*) #1

declare dso_local i32* @jmb38x_ms_alloc_host(%struct.jmb38x_ms*, i32) #1

declare dso_local i32 @memstick_add_host(i32*) #1

declare dso_local i32 @jmb38x_ms_free_host(i32*) #1

declare dso_local i32 @kfree(%struct.jmb38x_ms*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
