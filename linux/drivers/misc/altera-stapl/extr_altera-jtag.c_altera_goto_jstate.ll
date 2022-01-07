; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_goto_jstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_goto_jstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.altera_state = type { %struct.altera_jtag }
%struct.altera_jtag = type { i32 }

@ILLEGAL_JTAG_STATE = common dso_local global i32 0, align 4
@IDLE = common dso_local global i32 0, align 4
@DRSHIFT = common dso_local global i32 0, align 4
@DRPAUSE = common dso_local global i32 0, align 4
@IRSHIFT = common dso_local global i32 0, align 4
@IRPAUSE = common dso_local global i32 0, align 4
@TMS_LOW = common dso_local global i32 0, align 4
@TDI_LOW = common dso_local global i32 0, align 4
@IGNORE_TDO = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@TMS_HIGH = common dso_local global i32 0, align 4
@altera_jtag_path_map = common dso_local global i32* null, align 8
@altera_transitions = common dso_local global %struct.TYPE_2__* null, align 8
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_goto_jstate(%struct.altera_state* %0, i32 %1) #0 {
  %3 = alloca %struct.altera_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.altera_jtag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.altera_state* %0, %struct.altera_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.altera_state*, %struct.altera_state** %3, align 8
  %10 = getelementptr inbounds %struct.altera_state, %struct.altera_state* %9, i32 0, i32 0
  store %struct.altera_jtag* %10, %struct.altera_jtag** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %12 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ILLEGAL_JTAG_STATE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.altera_state*, %struct.altera_state** %3, align 8
  %18 = call i32 @altera_jreset_idle(%struct.altera_state* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %21 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IDLE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DRSHIFT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DRPAUSE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IRSHIFT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @IRPAUSE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %37, %33, %29, %25
  %46 = load i32, i32* @TMS_LOW, align 4
  %47 = load i32, i32* @TDI_LOW, align 4
  %48 = load i32, i32* @IGNORE_TDO, align 4
  %49 = call i32 @alt_jtag_io(i32 %46, i32 %47, i32 %48)
  br label %60

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @RESET, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @TMS_HIGH, align 4
  %56 = load i32, i32* @TDI_LOW, align 4
  %57 = load i32, i32* @IGNORE_TDO, align 4
  %58 = call i32 @alt_jtag_io(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %45
  br label %125

61:                                               ; preds = %19
  br label %62

62:                                               ; preds = %121, %61
  %63 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %64 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 9
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi i1 [ false, %62 ], [ %70, %68 ]
  br i1 %72, label %73, label %124

73:                                               ; preds = %71
  %74 = load i32*, i32** @altera_jtag_path_map, align 8
  %75 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %76 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* @TMS_HIGH, align 4
  br label %89

87:                                               ; preds = %73
  %88 = load i32, i32* @TMS_LOW, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @TDI_LOW, align 4
  %93 = load i32, i32* @IGNORE_TDO, align 4
  %94 = call i32 @alt_jtag_io(i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %89
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @altera_transitions, align 8
  %99 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %100 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %108 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %121

109:                                              ; preds = %89
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @altera_transitions, align 8
  %111 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %112 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %120 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %109, %97
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %62

124:                                              ; preds = %71
  br label %125

125:                                              ; preds = %124, %60
  %126 = load %struct.altera_jtag*, %struct.altera_jtag** %5, align 8
  %127 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* @EREMOTEIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i32 @altera_jreset_idle(%struct.altera_state*) #1

declare dso_local i32 @alt_jtag_io(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
