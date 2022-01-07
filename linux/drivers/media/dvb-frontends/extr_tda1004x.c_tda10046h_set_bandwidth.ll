; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda1004x.c_tda10046h_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda1004x.c_tda10046h_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1004x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@tda10046h_set_bandwidth.bandwidth_6mhz_53M = internal global [5 x i32] [i32 123, i32 46, i32 17, i32 240, i32 210], align 16
@tda10046h_set_bandwidth.bandwidth_7mhz_53M = internal global [5 x i32] [i32 106, i32 2, i32 106, i32 67, i32 159], align 16
@tda10046h_set_bandwidth.bandwidth_8mhz_53M = internal global [5 x i32] [i32 92, i32 50, i32 194, i32 150, i32 109], align 16
@tda10046h_set_bandwidth.bandwidth_6mhz_48M = internal global [5 x i32] [i32 112, i32 2, i32 73, i32 36, i32 146], align 16
@tda10046h_set_bandwidth.bandwidth_7mhz_48M = internal global [5 x i32] [i32 96, i32 2, i32 170, i32 170, i32 171], align 16
@tda10046h_set_bandwidth.bandwidth_8mhz_48M = internal global [5 x i32] [i32 84, i32 3, i32 12, i32 48, i32 195], align 16
@TDA10046_FREQ_045 = common dso_local global i64 0, align 8
@TDA10046_FREQ_052 = common dso_local global i64 0, align 8
@TDA10046H_TIME_WREF1 = common dso_local global i32 0, align 4
@TDA10046H_FREQ_PHY2_MSB = common dso_local global i32 0, align 4
@TDA10046H_FREQ_PHY2_LSB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda1004x_state*, i32)* @tda10046h_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10046h_set_bandwidth(%struct.tda1004x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda1004x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tda1004x_state* %0, %struct.tda1004x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %8 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TDA10046_FREQ_045, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %16 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TDA10046_FREQ_052, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %2
  store i32 0, i32* %6, align 4
  br label %24

23:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %107 [
    i32 6000000, label %26
    i32 7000000, label %53
    i32 8000000, label %80
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %31 = load i32, i32* @TDA10046H_TIME_WREF1, align 4
  %32 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %30, i32 %31, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @tda10046h_set_bandwidth.bandwidth_6mhz_53M, i64 0, i64 0), i32 20)
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %35 = load i32, i32* @TDA10046H_TIME_WREF1, align 4
  %36 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %34, i32 %35, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @tda10046h_set_bandwidth.bandwidth_6mhz_48M, i64 0, i64 0), i32 20)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %39 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TDA10046_FREQ_045, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %47 = load i32, i32* @TDA10046H_FREQ_PHY2_MSB, align 4
  %48 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %46, i32 %47, i32 10)
  %49 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %50 = load i32, i32* @TDA10046H_FREQ_PHY2_LSB, align 4
  %51 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %49, i32 %50, i32 171)
  br label %52

52:                                               ; preds = %45, %37
  br label %110

53:                                               ; preds = %24
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %58 = load i32, i32* @TDA10046H_TIME_WREF1, align 4
  %59 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %57, i32 %58, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @tda10046h_set_bandwidth.bandwidth_7mhz_53M, i64 0, i64 0), i32 20)
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %62 = load i32, i32* @TDA10046H_TIME_WREF1, align 4
  %63 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %61, i32 %62, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @tda10046h_set_bandwidth.bandwidth_7mhz_48M, i64 0, i64 0), i32 20)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %66 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TDA10046_FREQ_045, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %74 = load i32, i32* @TDA10046H_FREQ_PHY2_MSB, align 4
  %75 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %73, i32 %74, i32 12)
  %76 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %77 = load i32, i32* @TDA10046H_FREQ_PHY2_LSB, align 4
  %78 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %72, %64
  br label %110

80:                                               ; preds = %24
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %85 = load i32, i32* @TDA10046H_TIME_WREF1, align 4
  %86 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %84, i32 %85, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @tda10046h_set_bandwidth.bandwidth_8mhz_53M, i64 0, i64 0), i32 20)
  br label %91

87:                                               ; preds = %80
  %88 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %89 = load i32, i32* @TDA10046H_TIME_WREF1, align 4
  %90 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %88, i32 %89, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @tda10046h_set_bandwidth.bandwidth_8mhz_48M, i64 0, i64 0), i32 20)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %93 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TDA10046_FREQ_045, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %101 = load i32, i32* @TDA10046H_FREQ_PHY2_MSB, align 4
  %102 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %100, i32 %101, i32 13)
  %103 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %104 = load i32, i32* @TDA10046H_FREQ_PHY2_LSB, align 4
  %105 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %103, i32 %104, i32 85)
  br label %106

106:                                              ; preds = %99, %91
  br label %110

107:                                              ; preds = %24
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %111

110:                                              ; preds = %106, %79, %52
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @tda1004x_write_buf(%struct.tda1004x_state*, i32, i32*, i32) #1

declare dso_local i32 @tda1004x_write_byteI(%struct.tda1004x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
