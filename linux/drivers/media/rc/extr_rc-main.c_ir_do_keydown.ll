; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_do_keydown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_do_keydown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, i64, i64, i64, %struct.TYPE_4__*, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64* }
%struct.lirc_scancode = type { i64, i32, i64, i32 }

@LIRC_SCANCODE_FLAG_TOGGLE = common dso_local global i32 0, align 4
@RC_PROTO_BIT_CEC = common dso_local global i64 0, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"%s: key down event, key 0x%04x, protocol 0x%04x, scancode 0x%08x\0A\00", align 1
@led_feedback = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@REP_PERIOD = common dso_local global i64 0, align 8
@REP_DELAY = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*, i32, i64, i64, i64)* @ir_do_keydown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_do_keydown(%struct.rc_dev* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lirc_scancode, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %14 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %5
  %18 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %19 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %25 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %32, %33
  br label %35

35:                                               ; preds = %29, %23, %17, %5
  %36 = phi i1 [ true, %23 ], [ true, %17 ], [ true, %5 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %12, i32 0, i32 0
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %12, i32 0, i32 1
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %12, i32 0, i32 2
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %12, i32 0, i32 3
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @LIRC_SCANCODE_FLAG_TOGGLE, align 4
  br label %50

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  store i32 %51, i32* %44, align 8
  %52 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %53 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RC_PROTO_BIT_CEC, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %59 = call i32 @ir_lirc_scancode_event(%struct.rc_dev* %58, %struct.lirc_scancode* %12)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %65 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %70 = call i32 @ir_do_keyup(%struct.rc_dev* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %63, %60
  %72 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %73 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* @EV_MSC, align 4
  %76 = load i64, i64* @MSC_SCAN, align 8
  %77 = load i64, i64* %8, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @input_event(%struct.TYPE_4__* %74, i32 %75, i64 %76, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %82 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %85 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %88 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %91 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %90, i32 0, i32 9
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %71
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @KEY_RESERVED, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %100 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %102 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %101, i32 0, i32 8
  %103 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %104 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %105, i64 %106, i32 %107, i64 %108)
  %110 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %111 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %110, i32 0, i32 5
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @input_report_key(%struct.TYPE_4__* %112, i64 %113, i32 1)
  %115 = load i32, i32* @led_feedback, align 4
  %116 = load i32, i32* @LED_FULL, align 4
  %117 = call i32 @led_trigger_event(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %98, %94, %71
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %177, label %121

121:                                              ; preds = %118
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* @KEY_RESERVED, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %177

125:                                              ; preds = %121
  %126 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %127 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RC_PROTO_BIT_CEC, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %177

131:                                              ; preds = %125
  %132 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %133 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %132, i32 0, i32 6
  %134 = call i32 @timer_pending(i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %177, label %136

136:                                              ; preds = %131
  %137 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %138 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %137, i32 0, i32 5
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* @REP_PERIOD, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %177

146:                                              ; preds = %136
  %147 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %148 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %147, i32 0, i32 5
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = load i64, i64* @REP_DELAY, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %177, label %156

156:                                              ; preds = %146
  %157 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %158 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %157, i32 0, i32 5
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* @EV_KEY, align 4
  %161 = load i64, i64* %9, align 8
  %162 = call i32 @input_event(%struct.TYPE_4__* %159, i32 %160, i64 %161, i32 2)
  %163 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %164 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %163, i32 0, i32 6
  %165 = load i64, i64* @jiffies, align 8
  %166 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %167 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %166, i32 0, i32 5
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* @REP_PERIOD, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @msecs_to_jiffies(i64 %173)
  %175 = add nsw i64 %165, %174
  %176 = call i32 @mod_timer(i32* %164, i64 %175)
  br label %177

177:                                              ; preds = %156, %146, %136, %131, %125, %121, %118
  %178 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %179 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %178, i32 0, i32 5
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = call i32 @input_sync(%struct.TYPE_4__* %180)
  ret void
}

declare dso_local i32 @ir_lirc_scancode_event(%struct.rc_dev*, %struct.lirc_scancode*) #1

declare dso_local i32 @ir_do_keyup(%struct.rc_dev*, i32) #1

declare dso_local i32 @input_event(%struct.TYPE_4__*, i32, i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32, i64) #1

declare dso_local i32 @input_report_key(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @input_sync(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
