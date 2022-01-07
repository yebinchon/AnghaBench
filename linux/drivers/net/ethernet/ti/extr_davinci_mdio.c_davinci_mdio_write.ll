; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.davinci_mdio_data* }
%struct.davinci_mdio_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PHY_REG_MASK = common dso_local global i32 0, align 4
@PHY_ID_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USERACCESS_GO = common dso_local global i32 0, align 4
@USERACCESS_WRITE = common dso_local global i32 0, align 4
@USERACCESS_DATA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @davinci_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.davinci_mdio_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 0
  %15 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %14, align 8
  store %struct.davinci_mdio_data* %15, %struct.davinci_mdio_data** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PHY_REG_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PHY_ID_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %97

30:                                               ; preds = %21
  %31 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %10, align 8
  %32 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pm_runtime_get_sync(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %10, align 8
  %39 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pm_runtime_put_noidle(i32 %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %97

43:                                               ; preds = %30
  %44 = load i32, i32* @USERACCESS_GO, align 4
  %45 = load i32, i32* @USERACCESS_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 21
  %49 = or i32 %46, %48
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %49, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @USERACCESS_DATA, align 4
  %55 = and i32 %53, %54
  %56 = or i32 %52, %55
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %43, %64, %85
  %58 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %10, align 8
  %59 = call i32 @wait_for_user_access(%struct.davinci_mdio_data* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %57

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %87

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %10, align 8
  %72 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @writel(i32 %70, i32* %77)
  %79 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %10, align 8
  %80 = call i32 @wait_for_user_access(%struct.davinci_mdio_data* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %57

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %10, align 8
  %89 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pm_runtime_mark_last_busy(i32 %90)
  %92 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %10, align 8
  %93 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pm_runtime_put_autosuspend(i32 %94)
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %87, %37, %27
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wait_for_user_access(%struct.davinci_mdio_data*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
