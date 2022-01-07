; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtt200u_fe_state* }
%struct.dtt200u_fe_state = type { i32*, i32, i32 }

@GET_TUNE_STATUS = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_TIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @dtt200u_fe_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtt200u_fe_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dtt200u_fe_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %9, align 8
  store %struct.dtt200u_fe_state* %10, %struct.dtt200u_fe_state** %6, align 8
  %11 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %12 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @GET_TUNE_STATUS, align 4
  %15 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %16 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %20 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %23 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %26 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @dvb_usb_generic_rw(i32 %21, i32* %24, i32 1, i32* %27, i32 3, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32*, i32** %5, align 8
  store i32 0, i32* %32, align 4
  %33 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %34 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %64

37:                                               ; preds = %2
  %38 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %39 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %57 [
    i32 1, label %43
    i32 0, label %54
    i32 2, label %58
  ]

43:                                               ; preds = %37
  %44 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %45 = load i32, i32* @FE_HAS_CARRIER, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FE_HAS_VITERBI, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FE_HAS_SYNC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FE_HAS_LOCK, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %60

54:                                               ; preds = %37
  %55 = load i32, i32* @FE_TIMEDOUT, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %60

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %37, %57
  %59 = load i32*, i32** %5, align 8
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %54, %43
  %61 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %62 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %31
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_usb_generic_rw(i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
