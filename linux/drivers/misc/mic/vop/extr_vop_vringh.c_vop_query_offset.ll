; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_query_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_query_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vdev = type { %struct.vop_vringh*, %struct.TYPE_5__*, %struct.vop_device* }
%struct.vop_vringh = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vop_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.vop_device*)* }

@MIC_DP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_vdev*, i64, i64*, i64*)* @vop_query_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_query_offset(%struct.vop_vdev* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vop_vdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.vop_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vop_vringh*, align 8
  store %struct.vop_vdev* %0, %struct.vop_vdev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.vop_vdev*, %struct.vop_vdev** %6, align 8
  %15 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %14, i32 0, i32 2
  %16 = load %struct.vop_device*, %struct.vop_device** %15, align 8
  store %struct.vop_device* %16, %struct.vop_device** %10, align 8
  %17 = load i64, i64* @MIC_DP_SIZE, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = load %struct.vop_device*, %struct.vop_device** %10, align 8
  %22 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.vop_device*)*, i32 (%struct.vop_device*)** %24, align 8
  %26 = load %struct.vop_device*, %struct.vop_device** %10, align 8
  %27 = call i32 %25(%struct.vop_device* %26)
  %28 = call i64 @virt_to_phys(i32 %27)
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i64, i64* @MIC_DP_SIZE, align 8
  %31 = load i64*, i64** %8, align 8
  store i64 %30, i64* %31, align 8
  store i32 0, i32* %5, align 4
  br label %74

32:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %70, %32
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.vop_vdev*, %struct.vop_vdev** %6, align 8
  %36 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %33
  %42 = load %struct.vop_vdev*, %struct.vop_vdev** %6, align 8
  %43 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %42, i32 0, i32 0
  %44 = load %struct.vop_vringh*, %struct.vop_vringh** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %44, i64 %46
  store %struct.vop_vringh* %47, %struct.vop_vringh** %13, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %41
  %52 = load %struct.vop_vringh*, %struct.vop_vringh** %13, align 8
  %53 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @virt_to_phys(i32 %55)
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.vop_vringh*, %struct.vop_vringh** %13, align 8
  %59 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  store i32 0, i32* %5, align 4
  br label %74

63:                                               ; preds = %41
  %64 = load %struct.vop_vringh*, %struct.vop_vringh** %13, align 8
  %65 = getelementptr inbounds %struct.vop_vringh, %struct.vop_vringh* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %33

73:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %51, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
