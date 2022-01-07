; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_mdio.c_sxgbe_mdio_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_mdio.c_sxgbe_mdio_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mii_regs }
%struct.mii_regs = type { i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sxgbe_priv_data*, i32, i32, i32, i32)* @sxgbe_mdio_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_mdio_access(%struct.sxgbe_priv_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sxgbe_priv_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mii_regs*, align 8
  %13 = alloca i32, align 4
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %15 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.mii_regs* %17, %struct.mii_regs** %12, align 8
  %18 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %19 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mii_regs*, %struct.mii_regs** %12, align 8
  %22 = getelementptr inbounds %struct.mii_regs, %struct.mii_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sxgbe_mdio_busy_wait(i32 %20, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %62

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @MII_ADDR_C45, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @sxgbe_mdio_c45(%struct.sxgbe_priv_data* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  br label %54

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  %43 = icmp sge i32 %42, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %62

47:                                               ; preds = %41
  %48 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @sxgbe_mdio_c22(%struct.sxgbe_priv_data* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %34
  %55 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %56 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mii_regs*, %struct.mii_regs** %12, align 8
  %59 = getelementptr inbounds %struct.mii_regs, %struct.mii_regs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sxgbe_mdio_busy_wait(i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %54, %44, %27
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @sxgbe_mdio_busy_wait(i32, i32) #1

declare dso_local i32 @sxgbe_mdio_c45(%struct.sxgbe_priv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @sxgbe_mdio_c22(%struct.sxgbe_priv_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
