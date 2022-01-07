; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_axp20x-rsb.c_axp20x_rsb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_axp20x-rsb.c_axp20x_rsb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb_device = type { i32 }
%struct.axp20x_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_rsb_device*)* @axp20x_rsb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_rsb_remove(%struct.sunxi_rsb_device* %0) #0 {
  %2 = alloca %struct.sunxi_rsb_device*, align 8
  %3 = alloca %struct.axp20x_dev*, align 8
  store %struct.sunxi_rsb_device* %0, %struct.sunxi_rsb_device** %2, align 8
  %4 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %2, align 8
  %5 = call %struct.axp20x_dev* @sunxi_rsb_device_get_drvdata(%struct.sunxi_rsb_device* %4)
  store %struct.axp20x_dev* %5, %struct.axp20x_dev** %3, align 8
  %6 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %7 = call i32 @axp20x_device_remove(%struct.axp20x_dev* %6)
  ret i32 %7
}

declare dso_local %struct.axp20x_dev* @sunxi_rsb_device_get_drvdata(%struct.sunxi_rsb_device*) #1

declare dso_local i32 @axp20x_device_remove(%struct.axp20x_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
