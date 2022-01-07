; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_vconfig_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_vconfig_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32 }

@CX25840_VCONFIG_FMT_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_RES_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_RES_10BIT = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VBIRAW_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VBIRAW_ENABLED = common dso_local global i32 0, align 4
@CX25840_VCONFIG_ANCDATA_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_ANCDATA_ENABLED = common dso_local global i32 0, align 4
@CX25840_VCONFIG_TASKBIT_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_TASKBIT_ONE = common dso_local global i32 0, align 4
@CX25840_VCONFIG_ACTIVE_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_ACTIVE_HORIZONTAL = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VALID_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VALID_ANDACTIVE = common dso_local global i32 0, align 4
@CX25840_VCONFIG_HRESETW_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_HRESETW_PIXCLK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_CLKGATE_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_DCMODE_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_DCMODE_BYTES = common dso_local global i32 0, align 4
@CX25840_VCONFIG_IDID0S_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_IDID0S_LINECNT = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VIPCLAMP_MASK = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VIPCLAMP_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @cx25840_vconfig_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25840_vconfig_apply(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call i32 @i2c_get_clientdata(%struct.i2c_client* %6)
  %8 = call %struct.cx25840_state* @to_state(i32 %7)
  store %struct.cx25840_state* %8, %struct.cx25840_state** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add i32 1028, %14
  %16 = call i32 @cx25840_read(%struct.i2c_client* %13, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %25 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CX25840_VCONFIG_FMT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -4
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %36 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CX25840_VCONFIG_FMT_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %53 [
    i32 130, label %40
    i32 129, label %44
    i32 128, label %48
    i32 131, label %52
  ]

40:                                               ; preds = %34
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %54

44:                                               ; preds = %34
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, 2
  store i32 %47, i32* %45, align 4
  br label %54

48:                                               ; preds = %34
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 3
  store i32 %51, i32* %49, align 4
  br label %54

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %34, %52
  br label %54

54:                                               ; preds = %53, %48, %44, %40
  %55 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %56 = load i32, i32* @CX25840_VCONFIG_RES_MASK, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %58 = load i32, i32* @CX25840_VCONFIG_RES_10BIT, align 4
  %59 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %55, i32 %56, i32* %57, i32 0, i32 2, i32 %58)
  %60 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %61 = load i32, i32* @CX25840_VCONFIG_VBIRAW_MASK, align 4
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %63 = load i32, i32* @CX25840_VCONFIG_VBIRAW_ENABLED, align 4
  %64 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %60, i32 %61, i32* %62, i32 0, i32 3, i32 %63)
  %65 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %66 = load i32, i32* @CX25840_VCONFIG_ANCDATA_MASK, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %68 = load i32, i32* @CX25840_VCONFIG_ANCDATA_ENABLED, align 4
  %69 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %65, i32 %66, i32* %67, i32 0, i32 4, i32 %68)
  %70 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %71 = load i32, i32* @CX25840_VCONFIG_TASKBIT_MASK, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %73 = load i32, i32* @CX25840_VCONFIG_TASKBIT_ONE, align 4
  %74 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %70, i32 %71, i32* %72, i32 0, i32 5, i32 %73)
  %75 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %76 = load i32, i32* @CX25840_VCONFIG_ACTIVE_MASK, align 4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %78 = load i32, i32* @CX25840_VCONFIG_ACTIVE_HORIZONTAL, align 4
  %79 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %75, i32 %76, i32* %77, i32 1, i32 2, i32 %78)
  %80 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %81 = load i32, i32* @CX25840_VCONFIG_VALID_MASK, align 4
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %83 = load i32, i32* @CX25840_VCONFIG_VALID_ANDACTIVE, align 4
  %84 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %80, i32 %81, i32* %82, i32 1, i32 3, i32 %83)
  %85 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %86 = load i32, i32* @CX25840_VCONFIG_HRESETW_MASK, align 4
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %88 = load i32, i32* @CX25840_VCONFIG_HRESETW_PIXCLK, align 4
  %89 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %85, i32 %86, i32* %87, i32 1, i32 4, i32 %88)
  %90 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %91 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CX25840_VCONFIG_CLKGATE_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %54
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, -193
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %96, %54
  %101 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %102 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CX25840_VCONFIG_CLKGATE_MASK, align 4
  %105 = and i32 %103, %104
  switch i32 %105, label %115 [
    i32 133, label %106
    i32 132, label %110
    i32 134, label %114
  ]

106:                                              ; preds = %100
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, 2
  store i32 %109, i32* %107, align 4
  br label %116

110:                                              ; preds = %100
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, 3
  store i32 %113, i32* %111, align 4
  br label %116

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %100, %114
  br label %116

116:                                              ; preds = %115, %110, %106
  %117 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %118 = load i32, i32* @CX25840_VCONFIG_DCMODE_MASK, align 4
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %120 = load i32, i32* @CX25840_VCONFIG_DCMODE_BYTES, align 4
  %121 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %117, i32 %118, i32* %119, i32 2, i32 0, i32 %120)
  %122 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %123 = load i32, i32* @CX25840_VCONFIG_IDID0S_MASK, align 4
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %125 = load i32, i32* @CX25840_VCONFIG_IDID0S_LINECNT, align 4
  %126 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %122, i32 %123, i32* %124, i32 2, i32 1, i32 %125)
  %127 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %128 = load i32, i32* @CX25840_VCONFIG_VIPCLAMP_MASK, align 4
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %130 = load i32, i32* @CX25840_VCONFIG_VIPCLAMP_ENABLED, align 4
  %131 = call i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state* %127, i32 %128, i32* %129, i32 2, i32 4, i32 %130)
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %144, %116
  %133 = load i32, i32* %5, align 4
  %134 = icmp ult i32 %133, 3
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %137 = load i32, i32* %5, align 4
  %138 = add i32 1028, %137
  %139 = load i32, i32* %5, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @cx25840_write(%struct.i2c_client* %136, i32 %138, i32 %142)
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %5, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %132

147:                                              ; preds = %132
  ret void
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @CX25840_VCONFIG_SET_BIT(%struct.cx25840_state*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
