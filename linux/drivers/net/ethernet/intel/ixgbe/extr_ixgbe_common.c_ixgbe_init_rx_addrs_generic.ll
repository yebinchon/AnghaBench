; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_init_rx_addrs_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_init_rx_addrs_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_4__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c" Keeping Current RAR0 Addr =%pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Overriding MAC Address in RAR[0]\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" New MAC Addr =%pM\0A\00", align 1
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Clearing RAR[1-%d]\0A\00", align 1
@IXGBE_MCSTCTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c" Clearing MTA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_rx_addrs_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @is_valid_ether_addr(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32 (%struct.ixgbe_hw.3*, i32)*, i32 (%struct.ixgbe_hw.3*, i32)** %19, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %22 = bitcast %struct.ixgbe_hw* %21 to %struct.ixgbe_hw.3*
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %20(%struct.ixgbe_hw.3* %22, i32 %26)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %56

34:                                               ; preds = %1
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32, i32)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.2*
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IXGBE_RAH_AV, align 4
  %55 = call i32 %47(%struct.ixgbe_hw.2* %49, i32 0, i32 %53, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %34, %15
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32 (%struct.ixgbe_hw.1*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32)** %60, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %63 = bitcast %struct.ixgbe_hw* %62 to %struct.ixgbe_hw.1*
  %64 = load i32, i32* @IXGBE_CLEAR_VMDQ_ALL, align 4
  %65 = call i32 %61(%struct.ixgbe_hw.1* %63, i32 0, i32 %64)
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, 1
  %75 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %89, %56
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @IXGBE_RAL(i32 %82)
  %84 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %81, i32 %83, i32 0)
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @IXGBE_RAH(i32 %86)
  %88 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %85, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %76

92:                                               ; preds = %76
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %94 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = load i32, i32* @IXGBE_MCSTCTRL, align 4
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %99 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %96, i32 %97, i32 %101)
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %104 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %117, %92
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %108 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @IXGBE_MTA(i32 %114)
  %116 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %113, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %105

120:                                              ; preds = %105
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %124, align 8
  %126 = icmp ne i32 (%struct.ixgbe_hw.0*)* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %129 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %131, align 8
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %134 = bitcast %struct.ixgbe_hw* %133 to %struct.ixgbe_hw.0*
  %135 = call i32 %132(%struct.ixgbe_hw.0* %134)
  br label %136

136:                                              ; preds = %127, %120
  ret i32 0
}

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RAL(i32) #1

declare dso_local i32 @IXGBE_RAH(i32) #1

declare dso_local i32 @IXGBE_MTA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
