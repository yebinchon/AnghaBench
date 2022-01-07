; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_mdio_link_not_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_mdio_link_not_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32, i32)* }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Autoneg failed again, keeping forced mode\0A\00", align 1
@DUPLEX_HALF = common dso_local global i32 0, align 4
@link_force_ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"switching to forced 100bt\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"switching to forced 10bt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gem*)* @gem_mdio_link_not_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_mdio_link_not_up(%struct.gem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gem*, align 8
  store %struct.gem* %0, %struct.gem** %3, align 8
  %4 = load %struct.gem*, %struct.gem** %3, align 8
  %5 = getelementptr inbounds %struct.gem, %struct.gem* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %97 [
    i32 129, label %7
    i32 130, label %34
    i32 128, label %67
  ]

7:                                                ; preds = %1
  %8 = load %struct.gem*, %struct.gem** %3, align 8
  %9 = load i32, i32* @link, align 4
  %10 = load %struct.gem*, %struct.gem** %3, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @netif_info(%struct.gem* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.gem*, %struct.gem** %3, align 8
  %15 = getelementptr inbounds %struct.gem, %struct.gem* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %20, align 8
  %22 = load %struct.gem*, %struct.gem** %3, align 8
  %23 = getelementptr inbounds %struct.gem, %struct.gem* %22, i32 0, i32 3
  %24 = load %struct.gem*, %struct.gem** %3, align 8
  %25 = getelementptr inbounds %struct.gem, %struct.gem* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DUPLEX_HALF, align 4
  %28 = call i32 %21(%struct.TYPE_8__* %23, i32 %26, i32 %27)
  %29 = load %struct.gem*, %struct.gem** %3, align 8
  %30 = getelementptr inbounds %struct.gem, %struct.gem* %29, i32 0, i32 1
  store i32 5, i32* %30, align 4
  %31 = load i32, i32* @link_force_ok, align 4
  %32 = load %struct.gem*, %struct.gem** %3, align 8
  %33 = getelementptr inbounds %struct.gem, %struct.gem* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %2, align 4
  br label %98

34:                                               ; preds = %1
  %35 = load %struct.gem*, %struct.gem** %3, align 8
  %36 = getelementptr inbounds %struct.gem, %struct.gem* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %98

43:                                               ; preds = %34
  %44 = load %struct.gem*, %struct.gem** %3, align 8
  %45 = load i32, i32* @link, align 4
  %46 = load %struct.gem*, %struct.gem** %3, align 8
  %47 = getelementptr inbounds %struct.gem, %struct.gem* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @netif_info(%struct.gem* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.gem*, %struct.gem** %3, align 8
  %51 = getelementptr inbounds %struct.gem, %struct.gem* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %56, align 8
  %58 = load %struct.gem*, %struct.gem** %3, align 8
  %59 = getelementptr inbounds %struct.gem, %struct.gem* %58, i32 0, i32 3
  %60 = load i32, i32* @SPEED_100, align 4
  %61 = load i32, i32* @DUPLEX_HALF, align 4
  %62 = call i32 %57(%struct.TYPE_8__* %59, i32 %60, i32 %61)
  %63 = load %struct.gem*, %struct.gem** %3, align 8
  %64 = getelementptr inbounds %struct.gem, %struct.gem* %63, i32 0, i32 1
  store i32 5, i32* %64, align 4
  %65 = load %struct.gem*, %struct.gem** %3, align 8
  %66 = getelementptr inbounds %struct.gem, %struct.gem* %65, i32 0, i32 0
  store i32 128, i32* %66, align 8
  store i32 0, i32* %2, align 4
  br label %98

67:                                               ; preds = %1
  %68 = load %struct.gem*, %struct.gem** %3, align 8
  %69 = getelementptr inbounds %struct.gem, %struct.gem* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SPEED_100, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %67
  %75 = load %struct.gem*, %struct.gem** %3, align 8
  %76 = getelementptr inbounds %struct.gem, %struct.gem* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %81, align 8
  %83 = load %struct.gem*, %struct.gem** %3, align 8
  %84 = getelementptr inbounds %struct.gem, %struct.gem* %83, i32 0, i32 3
  %85 = load i32, i32* @SPEED_10, align 4
  %86 = load i32, i32* @DUPLEX_HALF, align 4
  %87 = call i32 %82(%struct.TYPE_8__* %84, i32 %85, i32 %86)
  %88 = load %struct.gem*, %struct.gem** %3, align 8
  %89 = getelementptr inbounds %struct.gem, %struct.gem* %88, i32 0, i32 1
  store i32 5, i32* %89, align 4
  %90 = load %struct.gem*, %struct.gem** %3, align 8
  %91 = load i32, i32* @link, align 4
  %92 = load %struct.gem*, %struct.gem** %3, align 8
  %93 = getelementptr inbounds %struct.gem, %struct.gem* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @netif_info(%struct.gem* %90, i32 %91, i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

96:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %98

97:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %96, %74, %43, %42, %7
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @netif_info(%struct.gem*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
