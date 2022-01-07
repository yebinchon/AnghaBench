; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6387xb.c_tc6387xb_mmc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6387xb.c_tc6387xb_mmc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tc6387xb = type { i64, i32 }

@tc6387xb_mmc_resources = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tc6387xb_mmc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc6387xb_mmc_enable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tc6387xb*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.tc6387xb* @dev_get_drvdata(i32 %7)
  store %struct.tc6387xb* %8, %struct.tc6387xb** %3, align 8
  %9 = load %struct.tc6387xb*, %struct.tc6387xb** %3, align 8
  %10 = getelementptr inbounds %struct.tc6387xb, %struct.tc6387xb* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_prepare_enable(i32 %11)
  %13 = load %struct.tc6387xb*, %struct.tc6387xb** %3, align 8
  %14 = getelementptr inbounds %struct.tc6387xb, %struct.tc6387xb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 512
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tc6387xb_mmc_resources, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 65534
  %22 = call i32 @tmio_core_mmc_enable(i64 %16, i32 0, i32 %21)
  ret i32 0
}

declare dso_local %struct.tc6387xb* @dev_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @tmio_core_mmc_enable(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
