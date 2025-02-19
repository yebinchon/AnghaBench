; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_xsurf100.c_is_xsurf100_network_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_xsurf100.c_is_xsurf100_network_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xsurf100_ax_plat_data = type { i64 }

@XS100_IRQSTATUS_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @is_xsurf100_network_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_xsurf100_network_irq(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xsurf100_ax_plat_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.xsurf100_ax_plat_data* @dev_get_platdata(i32* %5)
  store %struct.xsurf100_ax_plat_data* %6, %struct.xsurf100_ax_plat_data** %3, align 8
  %7 = load %struct.xsurf100_ax_plat_data*, %struct.xsurf100_ax_plat_data** %3, align 8
  %8 = getelementptr inbounds %struct.xsurf100_ax_plat_data, %struct.xsurf100_ax_plat_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XS100_IRQSTATUS_BASE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readw(i64 %11)
  %13 = and i32 %12, 43690
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local %struct.xsurf100_ax_plat_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
