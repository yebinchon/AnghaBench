; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

@ICE_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CoreR requested\0A\00", align 1
@GLGEN_RTRIG_CORER_M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"GlobalR requested\0A\00", align 1
@GLGEN_RTRIG_GLOBR_M = common dso_local global i32 0, align 4
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@GLGEN_RTRIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_reset(%struct.ice_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %21 [
    i32 128, label %8
    i32 130, label %11
    i32 129, label %16
  ]

8:                                                ; preds = %2
  %9 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %10 = call i32 @ice_pf_reset(%struct.ice_hw* %9)
  store i32 %10, i32* %3, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %13 = load i32, i32* @ICE_DBG_INIT, align 4
  %14 = call i32 @ice_debug(%struct.ice_hw* %12, i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GLGEN_RTRIG_CORER_M, align 4
  store i32 %15, i32* %6, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %18 = load i32, i32* @ICE_DBG_INIT, align 4
  %19 = call i32 @ice_debug(%struct.ice_hw* %17, i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @GLGEN_RTRIG_GLOBR_M, align 4
  store i32 %20, i32* %6, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %16, %11
  %24 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %25 = load i32, i32* @GLGEN_RTRIG, align 4
  %26 = call i32 @rd32(%struct.ice_hw* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %30 = load i32, i32* @GLGEN_RTRIG, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @wr32(%struct.ice_hw* %29, i32 %30, i32 %31)
  %33 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %34 = call i32 @ice_flush(%struct.ice_hw* %33)
  %35 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %36 = call i32 @ice_check_reset(%struct.ice_hw* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %23, %21, %8
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ice_pf_reset(%struct.ice_hw*) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

declare dso_local i32 @ice_check_reset(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
