; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_set_scart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_set_scart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i32, i64 }

@scarts = common dso_local global i32** null, align 8
@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"scart switch: %s => %d (ACB=0x%04x)\0A\00", align 1
@scart_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msp_set_scart(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msp_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call i32 @i2c_get_clientdata(%struct.i2c_client* %8)
  %10 = call %struct.msp_state* @to_state(i32 %9)
  store %struct.msp_state* %10, %struct.msp_state** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %13 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %65

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 7
  br i1 %18, label %19, label %65

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 2
  br i1 %24, label %25, label %65

25:                                               ; preds = %22
  %26 = load i32**, i32*** @scarts, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 -1, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %97

38:                                               ; preds = %25
  %39 = load i32**, i32*** @scarts, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %48 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32**, i32*** @scarts, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %62 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %68

65:                                               ; preds = %22, %19, %16, %3
  %66 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %67 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %66, i32 0, i32 1
  store i32 3936, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %38
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* @msp_debug, align 4
  %72 = load i32*, i32** @scart_names, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %79 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_dbg_lvl(i32* %70, i32 1, i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %84 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @msp_write_dsp(%struct.i2c_client* %82, i32 19, i32 %85)
  %87 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %88 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %68
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load %struct.msp_state*, %struct.msp_state** %7, align 8
  %94 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @msp_write_dem(%struct.i2c_client* %92, i32 64, i32 %95)
  br label %97

97:                                               ; preds = %37, %91, %68
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
