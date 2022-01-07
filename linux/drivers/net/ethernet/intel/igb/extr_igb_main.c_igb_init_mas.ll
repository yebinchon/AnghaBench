; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_init_mas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_init_mas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@NVM_COMPAT = common dso_local global i32 0, align 4
@IGB_MAS_ENABLE_0 = common dso_local global i32 0, align 4
@IGB_FLAG_MAS_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"MAS: Enabling Media Autosense for port %d\0A\00", align 1
@IGB_MAS_ENABLE_1 = common dso_local global i32 0, align 4
@IGB_MAS_ENABLE_2 = common dso_local global i32 0, align 4
@IGB_MAS_ENABLE_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"MAS: Invalid port configuration, returning\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_init_mas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_init_mas(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 2
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %10, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = bitcast %struct.e1000_hw* %12 to %struct.e1000_hw.0*
  %14 = load i32, i32* @NVM_COMPAT, align 4
  %15 = call i32 %11(%struct.e1000_hw.0* %13, i32 %14, i32 1, i32* %4)
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %100 [
    i32 131, label %20
    i32 130, label %40
    i32 129, label %60
    i32 128, label %80
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @IGB_MAS_ENABLE_0, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32, i32* @IGB_FLAG_MAS_ENABLE, align 4
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netdev_info(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %25, %20
  br label %105

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @IGB_MAS_ENABLE_1, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i32, i32* @IGB_FLAG_MAS_ENABLE, align 4
  %47 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netdev_info(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %45, %40
  br label %105

60:                                               ; preds = %1
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @IGB_MAS_ENABLE_2, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load i32, i32* @IGB_FLAG_MAS_ENABLE, align 4
  %67 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @netdev_info(i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %65, %60
  br label %105

80:                                               ; preds = %1
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @IGB_MAS_ENABLE_3, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i32, i32* @IGB_FLAG_MAS_ENABLE, align 4
  %87 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @netdev_info(i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %85, %80
  br label %105

100:                                              ; preds = %1
  %101 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @netdev_err(i32 %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %100, %99, %79, %59, %39
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
