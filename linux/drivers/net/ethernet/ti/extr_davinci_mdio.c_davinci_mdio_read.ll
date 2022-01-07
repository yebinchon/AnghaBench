; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_read.c"
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
@USERACCESS_READ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@USERACCESS_ACK = common dso_local global i32 0, align 4
@USERACCESS_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @davinci_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.davinci_mdio_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %12, align 8
  store %struct.davinci_mdio_data* %13, %struct.davinci_mdio_data** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PHY_REG_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PHY_ID_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %116

28:                                               ; preds = %19
  %29 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %8, align 8
  %30 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pm_runtime_get_sync(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %8, align 8
  %37 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pm_runtime_put_noidle(i32 %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %116

41:                                               ; preds = %28
  %42 = load i32, i32* @USERACCESS_GO, align 4
  %43 = load i32, i32* @USERACCESS_READ, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 21
  %47 = or i32 %44, %46
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %41, %58, %79
  %52 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %8, align 8
  %53 = call i32 @wait_for_user_access(%struct.davinci_mdio_data* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %51

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %106

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %8, align 8
  %66 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @writel(i32 %64, i32* %71)
  %73 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %8, align 8
  %74 = call i32 @wait_for_user_access(%struct.davinci_mdio_data* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  br label %51

80:                                               ; preds = %63
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %106

84:                                               ; preds = %80
  %85 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %8, align 8
  %86 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i32 @readl(i32* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @USERACCESS_ACK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @USERACCESS_DATA, align 4
  %100 = and i32 %98, %99
  br label %104

101:                                              ; preds = %84
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i32 [ %100, %97 ], [ %103, %101 ]
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %104, %83, %62
  %107 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %8, align 8
  %108 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @pm_runtime_mark_last_busy(i32 %109)
  %111 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %8, align 8
  %112 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @pm_runtime_put_autosuspend(i32 %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %106, %35, %25
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wait_for_user_access(%struct.davinci_mdio_data*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
