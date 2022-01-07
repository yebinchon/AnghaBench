; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_get_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_get_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_config = type { i32 }
%struct.octeon_device = type { i32 }

@cn6xxx = common dso_local global i32 0, align 4
@cn23xx_pf = common dso_local global i32 0, align 4
@cn23xx_vf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.octeon_config* @octeon_get_conf(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.octeon_config*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store %struct.octeon_config* null, %struct.octeon_config** %3, align 8
  %4 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %5 = call i64 @OCTEON_CN6XXX(%struct.octeon_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %9 = load i32, i32* @cn6xxx, align 4
  %10 = call i64 @CHIP_CONF(%struct.octeon_device* %8, i32 %9)
  %11 = inttoptr i64 %10 to %struct.octeon_config*
  store %struct.octeon_config* %11, %struct.octeon_config** %3, align 8
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = load i32, i32* @cn23xx_pf, align 4
  %19 = call i64 @CHIP_CONF(%struct.octeon_device* %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.octeon_config*
  store %struct.octeon_config* %20, %struct.octeon_config** %3, align 8
  br label %31

21:                                               ; preds = %12
  %22 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %23 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %27 = load i32, i32* @cn23xx_vf, align 4
  %28 = call i64 @CHIP_CONF(%struct.octeon_device* %26, i32 %27)
  %29 = inttoptr i64 %28 to %struct.octeon_config*
  store %struct.octeon_config* %29, %struct.octeon_config** %3, align 8
  br label %30

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31, %7
  %33 = load %struct.octeon_config*, %struct.octeon_config** %3, align 8
  ret %struct.octeon_config* %33
}

declare dso_local i64 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local i64 @CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
