; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.pci_device_id = type { i32 }
%struct.mlxsw_pci = type { i32, %struct.TYPE_4__, %struct.pci_device_id*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i8*, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pci_enable_device failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"pci_request_regions failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"pci_set_consistent_dma_mask failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"pci_set_dma_mask failed\0A\00", align 1
@MLXSW_PCI_BAR0_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid PCI region size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@mlxsw_pci_bus = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"cannot register bus device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mlxsw_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_pci*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mlxsw_pci* @kzalloc(i32 56, i32 %14)
  store %struct.mlxsw_pci* %15, %struct.mlxsw_pci** %7, align 8
  %16 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %17 = icmp ne %struct.mlxsw_pci* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %156

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_enable_device(%struct.pci_dev* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %152

30:                                               ; preds = %21
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @pci_request_regions(%struct.pci_dev* %31, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %149

40:                                               ; preds = %30
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i32 @DMA_BIT_MASK(i32 64)
  %43 = call i32 @pci_set_dma_mask(%struct.pci_dev* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call i32 @DMA_BIT_MASK(i32 64)
  %49 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %146

56:                                               ; preds = %46
  br label %68

57:                                               ; preds = %40
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i32 @DMA_BIT_MASK(i32 32)
  %60 = call i32 @pci_set_dma_mask(%struct.pci_dev* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %146

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = call i64 @pci_resource_len(%struct.pci_dev* %69, i32 0)
  %71 = load i64, i64* @MLXSW_PCI_BAR0_SIZE, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %145

79:                                               ; preds = %68
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = call i32 @pci_resource_start(%struct.pci_dev* %80, i32 0)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = call i64 @pci_resource_len(%struct.pci_dev* %82, i32 0)
  %84 = call i32 @ioremap(i32 %81, i64 %83)
  %85 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %86 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %88 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %79
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %144

97:                                               ; preds = %79
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = call i32 @pci_set_master(%struct.pci_dev* %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %102 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %101, i32 0, i32 3
  store %struct.pci_dev* %100, %struct.pci_dev** %102, align 8
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %105 = call i32 @pci_set_drvdata(%struct.pci_dev* %103, %struct.mlxsw_pci* %104)
  %106 = load i8*, i8** %6, align 8
  %107 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %108 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  %110 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %111 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %110, i32 0, i32 3
  %112 = load %struct.pci_dev*, %struct.pci_dev** %111, align 8
  %113 = call i32 @pci_name(%struct.pci_dev* %112)
  %114 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %115 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  store i32 %113, i32* %116, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %120 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  store i32* %118, i32** %121, align 8
  %122 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %123 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 8
  %125 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %126 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %127 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %126, i32 0, i32 2
  store %struct.pci_device_id* %125, %struct.pci_device_id** %127, align 8
  %128 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %129 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %128, i32 0, i32 1
  %130 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %131 = call i32 @mlxsw_core_bus_device_register(%struct.TYPE_4__* %129, i32* @mlxsw_pci_bus, %struct.mlxsw_pci* %130, i32 0, i32* null)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %97
  %135 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 0
  %137 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %139

138:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %156

139:                                              ; preds = %134
  %140 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %141 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @iounmap(i32 %142)
  br label %144

144:                                              ; preds = %139, %91
  br label %145

145:                                              ; preds = %144, %73
  br label %146

146:                                              ; preds = %145, %63, %52
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = call i32 @pci_release_regions(%struct.pci_dev* %147)
  br label %149

149:                                              ; preds = %146, %36
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = call i32 @pci_disable_device(%struct.pci_dev* %150)
  br label %152

152:                                              ; preds = %149, %26
  %153 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %7, align 8
  %154 = call i32 @kfree(%struct.mlxsw_pci* %153)
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %138, %18
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.mlxsw_pci* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i64) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mlxsw_pci*) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @mlxsw_core_bus_device_register(%struct.TYPE_4__*, i32*, %struct.mlxsw_pci*, i32, i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.mlxsw_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
