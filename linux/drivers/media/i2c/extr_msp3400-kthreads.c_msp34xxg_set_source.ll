; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp34xxg_set_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp34xxg_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i64 }

@MSP_DSP_IN_TUNER = common dso_local global i32 0, align 4
@MSP_DSP_IN_MAIN_AVC = common dso_local global i32 0, align 4
@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"set source to %d (0x%x) for output %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, i32)* @msp34xxg_set_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp34xxg_set_source(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msp_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call i32 @i2c_get_clientdata(%struct.i2c_client* %10)
  %12 = call %struct.msp_state* @to_state(i32 %11)
  store %struct.msp_state* %12, %struct.msp_state** %7, align 8
  %13 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %14 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %21 [
    i32 129, label %16
    i32 130, label %17
    i32 131, label %18
    i32 132, label %19
    i32 128, label %20
  ]

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 48, i32* %9, align 4
  br label %22

17:                                               ; preds = %3
  store i32 4, i32* %8, align 4
  store i32 16, i32* %9, align 4
  br label %22

18:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  store i32 32, i32* %9, align 4
  br label %22

19:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %3, %20
  store i32 3, i32* %8, align 4
  store i32 32, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %19, %18, %17, %16
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MSP_DSP_IN_TUNER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %28, 32
  store i32 %29, i32* %8, align 4
  br label %51

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MSP_DSP_IN_MAIN_AVC, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %36 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = shl i32 %41, 8
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  br label %50

45:                                               ; preds = %34, %30
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %39
  br label %51

51:                                               ; preds = %50, %26
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* @msp_debug, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_dbg_lvl(i32* %53, i32 1, i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @msp_write_dsp(%struct.i2c_client* %59, i32 %60, i32 %61)
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
