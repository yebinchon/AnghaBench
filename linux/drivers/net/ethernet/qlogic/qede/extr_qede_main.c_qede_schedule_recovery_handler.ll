; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_schedule_recovery_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_schedule_recovery_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i64, i32, i32 }

@QEDE_STATE_RECOVERY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"Avoid scheduling a recovery handling since already in recovery state\0A\00", align 1
@QEDE_SP_RECOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Scheduled a recovery handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qede_schedule_recovery_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_schedule_recovery_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.qede_dev*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.qede_dev*
  store %struct.qede_dev* %5, %struct.qede_dev** %3, align 8
  %6 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %7 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QEDE_STATE_RECOVERY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %13 = call i32 @DP_NOTICE(%struct.qede_dev* %12, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %24

14:                                               ; preds = %1
  %15 = load i32, i32* @QEDE_SP_RECOVERY, align 4
  %16 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %16, i32 0, i32 2
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %20 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %19, i32 0, i32 1
  %21 = call i32 @schedule_delayed_work(i32* %20, i32 0)
  %22 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %23 = call i32 @DP_INFO(%struct.qede_dev* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
