; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_mps_bg_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_mps_bg_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MPS_CMN_CTL_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MPS Port Index %d >= Nports %d\0A\00", align 1
@CXGB4_FW_OK = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_MPSBGMAP = common dso_local global i32 0, align 4
@MAX_NPORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_get_mps_bg_map(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = load i32, i32* @MPS_CMN_CTL_A, align 4
  %14 = call i32 @t4_read_reg(%struct.adapter* %12, i32 %13)
  %15 = call i32 @NUMPORTS_G(i32 %14)
  %16 = shl i32 1, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @CH_WARN(%struct.adapter* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %102

25:                                               ; preds = %2
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %102

42:                                               ; preds = %25
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CXGB4_FW_OK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %42
  %50 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %51 = call i32 @FW_PARAMS_MNEM_V(i32 %50)
  %52 = load i32, i32* @FW_PARAMS_PARAM_DEV_MPSBGMAP, align 4
  %53 = call i32 @FW_PARAMS_PARAM_X_V(i32 %52)
  %54 = or i32 %51, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = load %struct.adapter*, %struct.adapter** %4, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.adapter*, %struct.adapter** %4, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @t4_query_params_ns(%struct.adapter* %55, i32 %58, i32 %61, i32 0, i32 1, i32* %8, i32* %9)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @MAX_NPORTS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 255
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, 8
  store i32 %81, i32* %9, align 4
  br label %66

82:                                               ; preds = %66
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  br label %102

88:                                               ; preds = %49
  br label %89

89:                                               ; preds = %88, %42
  %90 = load %struct.adapter*, %struct.adapter** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @compute_mps_bg_map(%struct.adapter* %90, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %89, %82, %36, %20
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @NUMPORTS_G(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32, i32) #1

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @t4_query_params_ns(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @compute_mps_bg_map(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
