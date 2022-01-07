; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mhz_mfc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mhz_mfc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.TYPE_4__**, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.net_device = type { i64 }
%struct.smc_private = type { i64, i64, i32 }

@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@mhz_mfc_config_check = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_8 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_AM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@MANFID_MOTOROLA = common dso_local global i64 0, align 8
@MANFID_MEGAHERTZ = common dso_local global i64 0, align 8
@PRODID_MEGAHERTZ_EM3288 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @mhz_mfc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mhz_mfc_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smc_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.smc_private* @netdev_priv(%struct.net_device* %11)
  store %struct.smc_private* %12, %struct.smc_private** %5, align 8
  %13 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %14 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = load i32, i32* @mhz_mfc_config_check, align 4
  %24 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %22, i32 %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %129

29:                                               ; preds = %1
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @WIN_DATA_WIDTH_8, align 4
  %40 = load i32, i32* @WIN_MEMORY_TYPE_AM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @WIN_ENABLE, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %45 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 8
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %51 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %57 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %63 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %64 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @pcmcia_request_window(%struct.pcmcia_device* %62, %struct.TYPE_4__* %67, i32 0)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %29
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %129

74:                                               ; preds = %29
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %83 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = call i32 @resource_size(%struct.TYPE_4__* %86)
  %88 = call i32 @ioremap(i64 %81, i32 %87)
  %89 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %90 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %92 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MANFID_MOTOROLA, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %74
  %97 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %98 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  br label %101

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i32 [ %99, %96 ], [ 0, %100 ]
  store i32 %102, i32* %6, align 4
  %103 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %104 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %105 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %106, i64 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @pcmcia_map_mem_page(%struct.pcmcia_device* %103, %struct.TYPE_4__* %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %101
  %114 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %115 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MANFID_MEGAHERTZ, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %121 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PRODID_MEGAHERTZ_EM3288, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %127 = call i32 @mhz_3288_power(%struct.pcmcia_device* %126)
  br label %128

128:                                              ; preds = %125, %119, %113, %101
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %71, %26
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @pcmcia_map_mem_page(%struct.pcmcia_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mhz_3288_power(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
