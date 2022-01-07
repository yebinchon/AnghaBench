; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_switch_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_switch_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, i32, i32, i32 }

@REG_SW_GLOBAL_SERIAL_CTRL_0 = common dso_local global i32 0, align 4
@SPI_AUTO_EDGE_DETECTION = common dso_local global i32 0, align 4
@REG_CHIP_ID0__1 = common dso_local global i32 0, align 4
@REG_GLOBAL_OPTIONS = common dso_local global i32 0, align 4
@TOTAL_PORT_NUM = common dso_local global i32 0, align 4
@GBIT_SUPPORT = common dso_local global i32 0, align 4
@IS_9893 = common dso_local global i32 0, align 4
@SW_QW_ABLE = common dso_local global i32 0, align 4
@NEW_XMII = common dso_local global i32 0, align 4
@SW_GIGABIT_ABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*)* @ksz9477_switch_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_switch_detect(%struct.ksz_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  %9 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %10 = load i32, i32* @REG_SW_GLOBAL_SERIAL_CTRL_0, align 4
  %11 = call i32 @ksz_read8(%struct.ksz_device* %9, i32 %10, i32* %4)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %2, align 4
  br label %110

16:                                               ; preds = %1
  %17 = load i32, i32* @SPI_AUTO_EDGE_DETECTION, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %22 = load i32, i32* @REG_SW_GLOBAL_SERIAL_CTRL_0, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ksz_write8(%struct.ksz_device* %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %110

29:                                               ; preds = %16
  %30 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %31 = load i32, i32* @REG_CHIP_ID0__1, align 4
  %32 = call i32 @ksz_read32(%struct.ksz_device* %30, i32 %31, i32* %7)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %110

37:                                               ; preds = %29
  %38 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %39 = load i32, i32* @REG_GLOBAL_OPTIONS, align 4
  %40 = call i32 @ksz_read8(%struct.ksz_device* %38, i32 %39, i32* %4)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %110

45:                                               ; preds = %37
  %46 = load i32, i32* @TOTAL_PORT_NUM, align 4
  %47 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %48 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %50 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %49, i32 0, i32 1
  store i32 5, i32* %50, align 4
  %51 = load i32, i32* @GBIT_SUPPORT, align 4
  %52 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %53 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 16
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 8
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 15
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %83

61:                                               ; preds = %45
  %62 = load i32, i32* @IS_9893, align 4
  %63 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %64 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SW_QW_ABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load i32, i32* @GBIT_SUPPORT, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %75 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %61
  %79 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %80 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %79, i32 0, i32 0
  store i32 3, i32* %80, align 4
  %81 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %82 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %81, i32 0, i32 1
  store i32 2, i32* %82, align 4
  br label %101

83:                                               ; preds = %45
  %84 = load i32, i32* @NEW_XMII, align 4
  %85 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %86 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @SW_GIGABIT_ABLE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* @GBIT_SUPPORT, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %97 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %83
  br label %101

101:                                              ; preds = %100, %78
  %102 = load i32, i32* %5, align 4
  %103 = shl i32 %102, 16
  %104 = load i32, i32* %6, align 4
  %105 = shl i32 %104, 8
  %106 = or i32 %103, %105
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %109 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %101, %43, %35, %27, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @ksz_read8(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @ksz_write8(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz_read32(%struct.ksz_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
