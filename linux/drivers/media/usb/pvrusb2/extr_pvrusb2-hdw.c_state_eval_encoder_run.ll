; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_state_eval_encoder_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_state_eval_encoder_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@TIME_MSEC_ENCODER_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"state_encoder_run\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @state_eval_encoder_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_eval_encoder_run(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %5 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %10 = call i32 @state_check_disable_encoder_run(%struct.pvr2_hdw* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %64

13:                                               ; preds = %8
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %15 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 1
  %21 = call i32 @del_timer_sync(%struct.TYPE_3__* %20)
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %23 = call i64 @pvr2_encoder_stop(%struct.pvr2_hdw* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %64

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %29 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %32 = call i32 @state_check_enable_encoder_run(%struct.pvr2_hdw* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %64

35:                                               ; preds = %30
  %36 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %37 = call i64 @pvr2_encoder_start(%struct.pvr2_hdw* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %64

40:                                               ; preds = %35
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %44 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i32, i32* @TIME_MSEC_ENCODER_OK, align 4
  %50 = call i64 @msecs_to_jiffies(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %53 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 1
  %57 = call i32 @add_timer(%struct.TYPE_3__* %56)
  br label %58

58:                                               ; preds = %47, %40
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %61 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @trace_stbit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %39, %34, %25, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @state_check_disable_encoder_run(%struct.pvr2_hdw*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_3__*) #1

declare dso_local i64 @pvr2_encoder_stop(%struct.pvr2_hdw*) #1

declare dso_local i32 @state_check_enable_encoder_run(%struct.pvr2_hdw*) #1

declare dso_local i64 @pvr2_encoder_start(%struct.pvr2_hdw*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @trace_stbit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
