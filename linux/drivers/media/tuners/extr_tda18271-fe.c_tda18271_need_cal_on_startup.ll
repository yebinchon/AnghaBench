; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_need_cal_on_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_need_cal_on_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda18271_config = type { i64 }

@tda18271_cal_on_startup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda18271_config*)* @tda18271_need_cal_on_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_need_cal_on_startup(%struct.tda18271_config* %0) #0 {
  %2 = alloca %struct.tda18271_config*, align 8
  store %struct.tda18271_config* %0, %struct.tda18271_config** %2, align 8
  %3 = load i32, i32* @tda18271_cal_on_startup, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.tda18271_config*, %struct.tda18271_config** %2, align 8
  %7 = icmp ne %struct.tda18271_config* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load %struct.tda18271_config*, %struct.tda18271_config** %2, align 8
  %10 = getelementptr inbounds %struct.tda18271_config, %struct.tda18271_config* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i1 [ false, %5 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @tda18271_cal_on_startup, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %15, %13 ], [ %17, %16 ]
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
