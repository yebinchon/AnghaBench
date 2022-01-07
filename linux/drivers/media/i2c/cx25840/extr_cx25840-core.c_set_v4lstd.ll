; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_set_v4lstd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_set_v4lstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32 }

@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"changing video std to fmt %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @set_v4lstd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_v4lstd(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call i32 @i2c_get_clientdata(%struct.i2c_client* %6)
  %8 = call %struct.cx25840_state* @to_state(i32 %7)
  store %struct.cx25840_state* %8, %struct.cx25840_state** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %10 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %17 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 3, i32* %4, align 4
  br label %81

22:                                               ; preds = %15
  %23 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %24 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  store i32 5, i32* %4, align 4
  br label %80

29:                                               ; preds = %22
  %30 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %31 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 6, i32* %4, align 4
  br label %79

36:                                               ; preds = %29
  %37 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %38 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 7, i32* %4, align 4
  br label %78

43:                                               ; preds = %36
  %44 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %45 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 8, i32* %4, align 4
  br label %77

50:                                               ; preds = %43
  %51 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %52 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @V4L2_STD_NTSC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %76

58:                                               ; preds = %50
  %59 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %60 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @V4L2_STD_PAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 4, i32* %4, align 4
  br label %75

66:                                               ; preds = %58
  %67 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %68 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @V4L2_STD_SECAM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 12, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %66
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %49
  br label %78

78:                                               ; preds = %77, %42
  br label %79

79:                                               ; preds = %78, %35
  br label %80

80:                                               ; preds = %79, %28
  br label %81

81:                                               ; preds = %80, %21
  br label %82

82:                                               ; preds = %81, %14
  %83 = load i32, i32* @cx25840_debug, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @v4l_dbg(i32 1, i32 %83, %struct.i2c_client* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = icmp sge i32 %87, 4
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %94 = call i32 @cx25840_and_or(%struct.i2c_client* %93, i32 1024, i32 -16, i32 1)
  %95 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %96 = call i32 @cx25840_and_or(%struct.i2c_client* %95, i32 1147, i32 -7, i32 0)
  br label %97

97:                                               ; preds = %92, %89, %82
  %98 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @cx25840_and_or(%struct.i2c_client* %98, i32 1024, i32 -16, i32 %99)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @cx25840_and_or(%struct.i2c_client* %101, i32 1027, i32 -4, i32 %102)
  %104 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %105 = call i64 @is_cx23888(%struct.cx25840_state* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %109 = call i32 @cx23888_std_setup(%struct.i2c_client* %108)
  br label %113

110:                                              ; preds = %97
  %111 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %112 = call i32 @cx25840_std_setup(%struct.i2c_client* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %115 = call i32 @is_cx2583x(%struct.cx25840_state* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %119 = call i32 @input_change(%struct.i2c_client* %118)
  br label %120

120:                                              ; preds = %117, %113
  ret i32 0
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i64 @is_cx23888(%struct.cx25840_state*) #1

declare dso_local i32 @cx23888_std_setup(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_std_setup(%struct.i2c_client*) #1

declare dso_local i32 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i32 @input_change(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
