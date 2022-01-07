; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_fe_refresh_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_fe_refresh_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9005_fe_state* }
%struct.af9005_fe_state = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"REFRESH STATE\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"get_statistic_failed\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9005_fe_refresh_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_fe_refresh_state(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.af9005_fe_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %5, align 8
  store %struct.af9005_fe_state* %6, %struct.af9005_fe_state** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %3, align 8
  %9 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @time_after(i64 %7, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = call i32 @deb_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %16 = call i64 @af9005_get_statistic(%struct.dvb_frontend* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 250, %22
  %24 = sdiv i32 %23, 1000
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %3, align 8
  %28 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %20, %1
  ret i32 0
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i64 @af9005_get_statistic(%struct.dvb_frontend*) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
