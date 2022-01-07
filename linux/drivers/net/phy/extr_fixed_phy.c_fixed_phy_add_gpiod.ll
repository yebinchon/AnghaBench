; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_fixed_phy.c_fixed_phy_add_gpiod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_fixed_phy.c_fixed_phy_add_gpiod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed_mdio_bus = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.fixed_phy_status = type { i32 }
%struct.gpio_desc = type { i32 }
%struct.fixed_phy = type { i32, i32, %struct.gpio_desc*, %struct.fixed_phy_status, i32 }

@platform_fmb = common dso_local global %struct.fixed_mdio_bus zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.fixed_phy_status*, %struct.gpio_desc*)* @fixed_phy_add_gpiod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixed_phy_add_gpiod(i32 %0, i32 %1, %struct.fixed_phy_status* %2, %struct.gpio_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fixed_phy_status*, align 8
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fixed_mdio_bus*, align 8
  %12 = alloca %struct.fixed_phy*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.fixed_phy_status* %2, %struct.fixed_phy_status** %8, align 8
  store %struct.gpio_desc* %3, %struct.gpio_desc** %9, align 8
  store %struct.fixed_mdio_bus* @platform_fmb, %struct.fixed_mdio_bus** %11, align 8
  %13 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %8, align 8
  %14 = call i32 @swphy_validate_state(%struct.fixed_phy_status* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %63

19:                                               ; preds = %4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.fixed_phy* @kzalloc(i32 24, i32 %20)
  store %struct.fixed_phy* %21, %struct.fixed_phy** %12, align 8
  %22 = load %struct.fixed_phy*, %struct.fixed_phy** %12, align 8
  %23 = icmp ne %struct.fixed_phy* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %19
  %28 = load %struct.fixed_phy*, %struct.fixed_phy** %12, align 8
  %29 = getelementptr inbounds %struct.fixed_phy, %struct.fixed_phy* %28, i32 0, i32 4
  %30 = call i32 @seqcount_init(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PHY_POLL, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.fixed_mdio_bus*, %struct.fixed_mdio_bus** %11, align 8
  %37 = getelementptr inbounds %struct.fixed_mdio_bus, %struct.fixed_mdio_bus* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %35, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %27
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.fixed_phy*, %struct.fixed_phy** %12, align 8
  %47 = getelementptr inbounds %struct.fixed_phy, %struct.fixed_phy* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.fixed_phy*, %struct.fixed_phy** %12, align 8
  %49 = getelementptr inbounds %struct.fixed_phy, %struct.fixed_phy* %48, i32 0, i32 3
  %50 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %8, align 8
  %51 = bitcast %struct.fixed_phy_status* %49 to i8*
  %52 = bitcast %struct.fixed_phy_status* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %54 = load %struct.fixed_phy*, %struct.fixed_phy** %12, align 8
  %55 = getelementptr inbounds %struct.fixed_phy, %struct.fixed_phy* %54, i32 0, i32 2
  store %struct.gpio_desc* %53, %struct.gpio_desc** %55, align 8
  %56 = load %struct.fixed_phy*, %struct.fixed_phy** %12, align 8
  %57 = call i32 @fixed_phy_update(%struct.fixed_phy* %56)
  %58 = load %struct.fixed_phy*, %struct.fixed_phy** %12, align 8
  %59 = getelementptr inbounds %struct.fixed_phy, %struct.fixed_phy* %58, i32 0, i32 1
  %60 = load %struct.fixed_mdio_bus*, %struct.fixed_mdio_bus** %11, align 8
  %61 = getelementptr inbounds %struct.fixed_mdio_bus, %struct.fixed_mdio_bus* %60, i32 0, i32 0
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %44, %24, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @swphy_validate_state(%struct.fixed_phy_status*) #1

declare dso_local %struct.fixed_phy* @kzalloc(i32, i32) #1

declare dso_local i32 @seqcount_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fixed_phy_update(%struct.fixed_phy*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
