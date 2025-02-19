; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_rgmii.c_rgmii_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_rgmii.c_rgmii_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rgmii_instance = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rgmii_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgmii_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.rgmii_instance*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.rgmii_instance* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.rgmii_instance* %5, %struct.rgmii_instance** %3, align 8
  %6 = load %struct.rgmii_instance*, %struct.rgmii_instance** %3, align 8
  %7 = getelementptr inbounds %struct.rgmii_instance, %struct.rgmii_instance* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.rgmii_instance*, %struct.rgmii_instance** %3, align 8
  %13 = getelementptr inbounds %struct.rgmii_instance, %struct.rgmii_instance* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @iounmap(i32 %14)
  %16 = load %struct.rgmii_instance*, %struct.rgmii_instance** %3, align 8
  %17 = call i32 @kfree(%struct.rgmii_instance* %16)
  ret i32 0
}

declare dso_local %struct.rgmii_instance* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.rgmii_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
