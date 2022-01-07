; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_rx_fifo_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_rx_fifo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@XGBE_MAX_QUEUES = common dso_local global i32 0, align 4
@MTL_Q_RQOMR = common dso_local global i32 0, align 4
@RQS = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%u Rx hardware queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"RxQ%u, %u byte fifo queue\0A\00", align 1
@XGMAC_FIFO_UNIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%u Rx hardware queues, %u byte fifo per queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_config_rx_fifo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_config_rx_fifo_size(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %8 = load i32, i32* @XGBE_MAX_QUEUES, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = call i32 @xgbe_get_rx_fifo_size(%struct.xgbe_prv_data* %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @XGMAC_PRIO_QUEUES(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %26 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @xgbe_set_nonprio_fifos(i32 %24, i32 %27, i32* %11)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @xgbe_calculate_dcb_fifo(%struct.xgbe_prv_data* %39, i32 %40, i32* %11)
  br label %46

42:                                               ; preds = %33, %1
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @xgbe_calculate_equal_fifo(i32 %43, i32 %44, i32* %11)
  br label %46

46:                                               ; preds = %42, %38
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %50 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MTL_Q_RQOMR, align 4
  %57 = load i32, i32* @RQS, align 4
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %11, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %54, i32 %55, i32 %56, i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %68 = call i32 @xgbe_calculate_flow_control_threshold(%struct.xgbe_prv_data* %67, i32* %11)
  %69 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %70 = call i32 @xgbe_config_flow_control_threshold(%struct.xgbe_prv_data* %69)
  %71 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %72 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp ne %struct.TYPE_2__* %73, null
  br i1 %74, label %75, label %122

75:                                               ; preds = %66
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %77 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %122

80:                                               ; preds = %75
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %82 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %122

87:                                               ; preds = %80
  %88 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %89 = load i32, i32* @drv, align 4
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %91 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %94 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_info(%struct.xgbe_prv_data* %88, i32 %89, i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %95)
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %118, %87
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %100 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %97
  %104 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %105 = load i32, i32* @drv, align 4
  %106 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %107 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %11, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 1
  %115 = load i32, i32* @XGMAC_FIFO_UNIT, align 4
  %116 = mul i32 %114, %115
  %117 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_info(%struct.xgbe_prv_data* %104, i32 %105, i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %116)
  br label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %97

121:                                              ; preds = %97
  br label %137

122:                                              ; preds = %80, %75, %66
  %123 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %124 = load i32, i32* @drv, align 4
  %125 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %126 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %129 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds i32, i32* %11, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = add i32 %132, 1
  %134 = load i32, i32* @XGMAC_FIFO_UNIT, align 4
  %135 = mul i32 %133, %134
  %136 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_info(%struct.xgbe_prv_data* %123, i32 %124, i32 %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %135)
  br label %137

137:                                              ; preds = %122, %121
  %138 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %138)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @xgbe_get_rx_fifo_size(%struct.xgbe_prv_data*) #2

declare dso_local i32 @XGMAC_PRIO_QUEUES(i32) #2

declare dso_local i32 @xgbe_set_nonprio_fifos(i32, i32, i32*) #2

declare dso_local i32 @xgbe_calculate_dcb_fifo(%struct.xgbe_prv_data*, i32, i32*) #2

declare dso_local i32 @xgbe_calculate_equal_fifo(i32, i32, i32*) #2

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #2

declare dso_local i32 @xgbe_calculate_flow_control_threshold(%struct.xgbe_prv_data*, i32*) #2

declare dso_local i32 @xgbe_config_flow_control_threshold(%struct.xgbe_prv_data*) #2

declare dso_local i32 @netif_info(%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
