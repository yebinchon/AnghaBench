; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_repeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.lirc_scancode = type { i32, i32, i32, i32 }

@LIRC_SCANCODE_FLAG_REPEAT = common dso_local global i32 0, align 4
@LIRC_SCANCODE_FLAG_TOGGLE = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@RC_PROTO_BIT_CEC = common dso_local global i64 0, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc_repeat(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lirc_scancode, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %6 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 10
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @nsecs_to_jiffies(i32 %8)
  %10 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @repeat_period(i32 %12)
  %14 = call i32 @msecs_to_jiffies(i32 %13)
  %15 = add i32 %9, %14
  store i32 %15, i32* %4, align 4
  %16 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %5, i32 0, i32 0
  %17 = load i32, i32* @LIRC_SCANCODE_FLAG_REPEAT, align 4
  %18 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %19 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @LIRC_SCANCODE_FLAG_TOGGLE, align 4
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %17, %26
  store i32 %27, i32* %16, align 4
  %28 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %5, i32 0, i32 1
  %29 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %30 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %35 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @KEY_RESERVED, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %36, %33 ], [ %38, %37 ]
  store i32 %40, i32* %28, align 4
  %41 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %5, i32 0, i32 2
  %42 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %43 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %41, align 4
  %45 = getelementptr inbounds %struct.lirc_scancode, %struct.lirc_scancode* %5, i32 0, i32 3
  %46 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %47 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %45, align 4
  %49 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %50 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RC_PROTO_BIT_CEC, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %56 = call i32 @ir_lirc_scancode_event(%struct.rc_dev* %55, %struct.lirc_scancode* %5)
  br label %57

57:                                               ; preds = %54, %39
  %58 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %59 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %63 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @EV_MSC, align 4
  %66 = load i32, i32* @MSC_SCAN, align 4
  %67 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %68 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @input_event(i32 %64, i32 %65, i32 %66, i32 %69)
  %71 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %72 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @input_sync(i32 %73)
  %75 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %76 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %57
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %85 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %87 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %86, i32 0, i32 3
  %88 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %89 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @mod_timer(i32* %87, i64 %90)
  br label %92

92:                                               ; preds = %79, %57
  %93 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %94 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %93, i32 0, i32 1
  %95 = load i64, i64* %3, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  ret void
}

declare dso_local i32 @nsecs_to_jiffies(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @repeat_period(i32) #1

declare dso_local i32 @ir_lirc_scancode_event(%struct.rc_dev*, %struct.lirc_scancode*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
