; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_init_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.pci_dev*, i64, i32, i32, %struct.TYPE_2__* }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.ef4_nic*)*, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @ef4_init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_init_io(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %13 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %18 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %20, align 8
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %23 = call i32 %21(%struct.ef4_nic* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %25 = load i32, i32* @probe, align 4
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %27 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.ef4_nic* %24, i32 %25, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %31 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_enable_device(%struct.pci_dev* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %41 = load i32, i32* @probe, align 4
  %42 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %43 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_err(%struct.ef4_nic* %40, i32 %41, i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %157

46:                                               ; preds = %1
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call i32 @pci_set_master(%struct.pci_dev* %47)
  br label %49

49:                                               ; preds = %61, %46
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %51, 2147483647
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dma_set_mask_and_coherent(i32* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %49

64:                                               ; preds = %60, %49
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %69 = load i32, i32* @probe, align 4
  %70 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %71 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_err(%struct.ef4_nic* %68, i32 %69, i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %152

74:                                               ; preds = %64
  %75 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %76 = load i32, i32* @probe, align 4
  %77 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %78 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.ef4_nic* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  %83 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %84 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %83, i32 0, i32 0
  %85 = load %struct.pci_dev*, %struct.pci_dev** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @pci_resource_start(%struct.pci_dev* %85, i32 %86)
  %88 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %89 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @pci_request_region(%struct.pci_dev* %90, i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %74
  %96 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %97 = load i32, i32* @probe, align 4
  %98 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %99 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_err(%struct.ef4_nic* %96, i32 %97, i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %149

104:                                              ; preds = %74
  %105 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %106 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @ioremap_nocache(i64 %107, i32 %108)
  %110 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %111 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %113 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %104
  %117 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %118 = load i32, i32* @probe, align 4
  %119 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %120 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %123 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_err(%struct.ef4_nic* %117, i32 %118, i32 %121, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %124, i32 %125)
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %143

129:                                              ; preds = %104
  %130 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %131 = load i32, i32* @probe, align 4
  %132 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %133 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %136 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %140 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.ef4_nic* %130, i32 %131, i32 %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %137, i32 %138, i32 %141)
  store i32 0, i32* %2, align 4
  br label %159

143:                                              ; preds = %116
  %144 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %145 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %144, i32 0, i32 0
  %146 = load %struct.pci_dev*, %struct.pci_dev** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @pci_release_region(%struct.pci_dev* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %95
  %150 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %151 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %149, %67
  %153 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %154 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %153, i32 0, i32 0
  %155 = load %struct.pci_dev*, %struct.pci_dev** %154, align 8
  %156 = call i32 @pci_disable_device(%struct.pci_dev* %155)
  br label %157

157:                                              ; preds = %152, %39
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %129
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*, ...) #1

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
