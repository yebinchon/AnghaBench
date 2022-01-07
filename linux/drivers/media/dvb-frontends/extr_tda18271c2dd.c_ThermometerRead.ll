; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_ThermometerRead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_ThermometerRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda_state = type { i32* }

@TM = common dso_local global i64 0, align 8
@m_Thermometer_Map_2 = common dso_local global i32* null, align 8
@m_Thermometer_Map_1 = common dso_local global i32* null, align 8
@EP4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda_state*, i32*)* @ThermometerRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ThermometerRead(%struct.tda_state* %0, i32* %1) #0 {
  %3 = alloca %struct.tda_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  store %struct.tda_state* %0, %struct.tda_state** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %2
  %8 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %9 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @TM, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, 16
  store i32 %14, i32* %12, align 4
  %15 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %16 = load i64, i64* @TM, align 8
  %17 = call i32 @UpdateReg(%struct.tda_state* %15, i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  br label %130

21:                                               ; preds = %7
  %22 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %24 = call i32 @Read(%struct.tda_state* %22, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %130

28:                                               ; preds = %21
  %29 = load i64, i64* @TM, align 8
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i64, i64* @TM, align 8
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %52, label %40

40:                                               ; preds = %34, %28
  %41 = load i64, i64* @TM, align 8
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load i64, i64* @TM, align 8
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %46, %34
  %53 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %54 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @TM, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, 32
  store i32 %59, i32* %57, align 4
  %60 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %61 = load i64, i64* @TM, align 8
  %62 = call i32 @UpdateReg(%struct.tda_state* %60, i64 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %130

66:                                               ; preds = %52
  %67 = call i32 @msleep(i32 10)
  %68 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %70 = call i32 @Read(%struct.tda_state* %68, i32* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %130

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %46, %40
  %76 = load i64, i64* @TM, align 8
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i32*, i32** @m_Thermometer_Map_2, align 8
  %83 = load i64, i64* @TM, align 8
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 15
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* %88, align 4
  br label %99

90:                                               ; preds = %75
  %91 = load i32*, i32** @m_Thermometer_Map_1, align 8
  %92 = load i64, i64* @TM, align 8
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 15
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  br label %99

99:                                               ; preds = %90, %81
  %100 = phi i32 [ %89, %81 ], [ %98, %90 ]
  %101 = load i32*, i32** %4, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %103 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @TM, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, -17
  store i32 %108, i32* %106, align 4
  %109 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %110 = load i64, i64* @TM, align 8
  %111 = call i32 @UpdateReg(%struct.tda_state* %109, i64 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %99
  br label %130

115:                                              ; preds = %99
  %116 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %117 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @EP4, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, -4
  store i32 %122, i32* %120, align 4
  %123 = load %struct.tda_state*, %struct.tda_state** %3, align 8
  %124 = load i64, i64* @EP4, align 8
  %125 = call i32 @UpdateReg(%struct.tda_state* %123, i64 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %130

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %128, %114, %73, %65, %27, %20
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @UpdateReg(%struct.tda_state*, i64) #1

declare dso_local i32 @Read(%struct.tda_state*, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
