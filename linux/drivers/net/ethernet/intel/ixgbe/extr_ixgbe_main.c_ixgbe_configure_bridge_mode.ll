; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_bridge_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_bridge_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_PFDTXGSWC = common dso_local global i32 0, align 4
@IXGBE_VMD_CTL = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_REPLEN = common dso_local global i32 0, align 4
@IXGBE_PFDTXGSWC_VT_LBEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"enabling bridge mode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"VEPA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"VEB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32)* @ixgbe_configure_bridge_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_configure_bridge_mode(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 3
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %117 [
    i32 128, label %13
    i32 129, label %61
  ]

13:                                               ; preds = %2
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 3
  %16 = load i32, i32* @IXGBE_PFDTXGSWC, align 4
  %17 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %15, i32 %16, i32 0)
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %19 = load i32, i32* @IXGBE_VMD_CTL, align 4
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @IXGBE_VT_CTL_REPLEN, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %25 = load i32, i32* @IXGBE_VMD_CTL, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %24, i32 %25, i32 %26)
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %30, %33
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %57, %13
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.ixgbe_hw.0*, i32, i32)* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %50, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %53 = bitcast %struct.ixgbe_hw* %52 to %struct.ixgbe_hw.0*
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %51(%struct.ixgbe_hw.0* %53, i32 1, i32 %54)
  br label %56

56:                                               ; preds = %46, %39
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %35

60:                                               ; preds = %35
  br label %120

61:                                               ; preds = %2
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %62, i32 0, i32 3
  %64 = load i32, i32* @IXGBE_PFDTXGSWC, align 4
  %65 = load i32, i32* @IXGBE_PFDTXGSWC_VT_LBEN, align 4
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %63, i32 %64, i32 %65)
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %68 = load i32, i32* @IXGBE_VMD_CTL, align 4
  %69 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %61
  %75 = load i32, i32* @IXGBE_VT_CTL_REPLEN, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %74, %61
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %81 = load i32, i32* @IXGBE_VMD_CTL, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %80, i32 %81, i32 %82)
  %84 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %88 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %86, %89
  store i32 %90, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %113, %79
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %99, align 8
  %101 = icmp ne i32 (%struct.ixgbe_hw.0*, i32, i32)* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %106, align 8
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %109 = bitcast %struct.ixgbe_hw* %108 to %struct.ixgbe_hw.0*
  %110 = load i32, i32* %7, align 4
  %111 = call i32 %107(%struct.ixgbe_hw.0* %109, i32 0, i32 %110)
  br label %112

112:                                              ; preds = %102, %95
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %7, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %91

116:                                              ; preds = %91
  br label %120

117:                                              ; preds = %2
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %130

120:                                              ; preds = %116, %60
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %123 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @drv, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %125, 128
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %129 = call i32 @e_info(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %120, %117
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @e_info(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
