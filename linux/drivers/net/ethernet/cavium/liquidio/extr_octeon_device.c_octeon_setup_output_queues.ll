; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_setup_output_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_setup_output_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cn6xxx = common dso_local global i32 0, align 4
@cn23xx_pf = common dso_local global i32 0, align 4
@cn23xx_vf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_setup_output_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @dev_to_node(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = call i64 @OCTEON_CN6XXX(%struct.octeon_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %18 = load i32, i32* @cn6xxx, align 4
  %19 = call i32 @CHIP_CONF(%struct.octeon_device* %17, i32 %18)
  %20 = call i64 @CFG_GET_NUM_DEF_RX_DESCS(i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %22 = load i32, i32* @cn6xxx, align 4
  %23 = call i32 @CHIP_CONF(%struct.octeon_device* %21, i32 %22)
  %24 = call i64 @CFG_GET_DEF_RX_BUF_SIZE(i32 %23)
  store i64 %24, i64* %5, align 8
  br label %53

25:                                               ; preds = %1
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = load i32, i32* @cn23xx_pf, align 4
  %32 = call i32 @CHIP_CONF(%struct.octeon_device* %30, i32 %31)
  %33 = call i64 @CFG_GET_NUM_DEF_RX_DESCS(i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %35 = load i32, i32* @cn23xx_pf, align 4
  %36 = call i32 @CHIP_CONF(%struct.octeon_device* %34, i32 %35)
  %37 = call i64 @CFG_GET_DEF_RX_BUF_SIZE(i32 %36)
  store i64 %37, i64* %5, align 8
  br label %52

38:                                               ; preds = %25
  %39 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %40 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %44 = load i32, i32* @cn23xx_vf, align 4
  %45 = call i32 @CHIP_CONF(%struct.octeon_device* %43, i32 %44)
  %46 = call i64 @CFG_GET_NUM_DEF_RX_DESCS(i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %48 = load i32, i32* @cn23xx_vf, align 4
  %49 = call i32 @CHIP_CONF(%struct.octeon_device* %47, i32 %48)
  %50 = call i64 @CFG_GET_DEF_RX_BUF_SIZE(i32 %49)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %42, %38
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52, %16
  %54 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32* @vzalloc_node(i32 4, i32 %56)
  %58 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  store i32* %57, i32** %61, align 8
  %62 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %53
  %69 = call i32* @vzalloc(i32 4)
  %70 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  store i32* %69, i32** %73, align 8
  br label %74

74:                                               ; preds = %68, %53
  %75 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  store i32 1, i32* %2, align 4
  br label %107

82:                                               ; preds = %74
  %83 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @octeon_init_droq(%struct.octeon_device* %83, i64 %84, i64 %85, i64 %86, i32* null)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %91 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @vfree(i32* %95)
  %97 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds i32*, i32** %99, i64 %100
  store i32* null, i32** %101, align 8
  store i32 1, i32* %2, align 4
  br label %107

102:                                              ; preds = %82
  %103 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %104 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %89, %81
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i64 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local i64 @CFG_GET_NUM_DEF_RX_DESCS(i32) #1

declare dso_local i32 @CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i64 @CFG_GET_DEF_RX_BUF_SIZE(i32) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32* @vzalloc_node(i32, i32) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i64 @octeon_init_droq(%struct.octeon_device*, i64, i64, i64, i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
