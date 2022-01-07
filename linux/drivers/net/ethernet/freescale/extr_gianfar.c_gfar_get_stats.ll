; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.gfar_private = type { i32, i32, %struct.TYPE_8__**, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @gfar_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @gfar_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %10)
  store %struct.gfar_private* %11, %struct.gfar_private** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %55, %1
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %15 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %20 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %32 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %44 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %18
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %12

58:                                               ; preds = %12
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %69, i32 0, i32 2
  store i64 %67, i64* %70, align 8
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %102, %58
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %74 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %71
  %78 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %79 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %80, i64 %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %91 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %92, i64 %94
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %77
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %71

105:                                              ; preds = %71
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %108, i32 0, i32 3
  store i64 %106, i64* %109, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.net_device*, %struct.net_device** %2, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %112, i32 0, i32 4
  store i64 %110, i64* %113, align 8
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  ret %struct.net_device_stats* %115
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
