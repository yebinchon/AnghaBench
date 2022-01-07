; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_issuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_issuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@EVSTAT = common dso_local global i32 0, align 4
@EV_CMD = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@PARAM0 = common dso_local global i32 0, align 4
@PARAM1 = common dso_local global i32 0, align 4
@PARAM2 = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Max tries exceeded when issuing command\00", align 1
@COMMAND_BUSY = common dso_local global i32 0, align 4
@EV_CLEARCOMMANDBUSY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RESP0 = common dso_local global i32 0, align 4
@RESP1 = common dso_local global i32 0, align 4
@RESP2 = common dso_local global i32 0, align 4
@CMD_SOFTRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cmd:%x status:%x rsp0:%x rsp1:%x rsp2:%x\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, %struct.TYPE_8__*, %struct.TYPE_7__*)* @issuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @issuecommand(%struct.airo_info* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 600000, i32* %8, align 4
  %9 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %10 = load i32, i32* @EVSTAT, align 4
  %11 = call i32 @IN4500(%struct.airo_info* %9, i32 %10)
  %12 = load i32, i32* @EV_CMD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %17 = load i32, i32* @EVACK, align 4
  %18 = load i32, i32* @EV_CMD, align 4
  %19 = call i32 @OUT4500(%struct.airo_info* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %22 = load i32, i32* @PARAM0, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @OUT4500(%struct.airo_info* %21, i32 %22, i32 %25)
  %27 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %28 = load i32, i32* @PARAM1, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @OUT4500(%struct.airo_info* %27, i32 %28, i32 %31)
  %33 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %34 = load i32, i32* @PARAM2, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @OUT4500(%struct.airo_info* %33, i32 %34, i32 %37)
  %39 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %40 = load i32, i32* @COMMAND, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @OUT4500(%struct.airo_info* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %82, %20
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %51 = load i32, i32* @EVSTAT, align 4
  %52 = call i32 @IN4500(%struct.airo_info* %50, i32 %51)
  %53 = load i32, i32* @EV_CMD, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br label %56

56:                                               ; preds = %49, %45
  %57 = phi i1 [ false, %45 ], [ %55, %49 ]
  br i1 %57, label %58, label %83

58:                                               ; preds = %56
  %59 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %60 = load i32, i32* @COMMAND, align 4
  %61 = call i32 @IN4500(%struct.airo_info* %59, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %68 = load i32, i32* @COMMAND, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @OUT4500(%struct.airo_info* %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %66, %58
  %74 = call i32 (...) @in_atomic()
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 255
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (...) @schedule()
  br label %82

82:                                               ; preds = %80, %76, %73
  br label %45

83:                                               ; preds = %56
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %88 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @airo_print_err(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %94 = load i32, i32* @COMMAND, align 4
  %95 = call i32 @IN4500(%struct.airo_info* %93, i32 %94)
  %96 = load i32, i32* @COMMAND_BUSY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %101 = load i32, i32* @EVACK, align 4
  %102 = load i32, i32* @EV_CLEARCOMMANDBUSY, align 4
  %103 = call i32 @OUT4500(%struct.airo_info* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %86
  %105 = load i32, i32* @ERROR, align 4
  store i32 %105, i32* %4, align 4
  br label %178

106:                                              ; preds = %83
  %107 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %108 = load i32, i32* @STATUS, align 4
  %109 = call i32 @IN4500(%struct.airo_info* %107, i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %113 = load i32, i32* @RESP0, align 4
  %114 = call i32 @IN4500(%struct.airo_info* %112, i32 %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %118 = load i32, i32* @RESP1, align 4
  %119 = call i32 @IN4500(%struct.airo_info* %117, i32 %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %123 = load i32, i32* @RESP2, align 4
  %124 = call i32 @IN4500(%struct.airo_info* %122, i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 65280
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %106
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CMD_SOFTRESET, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %132
  %139 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %140 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i8*, ...) @airo_print_err(i32 %143, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %149, i32 %152, i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %138, %132, %106
  %161 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %162 = load i32, i32* @COMMAND, align 4
  %163 = call i32 @IN4500(%struct.airo_info* %161, i32 %162)
  %164 = load i32, i32* @COMMAND_BUSY, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %169 = load i32, i32* @EVACK, align 4
  %170 = load i32, i32* @EV_CLEARCOMMANDBUSY, align 4
  %171 = call i32 @OUT4500(%struct.airo_info* %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %167, %160
  %173 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %174 = load i32, i32* @EVACK, align 4
  %175 = load i32, i32* @EV_CMD, align 4
  %176 = call i32 @OUT4500(%struct.airo_info* %173, i32 %174, i32 %175)
  %177 = load i32, i32* @SUCCESS, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %172, %104
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @in_atomic(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @airo_print_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
