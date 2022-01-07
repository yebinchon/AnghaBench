; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303_mdio.c_lan9303_mdio_real_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303_mdio.c_lan9303_mdio_real_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdio_device*, i32, i32)* @lan9303_mdio_real_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan9303_mdio_real_write(%struct.mdio_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mdio_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mdio_device*, %struct.mdio_device** %4, align 8
  %8 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_2__*, i32, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32, i32)** %10, align 8
  %12 = load %struct.mdio_device*, %struct.mdio_device** %4, align 8
  %13 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @PHY_ADDR(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @PHY_REG(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 %11(%struct.TYPE_2__* %14, i32 %16, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @PHY_ADDR(i32) #1

declare dso_local i32 @PHY_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
