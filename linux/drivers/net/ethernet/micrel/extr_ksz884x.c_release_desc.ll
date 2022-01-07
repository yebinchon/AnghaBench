; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_release_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_release_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_desc = type { %struct.TYPE_14__, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_desc*)* @release_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_desc(%struct.ksz_desc* %0) #0 {
  %2 = alloca %struct.ksz_desc*, align 8
  store %struct.ksz_desc* %0, %struct.ksz_desc** %2, align 8
  %3 = load %struct.ksz_desc*, %struct.ksz_desc** %2, align 8
  %4 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.ksz_desc*, %struct.ksz_desc** %2, align 8
  %9 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ksz_desc*, %struct.ksz_desc** %2, align 8
  %13 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %11, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %struct.ksz_desc*, %struct.ksz_desc** %2, align 8
  %20 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ksz_desc*, %struct.ksz_desc** %2, align 8
  %25 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.ksz_desc*, %struct.ksz_desc** %2, align 8
  %28 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @cpu_to_le32(i64 %31)
  %33 = load %struct.ksz_desc*, %struct.ksz_desc** %2, align 8
  %34 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i8* %32, i8** %37, align 8
  br label %38

38:                                               ; preds = %18, %1
  %39 = load %struct.ksz_desc*, %struct.ksz_desc** %2, align 8
  %40 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @cpu_to_le32(i64 %43)
  %45 = load %struct.ksz_desc*, %struct.ksz_desc** %2, align 8
  %46 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i8* %44, i8** %49, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
