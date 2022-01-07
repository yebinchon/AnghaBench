; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.typhoon*)* @typhoon_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_init_rings(%struct.typhoon* %0) #0 {
  %2 = alloca %struct.typhoon*, align 8
  store %struct.typhoon* %0, %struct.typhoon** %2, align 8
  %3 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %4 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @memset(i32 %5, i32 0, i32 4)
  %7 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %8 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %11 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %14 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %17 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %20 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %23 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %26 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %29 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %32 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
