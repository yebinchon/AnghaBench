; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc739x_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc739x_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc739x_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc739x_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %3 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %4 = call i32 @phy_write(%struct.phy_device* %3, i32 31, i32 10800)
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = call i32 @phy_modify(%struct.phy_device* %5, i32 8, i32 512, i32 512)
  %7 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %8 = call i32 @phy_write(%struct.phy_device* %7, i32 31, i32 21173)
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %10 = call i32 @phy_write(%struct.phy_device* %9, i32 16, i32 46730)
  %11 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %12 = call i32 @phy_modify(%struct.phy_device* %11, i32 18, i32 65287, i32 3)
  %13 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %14 = call i32 @phy_modify(%struct.phy_device* %13, i32 17, i32 255, i32 162)
  %15 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %16 = call i32 @phy_write(%struct.phy_device* %15, i32 16, i32 38538)
  %17 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %18 = call i32 @phy_write(%struct.phy_device* %17, i32 31, i32 10800)
  %19 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %20 = call i32 @phy_modify(%struct.phy_device* %19, i32 8, i32 512, i32 0)
  %21 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %22 = call i32 @phy_write(%struct.phy_device* %21, i32 31, i32 0)
  %23 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %24 = call i32 @phy_write(%struct.phy_device* %23, i32 31, i32 0)
  %25 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %26 = call i32 @phy_write(%struct.phy_device* %25, i32 18, i32 72)
  %27 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %28 = call i32 @phy_write(%struct.phy_device* %27, i32 31, i32 10800)
  %29 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %30 = call i32 @phy_modify(%struct.phy_device* %29, i32 22, i32 4032, i32 576)
  %31 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %32 = call i32 @phy_modify(%struct.phy_device* %31, i32 20, i32 24576, i32 16384)
  %33 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %34 = call i32 @phy_write(%struct.phy_device* %33, i32 31, i32 1)
  %35 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %36 = call i32 @phy_modify(%struct.phy_device* %35, i32 20, i32 57344, i32 24576)
  %37 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %38 = call i32 @phy_write(%struct.phy_device* %37, i32 31, i32 0)
  %39 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %40 = call i32 @vsc73xx_config_init(%struct.phy_device* %39)
  ret i32 0
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @vsc73xx_config_init(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
