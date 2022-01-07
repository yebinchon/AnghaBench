; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_setup_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_setup_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.igc_hw.0*)* }
%struct.igc_hw.0 = type opaque

@igc_fc_default = common dso_local global i64 0, align 8
@igc_fc_full = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Initializing the Flow Control address, type and timer regs\0A\00", align 1
@IGC_FCT = common dso_local global i32 0, align 4
@FLOW_CONTROL_TYPE = common dso_local global i32 0, align 4
@IGC_FCAH = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_HIGH = common dso_local global i32 0, align 4
@IGC_FCAL = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_LOW = common dso_local global i32 0, align 4
@IGC_FCTTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igc_setup_link(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %5 = call i64 @igc_check_reset_block(%struct.igc_hw* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %63

8:                                                ; preds = %1
  %9 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %10 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @igc_fc_default, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i64, i64* @igc_fc_full, align 8
  %17 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %18 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %8
  %21 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %22 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %26 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %29 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %34 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64 (%struct.igc_hw.0*)*, i64 (%struct.igc_hw.0*)** %36, align 8
  %38 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %39 = bitcast %struct.igc_hw* %38 to %struct.igc_hw.0*
  %40 = call i64 %37(%struct.igc_hw.0* %39)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  br label %63

44:                                               ; preds = %20
  %45 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @IGC_FCT, align 4
  %47 = load i32, i32* @FLOW_CONTROL_TYPE, align 4
  %48 = call i32 @wr32(i32 %46, i32 %47)
  %49 = load i32, i32* @IGC_FCAH, align 4
  %50 = load i32, i32* @FLOW_CONTROL_ADDRESS_HIGH, align 4
  %51 = call i32 @wr32(i32 %49, i32 %50)
  %52 = load i32, i32* @IGC_FCAL, align 4
  %53 = load i32, i32* @FLOW_CONTROL_ADDRESS_LOW, align 4
  %54 = call i32 @wr32(i32 %52, i32 %53)
  %55 = load i32, i32* @IGC_FCTTV, align 4
  %56 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %57 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @wr32(i32 %55, i32 %59)
  %61 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %62 = call i64 @igc_set_fc_watermarks(%struct.igc_hw* %61)
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %44, %43, %7
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i64 @igc_check_reset_block(%struct.igc_hw*) #1

declare dso_local i32 @hw_dbg(i8*, ...) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i64 @igc_set_fc_watermarks(%struct.igc_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
