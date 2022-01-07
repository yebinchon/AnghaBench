; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c___retrieve_octeon_config_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c___retrieve_octeon_config_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.octeon_device = type { i64, i32 }

@oct_conf_info = common dso_local global %struct.TYPE_2__* null, align 8
@OCTEON_CN66XX = common dso_local global i32 0, align 4
@default_cn66xx_conf = common dso_local global i32 0, align 4
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@LIO_210NV = common dso_local global i32 0, align 4
@default_cn68xx_210nv_conf = common dso_local global i32 0, align 4
@LIO_410NV = common dso_local global i32 0, align 4
@default_cn68xx_conf = common dso_local global i32 0, align 4
@OCTEON_CN23XX_PF_VID = common dso_local global i32 0, align 4
@default_cn23xx_conf = common dso_local global i32 0, align 4
@OCTEON_CN23XX_VF_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.octeon_device*, i32)* @__retrieve_octeon_config_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__retrieve_octeon_config_info(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oct_conf_info, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %63 [
    i32 128, label %15
  ]

15:                                               ; preds = %2
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OCTEON_CN66XX, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8* bitcast (i32* @default_cn66xx_conf to i8*), i8** %6, align 8
  br label %62

22:                                               ; preds = %15
  %23 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @OCTEON_CN68XX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @LIO_210NV, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* bitcast (i32* @default_cn68xx_210nv_conf to i8*), i8** %6, align 8
  br label %61

33:                                               ; preds = %28, %22
  %34 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @OCTEON_CN68XX, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @LIO_410NV, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8* bitcast (i32* @default_cn68xx_conf to i8*), i8** %6, align 8
  br label %60

44:                                               ; preds = %39, %33
  %45 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @OCTEON_CN23XX_PF_VID, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8* bitcast (i32* @default_cn23xx_conf to i8*), i8** %6, align 8
  br label %59

51:                                               ; preds = %44
  %52 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @OCTEON_CN23XX_VF_VID, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i8* bitcast (i32* @default_cn23xx_conf to i8*), i8** %6, align 8
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58, %50
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %32
  br label %62

62:                                               ; preds = %61, %21
  br label %64

63:                                               ; preds = %2
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i8*, i8** %6, align 8
  ret i8* %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
