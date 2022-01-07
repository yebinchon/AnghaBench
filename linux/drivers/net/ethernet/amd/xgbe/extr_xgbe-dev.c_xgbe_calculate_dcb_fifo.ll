; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_calculate_dcb_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_calculate_dcb_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32*, i32 }

@XGMAC_FIFO_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RXq%u cannot set needed fifo size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32, i32*)* @xgbe_calculate_dcb_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_calculate_dcb_fifo(%struct.xgbe_prv_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %15 = call i32 @xgbe_get_max_frame(%struct.xgbe_prv_data* %14)
  %16 = call i32 @XGMAC_FIFO_ALIGN(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @XGMAC_PRIO_QUEUES(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %22 = call i32 @xgbe_get_pfc_queues(%struct.xgbe_prv_data* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %10, align 4
  %28 = mul i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @xgbe_calculate_equal_fifo(i32 %32, i32 %33, i32* %34)
  br label %147

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul i32 %38, %39
  %41 = sub i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %43 = call i32 @xgbe_get_pfc_delay(%struct.xgbe_prv_data* %42)
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %45 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %47 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @XGMAC_FLOW_CONTROL_ALIGN(i32 %48)
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %53 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %36
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %59 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @XGMAC_FIFO_ALIGN(i32 %63)
  store i32 %64, i32* %9, align 4
  br label %66

65:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %109, %106, %93, %66
  %69 = load i32, i32* %12, align 4
  %70 = icmp ugt i32 %69, 0
  br i1 %70, label %71, label %122

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @XGMAC_FIFO_UNIT, align 4
  %76 = udiv i32 %74, %75
  %77 = sub i32 %76, 1
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %83 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %71
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %71
  br label %68

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %100 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @netdev_warn(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %68

107:                                              ; preds = %98
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %107, %94
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @XGMAC_FIFO_UNIT, align 4
  %112 = udiv i32 %110, %111
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %12, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, %112
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sub i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %68

122:                                              ; preds = %68
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %122
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = udiv i32 %126, %127
  store i32 %128, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %143, %125
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @XGMAC_FIFO_UNIT, align 4
  %136 = udiv i32 %134, %135
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %12, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, %136
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %133
  %144 = load i32, i32* %12, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %129

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %31, %146, %122
  ret void
}

declare dso_local i32 @XGMAC_FIFO_ALIGN(i32) #1

declare dso_local i32 @xgbe_get_max_frame(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XGMAC_PRIO_QUEUES(i32) #1

declare dso_local i32 @xgbe_get_pfc_queues(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_calculate_equal_fifo(i32, i32, i32*) #1

declare dso_local i32 @xgbe_get_pfc_delay(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XGMAC_FLOW_CONTROL_ALIGN(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
