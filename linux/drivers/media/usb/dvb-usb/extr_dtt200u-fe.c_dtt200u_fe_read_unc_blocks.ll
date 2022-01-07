; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_read_unc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_read_unc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtt200u_fe_state* }
%struct.dtt200u_fe_state = type { i32*, i32, i32 }

@GET_RS_UNCOR_BLK_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @dtt200u_fe_read_unc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtt200u_fe_read_unc_blocks(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dtt200u_fe_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %8, align 8
  store %struct.dtt200u_fe_state* %9, %struct.dtt200u_fe_state** %5, align 8
  %10 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %5, align 8
  %11 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @GET_RS_UNCOR_BLK_CNT, align 4
  %14 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %5, align 8
  %15 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %5, align 8
  %19 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %5, align 8
  %22 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %5, align 8
  %25 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dvb_usb_generic_rw(i32 %20, i32* %23, i32 1, i32* %26, i32 2, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %5, align 8
  %32 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %5, align 8
  %38 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %36, %41
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %2
  %45 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %5, align 8
  %46 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
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
