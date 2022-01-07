; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_regs.c_ocelot_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_regs.c_ocelot_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32, i32*, i32, i32, i32 }

@ocelot_regmap = common dso_local global i32 0, align 4
@ocelot_stats_layout = common dso_local global i32 0, align 4
@ocelot_regfields = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocelot_chip_init(%struct.ocelot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocelot*, align 8
  %4 = alloca i32, align 4
  store %struct.ocelot* %0, %struct.ocelot** %3, align 8
  %5 = load i32, i32* @ocelot_regmap, align 4
  %6 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %7 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @ocelot_stats_layout, align 4
  %9 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %10 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @ocelot_stats_layout, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %14 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %16 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %15, i32 0, i32 0
  store i32 229376, i32* %16, align 8
  %17 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %18 = load i32, i32* @ocelot_regfields, align 4
  %19 = call i32 @ocelot_regfields_init(%struct.ocelot* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %26 = call i32 @ocelot_pll5_init(%struct.ocelot* %25)
  %27 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %28 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @eth_random_addr(i32* %29)
  %31 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %32 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 240
  store i32 %36, i32* %34, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %24, %22
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ocelot_regfields_init(%struct.ocelot*, i32) #1

declare dso_local i32 @ocelot_pll5_init(%struct.ocelot*) #1

declare dso_local i32 @eth_random_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
