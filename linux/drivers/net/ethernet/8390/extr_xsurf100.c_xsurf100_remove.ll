; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_xsurf100.c_xsurf100_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_xsurf100.c_xsurf100_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.xsurf100_ax_plat_data = type { i32, i32 }

@XS100_8390_DATA32_BASE = common dso_local global i64 0, align 8
@XS100_8390_DATA32_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zorro_dev*)* @xsurf100_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsurf100_remove(%struct.zorro_dev* %0) #0 {
  %2 = alloca %struct.zorro_dev*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xsurf100_ax_plat_data*, align 8
  store %struct.zorro_dev* %0, %struct.zorro_dev** %2, align 8
  %5 = load %struct.zorro_dev*, %struct.zorro_dev** %2, align 8
  %6 = call %struct.platform_device* @zorro_get_drvdata(%struct.zorro_dev* %5)
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.xsurf100_ax_plat_data* @dev_get_platdata(i32* %8)
  store %struct.xsurf100_ax_plat_data* %9, %struct.xsurf100_ax_plat_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call i32 @platform_device_unregister(%struct.platform_device* %10)
  %12 = load %struct.xsurf100_ax_plat_data*, %struct.xsurf100_ax_plat_data** %4, align 8
  %13 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @iounmap(i32 %14)
  %16 = load %struct.zorro_dev*, %struct.zorro_dev** %2, align 8
  %17 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @release_mem_region(i64 %19, i32 256)
  %21 = load %struct.xsurf100_ax_plat_data*, %struct.xsurf100_ax_plat_data** %4, align 8
  %22 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iounmap(i32 %23)
  %25 = load %struct.zorro_dev*, %struct.zorro_dev** %2, align 8
  %26 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XS100_8390_DATA32_BASE, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* @XS100_8390_DATA32_SIZE, align 4
  %32 = call i32 @release_mem_region(i64 %30, i32 %31)
  ret void
}

declare dso_local %struct.platform_device* @zorro_get_drvdata(%struct.zorro_dev*) #1

declare dso_local %struct.xsurf100_ax_plat_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
