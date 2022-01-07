; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_queue_flow_control_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_queue_flow_control_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32*, i32*, i64* }

@XGMAC_FLOW_CONTROL_MAX = common dso_local global i32 0, align 4
@XGMAC_FLOW_CONTROL_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32, i32)* @xgbe_queue_flow_control_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_queue_flow_control_threshold(%struct.xgbe_prv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %11 = call i32 @xgbe_get_max_frame(%struct.xgbe_prv_data* %10)
  %12 = call i32 @XGMAC_FLOW_CONTROL_ALIGN(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @XGMAC_FLOW_CONTROL_MAX, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @XGMAC_FLOW_CONTROL_MAX, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @XGMAC_FLOW_CONTROL_MAX, align 4
  %42 = icmp uge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @XGMAC_FLOW_CONTROL_MAX, align 4
  %45 = load i32, i32* @XGMAC_FLOW_CONTROL_UNIT, align 4
  %46 = sub i32 %44, %45
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %120

48:                                               ; preds = %21, %3
  %49 = load i32, i32* %6, align 4
  %50 = icmp ule i32 %49, 2048
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %53 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 0, i32* %57, align 4
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %59 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 0, i32* %63, align 4
  br label %139

64:                                               ; preds = %48
  %65 = load i32, i32* %6, align 4
  %66 = icmp ule i32 %65, 4096
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %69 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %75 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 1, i32* %79, align 4
  br label %139

80:                                               ; preds = %64
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ule i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %86 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 2, i32* %90, align 4
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %92 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 5, i32* %96, align 4
  br label %139

97:                                               ; preds = %80
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul i32 %99, 3
  %101 = icmp ule i32 %98, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub i32 %103, %104
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = udiv i32 %107, 2
  %109 = add i32 %106, %108
  store i32 %109, i32* %9, align 4
  br label %119

110:                                              ; preds = %97
  %111 = load i32, i32* %7, align 4
  %112 = mul i32 %111, 2
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* @XGMAC_FLOW_CONTROL_UNIT, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %116, %117
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %110, %102
  br label %120

120:                                              ; preds = %119, %47
  %121 = load i32, i32* %8, align 4
  %122 = call i8* @XGMAC_FLOW_CONTROL_VALUE(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %125 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i8* @XGMAC_FLOW_CONTROL_VALUE(i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %134 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %120, %84, %67, %51
  ret void
}

declare dso_local i32 @XGMAC_FLOW_CONTROL_ALIGN(i32) #1

declare dso_local i32 @xgbe_get_max_frame(%struct.xgbe_prv_data*) #1

declare dso_local i8* @XGMAC_FLOW_CONTROL_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
