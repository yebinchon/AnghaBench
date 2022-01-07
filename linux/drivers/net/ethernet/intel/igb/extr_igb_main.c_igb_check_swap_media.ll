; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_check_swap_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_check_swap_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CONNSW = common dso_local global i32 0, align 4
@E1000_CONNSW_AUTOSENSE_EN = common dso_local global i32 0, align 4
@E1000_CONNSW_SERDESD = common dso_local global i32 0, align 4
@E1000_CONNSW_AUTOSENSE_CONF = common dso_local global i32 0, align 4
@E1000_CONNSW_PHYSD = common dso_local global i32 0, align 4
@E1000_CONNSW_PHY_PDN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MAS: changing media to fiber/serdes\0A\00", align 1
@E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES = common dso_local global i32 0, align 4
@IGB_FLAG_MEDIA_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"MAS: changing media to copper\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"AMS: Invalid media type found, returning\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_check_swap_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_check_swap_media(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %7, i32 0, i32 3
  store %struct.e1000_hw* %8, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @E1000_CTRL_EXT, align 4
  %10 = call i32 @rd32(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @E1000_CONNSW, align 4
  %12 = call i32 @rd32(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 130
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @E1000_CONNSW_AUTOSENSE_EN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %74

24:                                               ; preds = %18, %1
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 130
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @E1000_CONNSW_SERDESD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %73, label %35

35:                                               ; preds = %30
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @E1000_CONNSW_AUTOSENSE_CONF, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @E1000_CONNSW, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @wr32(i32 %48, i32 %49)
  br label %121

51:                                               ; preds = %35
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @E1000_CONNSW_PHYSD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @E1000_CONNSW_PHY_PDN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  %64 = load i32, i32* @E1000_CONNSW_AUTOSENSE_CONF, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @E1000_CONNSW, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @wr32(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %58, %51
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72, %30, %24
  br label %74

74:                                               ; preds = %73, %23
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %121

78:                                               ; preds = %74
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %112 [
    i32 130, label %83
    i32 128, label %98
    i32 129, label %98
  ]

83:                                               ; preds = %78
  %84 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @netdev_info(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @IGB_FLAG_MEDIA_RESET, align 4
  %92 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  br label %117

98:                                               ; preds = %78, %78
  %99 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @netdev_info(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* @IGB_FLAG_MEDIA_RESET, align 4
  %108 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %117

112:                                              ; preds = %78
  %113 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @netdev_err(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %112, %98, %83
  %118 = load i32, i32* @E1000_CTRL_EXT, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @wr32(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %77, %40
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
