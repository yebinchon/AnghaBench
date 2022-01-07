; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_init_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.pci_dev*, i64, i32, i32, %struct.TYPE_2__* }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.efx_nic*)*, {}* }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"initialising I/O\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to enable PCI device\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not find a suitable DMA mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"using DMA mask %llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sfc\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"request for memory BAR failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"could not map memory BAR at %llx+%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"memory BAR at %llx+%x (virtual %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_init_io(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %20, align 8
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = call i32 %21(%struct.efx_nic* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %25 = load i32, i32* @probe, align 4
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %24, i32 %25, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = bitcast {}** %33 to i32 (%struct.efx_nic*)**
  %35 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %34, align 8
  %36 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %37 = call i32 %35(%struct.efx_nic* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @pci_enable_device(%struct.pci_dev* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %1
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = load i32, i32* @probe, align 4
  %45 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %46 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %43, i32 %44, i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %160

49:                                               ; preds = %1
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @pci_set_master(%struct.pci_dev* %50)
  br label %52

52:                                               ; preds = %64, %49
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %54, 2147483647
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dma_set_mask_and_coherent(i32* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %52

67:                                               ; preds = %63, %52
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %72 = load i32, i32* @probe, align 4
  %73 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %74 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %71, i32 %72, i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %155

77:                                               ; preds = %67
  %78 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %79 = load i32, i32* @probe, align 4
  %80 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %81 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %78, i32 %79, i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %87 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %86, i32 0, i32 0
  %88 = load %struct.pci_dev*, %struct.pci_dev** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @pci_resource_start(%struct.pci_dev* %88, i32 %89)
  %91 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %92 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @pci_request_region(%struct.pci_dev* %93, i32 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %77
  %99 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %100 = load i32, i32* @probe, align 4
  %101 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %102 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %99, i32 %100, i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %152

107:                                              ; preds = %77
  %108 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %109 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @ioremap_nocache(i64 %110, i32 %111)
  %113 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %114 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %116 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %107
  %120 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %121 = load i32, i32* @probe, align 4
  %122 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %123 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %126 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %120, i32 %121, i32 %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %127, i32 %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %7, align 4
  br label %146

132:                                              ; preds = %107
  %133 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %134 = load i32, i32* @probe, align 4
  %135 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %136 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %139 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %143 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %133, i32 %134, i32 %137, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %140, i32 %141, i32 %144)
  store i32 0, i32* %2, align 4
  br label %162

146:                                              ; preds = %119
  %147 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %148 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %147, i32 0, i32 0
  %149 = load %struct.pci_dev*, %struct.pci_dev** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @pci_release_region(%struct.pci_dev* %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %98
  %153 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %154 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %152, %70
  %156 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %157 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %156, i32 0, i32 0
  %158 = load %struct.pci_dev*, %struct.pci_dev** %157, align 8
  %159 = call i32 @pci_disable_device(%struct.pci_dev* %158)
  br label %160

160:                                              ; preds = %155, %42
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %132
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @ioremap_nocache(i64, i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
