; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_mii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnet = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, %struct.dnet*, i32, i32*, i32* }
%struct.TYPE_6__ = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dnet_mii_bus\00", align 1
@dnet_mdio_read = common dso_local global i32 0, align 4
@dnet_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnet*)* @dnet_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnet_mii_init(%struct.dnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dnet*, align 8
  %4 = alloca i32, align 4
  store %struct.dnet* %0, %struct.dnet** %3, align 8
  %5 = call %struct.TYPE_7__* (...) @mdiobus_alloc()
  %6 = load %struct.dnet*, %struct.dnet** %3, align 8
  %7 = getelementptr inbounds %struct.dnet, %struct.dnet* %6, i32 0, i32 0
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %7, align 8
  %8 = load %struct.dnet*, %struct.dnet** %3, align 8
  %9 = getelementptr inbounds %struct.dnet, %struct.dnet* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.dnet*, %struct.dnet** %3, align 8
  %17 = getelementptr inbounds %struct.dnet, %struct.dnet* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load %struct.dnet*, %struct.dnet** %3, align 8
  %21 = getelementptr inbounds %struct.dnet, %struct.dnet* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  store i32* @dnet_mdio_read, i32** %23, align 8
  %24 = load %struct.dnet*, %struct.dnet** %3, align 8
  %25 = getelementptr inbounds %struct.dnet, %struct.dnet* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  store i32* @dnet_mdio_write, i32** %27, align 8
  %28 = load %struct.dnet*, %struct.dnet** %3, align 8
  %29 = getelementptr inbounds %struct.dnet, %struct.dnet* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %34 = load %struct.dnet*, %struct.dnet** %3, align 8
  %35 = getelementptr inbounds %struct.dnet, %struct.dnet* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.dnet*, %struct.dnet** %3, align 8
  %40 = getelementptr inbounds %struct.dnet, %struct.dnet* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snprintf(i32 %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %43)
  %45 = load %struct.dnet*, %struct.dnet** %3, align 8
  %46 = load %struct.dnet*, %struct.dnet** %3, align 8
  %47 = getelementptr inbounds %struct.dnet, %struct.dnet* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store %struct.dnet* %45, %struct.dnet** %49, align 8
  %50 = load %struct.dnet*, %struct.dnet** %3, align 8
  %51 = getelementptr inbounds %struct.dnet, %struct.dnet* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i64 @mdiobus_register(%struct.TYPE_7__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %15
  %56 = load i32, i32* @ENXIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %73

58:                                               ; preds = %15
  %59 = load %struct.dnet*, %struct.dnet** %3, align 8
  %60 = getelementptr inbounds %struct.dnet, %struct.dnet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @dnet_mii_probe(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %79

68:                                               ; preds = %64
  %69 = load %struct.dnet*, %struct.dnet** %3, align 8
  %70 = getelementptr inbounds %struct.dnet, %struct.dnet* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = call i32 @mdiobus_unregister(%struct.TYPE_7__* %71)
  br label %73

73:                                               ; preds = %68, %55
  %74 = load %struct.dnet*, %struct.dnet** %3, align 8
  %75 = getelementptr inbounds %struct.dnet, %struct.dnet* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = call i32 @mdiobus_free(%struct.TYPE_7__* %76)
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %73, %67, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_7__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @mdiobus_register(%struct.TYPE_7__*) #1

declare dso_local i64 @dnet_mii_probe(i32) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
