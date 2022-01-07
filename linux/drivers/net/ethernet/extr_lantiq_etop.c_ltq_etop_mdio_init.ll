; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_mdio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_mdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ltq_etop_priv = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, %struct.net_device* }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to allocate mii bus\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ltq_etop_mdio_rd = common dso_local global i32 0, align 4
@ltq_etop_mdio_wr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ltq_mii\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ltq_etop_mdio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_etop_mdio_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ltq_etop_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ltq_etop_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ltq_etop_priv* %7, %struct.ltq_etop_priv** %4, align 8
  %8 = call %struct.TYPE_7__* (...) @mdiobus_alloc()
  %9 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %9, i32 0, i32 0
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %83

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  store %struct.net_device* %21, %struct.net_device** %25, align 8
  %26 = load i32, i32* @ltq_etop_mdio_rd, align 4
  %27 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %28 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store i32 %26, i32* %30, align 8
  %31 = load i32, i32* @ltq_etop_mdio_wr, align 4
  %32 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %33 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 4
  %36 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %41 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %46 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %47 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %52 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %55)
  %57 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = call i64 @mdiobus_register(%struct.TYPE_7__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %20
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %78

65:                                               ; preds = %20
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i64 @ltq_etop_mdio_probe(%struct.net_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %85

73:                                               ; preds = %69
  %74 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %75 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = call i32 @mdiobus_unregister(%struct.TYPE_7__* %76)
  br label %78

78:                                               ; preds = %73, %62
  %79 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = call i32 @mdiobus_free(%struct.TYPE_7__* %81)
  br label %83

83:                                               ; preds = %78, %15
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %72
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.ltq_etop_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_7__* @mdiobus_alloc(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @mdiobus_register(%struct.TYPE_7__*) #1

declare dso_local i64 @ltq_etop_mdio_probe(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
