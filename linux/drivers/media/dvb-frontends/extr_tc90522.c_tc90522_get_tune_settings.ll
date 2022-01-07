; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522_get_tune_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522_get_tune_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@SYS_ISDBS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @tc90522_get_tune_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc90522_get_tune_settings(%struct.dvb_frontend* %0, %struct.dvb_frontend_tune_settings* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_tune_settings* %1, %struct.dvb_frontend_tune_settings** %4, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SYS_ISDBS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %14, i32 0, i32 0
  store i32 250, i32* %15, align 4
  %16 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %16, i32 0, i32 1
  store i32 1000, i32* %17, align 4
  %18 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %25, i32 0, i32 0
  store i32 400, i32* %26, align 4
  %27 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %27, i32 0, i32 1
  store i32 142857, i32* %28, align 4
  %29 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %13
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
