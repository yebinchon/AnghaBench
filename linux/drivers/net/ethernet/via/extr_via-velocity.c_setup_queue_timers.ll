; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_setup_queue_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_setup_queue_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { i64, i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@REV_ID_VT3216_A0 = common dso_local global i64 0, align 8
@VELOCITY_SPEED_1000 = common dso_local global i32 0, align 4
@VELOCITY_SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.velocity_info*)* @setup_queue_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_queue_timers(%struct.velocity_info* %0) #0 {
  %2 = alloca %struct.velocity_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.velocity_info* %0, %struct.velocity_info** %2, align 8
  %5 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %6 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REV_ID_VT3216_A0, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %11 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %12 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VELOCITY_SPEED_1000, align 4
  %15 = load i32, i32* @VELOCITY_SPEED_100, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %21 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %25 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %10
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %31 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = call i32 @writeb(i32 %29, i32* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %37 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @writeb(i32 %35, i32* %39)
  br label %41

41:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
