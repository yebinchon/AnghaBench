; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c_op* }
%struct.xgbe_i2c_op = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to disable i2c master\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to enable i2c master\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"i2c operation timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IC_TX_ABRT_7B_ADDR_NOACK = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@IC_TX_ABRT_ARB_LOST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, %struct.xgbe_i2c_op*)* @xgbe_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_i2c_xfer(%struct.xgbe_prv_data* %0, %struct.xgbe_i2c_op* %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_i2c_op*, align 8
  %5 = alloca %struct.xgbe_i2c_op_state*, align 8
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store %struct.xgbe_i2c_op* %1, %struct.xgbe_i2c_op** %4, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.xgbe_i2c_op_state* %9, %struct.xgbe_i2c_op_state** %5, align 8
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 2
  %15 = call i32 @reinit_completion(i32* %14)
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %17 = call i32 @xgbe_i2c_disable(%struct.xgbe_prv_data* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netdev_err(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %116

25:                                               ; preds = %2
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %27 = load %struct.xgbe_i2c_op*, %struct.xgbe_i2c_op** %4, align 8
  %28 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @xgbe_i2c_set_target(%struct.xgbe_prv_data* %26, i32 %29)
  %31 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %32 = call i32 @memset(%struct.xgbe_i2c_op_state* %31, i32 0, i32 32)
  %33 = load %struct.xgbe_i2c_op*, %struct.xgbe_i2c_op** %4, align 8
  %34 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %35 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %34, i32 0, i32 6
  store %struct.xgbe_i2c_op* %33, %struct.xgbe_i2c_op** %35, align 8
  %36 = load %struct.xgbe_i2c_op*, %struct.xgbe_i2c_op** %4, align 8
  %37 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %40 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.xgbe_i2c_op*, %struct.xgbe_i2c_op** %4, align 8
  %42 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %45 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.xgbe_i2c_op*, %struct.xgbe_i2c_op** %4, align 8
  %47 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %50 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.xgbe_i2c_op*, %struct.xgbe_i2c_op** %4, align 8
  %52 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %55 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %57 = call i32 @xgbe_i2c_clear_all_interrupts(%struct.xgbe_prv_data* %56)
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %59 = call i32 @xgbe_i2c_enable(%struct.xgbe_prv_data* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %25
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %64 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @netdev_err(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %116

67:                                               ; preds = %25
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %69 = call i32 @xgbe_i2c_enable_interrupts(%struct.xgbe_prv_data* %68)
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %71 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %70, i32 0, i32 2
  %72 = load i32, i32* @HZ, align 4
  %73 = call i32 @wait_for_completion_timeout(i32* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %67
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %77 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netdev_err(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %111

82:                                               ; preds = %67
  %83 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %84 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %82
  %89 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %90 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IC_TX_ABRT_7B_ADDR_NOACK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @ENOTCONN, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %109

98:                                               ; preds = %88
  %99 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %100 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IC_TX_ABRT_ARB_LOST, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @EAGAIN, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %98
  br label %109

109:                                              ; preds = %108, %95
  br label %110

110:                                              ; preds = %109, %82
  br label %111

111:                                              ; preds = %110, %75
  %112 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %113 = call i32 @xgbe_i2c_disable_interrupts(%struct.xgbe_prv_data* %112)
  %114 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %115 = call i32 @xgbe_i2c_disable(%struct.xgbe_prv_data* %114)
  br label %116

116:                                              ; preds = %111, %62, %20
  %117 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %118 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @xgbe_i2c_disable(%struct.xgbe_prv_data*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @xgbe_i2c_set_target(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @memset(%struct.xgbe_i2c_op_state*, i32, i32) #1

declare dso_local i32 @xgbe_i2c_clear_all_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_i2c_enable(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_i2c_enable_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @xgbe_i2c_disable_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
