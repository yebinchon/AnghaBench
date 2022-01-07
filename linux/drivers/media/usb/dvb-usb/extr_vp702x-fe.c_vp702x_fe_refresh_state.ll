; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x-fe.c_vp702x_fe_refresh_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x-fe.c_vp702x_fe_refresh_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vp702x_fe_state = type { i32, i64, i8*, %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { %struct.vp702x_device_state* }
%struct.vp702x_device_state = type { i8**, i32 }

@jiffies = common dso_local global i64 0, align 8
@READ_STATUS = common dso_local global i32 0, align 4
@READ_TUNER_REG_REQ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vp702x_fe_state*)* @vp702x_fe_refresh_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_fe_refresh_state(%struct.vp702x_fe_state* %0) #0 {
  %2 = alloca %struct.vp702x_fe_state*, align 8
  %3 = alloca %struct.vp702x_device_state*, align 8
  %4 = alloca i8**, align 8
  store %struct.vp702x_fe_state* %0, %struct.vp702x_fe_state** %2, align 8
  %5 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %6 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %8, align 8
  store %struct.vp702x_device_state* %9, %struct.vp702x_device_state** %3, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %12 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @time_after(i64 %10, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %1
  %17 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %3, align 8
  %18 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %3, align 8
  %21 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  store i8** %22, i8*** %4, align 8
  %23 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %24 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* @READ_STATUS, align 4
  %27 = load i8**, i8*** %4, align 8
  %28 = call i32 @vp702x_usb_in_op(%struct.TYPE_2__* %25, i32 %26, i32 0, i32 0, i8** %27, i32 10)
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 4
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %33 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %35 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* @READ_TUNER_REG_REQ, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = call i32 @vp702x_usb_in_op(%struct.TYPE_2__* %36, i32 %37, i32 17, i32 0, i8** %38, i32 1)
  %40 = load i8**, i8*** %4, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %44 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %46 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* @READ_TUNER_REG_REQ, align 4
  %49 = load i8**, i8*** %4, align 8
  %50 = call i32 @vp702x_usb_in_op(%struct.TYPE_2__* %47, i32 %48, i32 21, i32 0, i8** %49, i32 1)
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %55 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %3, align 8
  %57 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i64, i64* @jiffies, align 8
  %60 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %61 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @HZ, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sdiv i32 %64, 1000
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %59, %66
  %68 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %69 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %16, %1
  ret i32 0
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vp702x_usb_in_op(%struct.TYPE_2__*, i32, i32, i32, i8**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
