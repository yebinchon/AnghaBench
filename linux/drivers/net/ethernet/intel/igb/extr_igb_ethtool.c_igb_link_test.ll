; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_link_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_link_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32*)* @igb_link_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_link_test(%struct.igb_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 0
  store %struct.e1000_hw* %9, %struct.e1000_hw** %6, align 8
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %41, %17
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %25, align 8
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %27, i32 0, i32 0
  %29 = bitcast %struct.e1000_hw* %28 to %struct.e1000_hw.0*
  %30 = call i32 %26(%struct.e1000_hw.0* %29)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %76

39:                                               ; preds = %21
  %40 = call i32 @msleep(i32 20)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = icmp slt i32 %42, 3750
  br i1 %44, label %21, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  store i32 1, i32* %46, align 4
  br label %73

47:                                               ; preds = %2
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %51, align 8
  %53 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %53, i32 0, i32 0
  %55 = bitcast %struct.e1000_hw* %54 to %struct.e1000_hw.0*
  %56 = call i32 %52(%struct.e1000_hw.0* %55)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = call i32 @msleep(i32 5000)
  br label %64

64:                                               ; preds = %62, %47
  %65 = load i32, i32* @E1000_STATUS, align 4
  %66 = call i32 @rd32(i32 %65)
  %67 = load i32, i32* @E1000_STATUS_LU, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = load i32*, i32** %5, align 8
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %36
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
