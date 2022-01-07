; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_getPhyType.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_getPhyType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ql3_adapter = type { i32 }

@PHY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@PHY_OUI_1_MASK = common dso_local global i32 0, align 4
@PHY_MODEL_MASK = common dso_local global i32 0, align 4
@MAX_PHY_DEV_TYPES = common dso_local global i32 0, align 4
@PHY_DEVICES = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"Phy: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*, i32, i32)* @getPhyType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getPhyType(%struct.ql3_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ql3_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @PHY_TYPE_UNKNOWN, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %79

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 65535
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %79

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 6
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PHY_OUI_1_MASK, align 4
  %27 = and i32 %25, %26
  %28 = ashr i32 %27, 10
  %29 = or i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PHY_MODEL_MASK, align 4
  %32 = and i32 %30, %31
  %33 = ashr i32 %32, 4
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %74, %22
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @MAX_PHY_DEV_TYPES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PHY_DEVICES, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PHY_DEVICES, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %47
  %57 = load %struct.ql3_adapter*, %struct.ql3_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PHY_DEVICES, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @netdev_info(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PHY_DEVICES, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %77

73:                                               ; preds = %47, %38
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %34

77:                                               ; preds = %56, %34
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %20, %15
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
