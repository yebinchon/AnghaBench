; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp3400c_init_data_dem = type { i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i64, i32 }

@msp3400c_init_data = common dso_local global %struct.msp3400c_init_data_dem* null, align 8
@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"set_mode: %d\0A\00", align 1
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msp3400c_set_mode(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msp_state*, align 8
  %6 = alloca %struct.msp3400c_init_data_dem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call i32 @i2c_get_clientdata(%struct.i2c_client* %9)
  %11 = call %struct.msp_state* @to_state(i32 %10)
  store %struct.msp_state* %11, %struct.msp_state** %5, align 8
  %12 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** @msp3400c_init_data, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %12, i64 %14
  store %struct.msp3400c_init_data_dem* %15, %struct.msp3400c_init_data_dem** %6, align 8
  %16 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %17 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 3
  %20 = and i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* @msp_debug, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_dbg_lvl(i32* %22, i32 1, i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %28 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %30 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %31 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %34 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 256, i32 0
  %40 = or i32 %35, %39
  %41 = call i32 @msp_write_dem(%struct.i2c_client* %32, i32 187, i32 %40)
  store i32 5, i32* %8, align 4
  br label %42

42:                                               ; preds = %55, %2
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %48 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @msp_write_dem(%struct.i2c_client* %46, i32 1, i32 %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = call i32 @msp_write_dem(%struct.i2c_client* %59, i32 5, i32 4)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = call i32 @msp_write_dem(%struct.i2c_client* %61, i32 5, i32 64)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = call i32 @msp_write_dem(%struct.i2c_client* %63, i32 5, i32 0)
  store i32 5, i32* %8, align 4
  br label %65

65:                                               ; preds = %78, %58
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %70 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %71 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @msp_write_dem(%struct.i2c_client* %69, i32 5, i32 %76)
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %8, align 4
  br label %65

81:                                               ; preds = %65
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %84 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @msp_write_dem(%struct.i2c_client* %82, i32 131, i32 %85)
  %87 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %88 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %89 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %92 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %87, i32 %90, i32 %93)
  %95 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %96 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %97 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @msp_set_source(%struct.i2c_client* %95, i32 %98)
  %100 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %101 = call i32 @msp_write_dsp(%struct.i2c_client* %100, i32 13, i32 6400)
  %102 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %103 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %104 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @msp_write_dsp(%struct.i2c_client* %102, i32 14, i32 %105)
  %107 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %108 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %81
  %112 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %113 = call i32 @msp_write_dsp(%struct.i2c_client* %112, i32 16, i32 23040)
  br label %114

114:                                              ; preds = %111, %81
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp3400c_set_carrier(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_set_source(%struct.i2c_client*, i32) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
