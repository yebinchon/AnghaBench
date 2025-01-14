; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_xsurf100.c_xs100_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_xsurf100.c_xs100_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ei_device = type { i64 }
%struct.platform_device = type { i32 }
%struct.xsurf100_ax_plat_data = type { i64 }

@XS100_8390_DATA_AREA_SIZE = common dso_local global i32 0, align 4
@XS100_8390_DATA_READ32_BASE = common dso_local global i64 0, align 8
@NE_DATAPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*, i32)* @xs100_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs100_read(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ei_device*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.xsurf100_ax_plat_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ei_device* @netdev_priv(%struct.net_device* %10)
  store %struct.ei_device* %11, %struct.ei_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.platform_device* @to_platform_device(i32 %15)
  store %struct.platform_device* %16, %struct.platform_device** %8, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.xsurf100_ax_plat_data* @dev_get_platdata(i32* %18)
  store %struct.xsurf100_ax_plat_data* %19, %struct.xsurf100_ax_plat_data** %9, align 8
  br label %20

20:                                               ; preds = %24, %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @XS100_8390_DATA_AREA_SIZE, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.xsurf100_ax_plat_data*, %struct.xsurf100_ax_plat_data** %9, align 8
  %27 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XS100_8390_DATA_READ32_BASE, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* @XS100_8390_DATA_AREA_SIZE, align 4
  %32 = call i32 @z_memcpy_fromio32(i8* %25, i64 %30, i32 %31)
  %33 = load i32, i32* @XS100_8390_DATA_AREA_SIZE, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = zext i32 %33 to i64
  %36 = getelementptr i8, i8* %34, i64 %35
  store i8* %36, i8** %5, align 8
  %37 = load i32, i32* @XS100_8390_DATA_AREA_SIZE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.xsurf100_ax_plat_data*, %struct.xsurf100_ax_plat_data** %9, align 8
  %43 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XS100_8390_DATA_READ32_BASE, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, -4
  %49 = call i32 @z_memcpy_fromio32(i8* %41, i64 %46, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, -4
  %52 = load i8*, i8** %5, align 8
  %53 = zext i32 %51 to i64
  %54 = getelementptr i8, i8* %52, i64 %53
  store i8* %54, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %40
  %59 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %60 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NE_DATAPORT, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @ei_inw(i64 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = bitcast i8* %65 to i32*
  store i32 %64, i32* %66, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr i8, i8* %67, i64 2
  store i8* %68, i8** %5, align 8
  br label %69

69:                                               ; preds = %58, %40
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %75 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NE_DATAPORT, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @ei_inb(i64 %78)
  %80 = load i8*, i8** %5, align 8
  %81 = bitcast i8* %80 to i32*
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %69
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.xsurf100_ax_plat_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @z_memcpy_fromio32(i8*, i64, i32) #1

declare dso_local i32 @ei_inw(i64) #1

declare dso_local i32 @ei_inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
