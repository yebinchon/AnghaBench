; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_comphy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_comphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32, i32 }

@PHY_MODE_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_port*)* @mvneta_comphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_comphy_init(%struct.mvneta_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  %5 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %6 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %12 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PHY_MODE_ETHERNET, align 4
  %15 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %16 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @phy_set_mode_ext(i32 %13, i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %10
  %24 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %25 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @phy_power_on(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %21, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @phy_set_mode_ext(i32, i32, i32) #1

declare dso_local i32 @phy_power_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
