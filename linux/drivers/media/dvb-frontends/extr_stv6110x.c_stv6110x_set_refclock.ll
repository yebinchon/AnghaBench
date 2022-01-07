; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110x.c_stv6110x_set_refclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110x.c_stv6110x_set_refclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv6110x_state* }
%struct.stv6110x_state = type { i32* }

@STV6110x_CTRL2 = common dso_local global i64 0, align 8
@CTRL2_CO_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv6110x_set_refclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110x_set_refclock(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stv6110x_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.stv6110x_state*, %struct.stv6110x_state** %7, align 8
  store %struct.stv6110x_state* %8, %struct.stv6110x_state** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %10 [
    i32 1, label %11
    i32 2, label %20
    i32 4, label %29
    i32 8, label %38
    i32 0, label %38
  ]

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %2, %10
  %12 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %13 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @STV6110x_CTRL2, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CTRL2_CO_DIV, align 4
  %19 = call i32 @STV6110x_SETFIELD(i32 %17, i32 %18, i32 0)
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %22 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @STV6110x_CTRL2, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CTRL2_CO_DIV, align 4
  %28 = call i32 @STV6110x_SETFIELD(i32 %26, i32 %27, i32 1)
  br label %47

29:                                               ; preds = %2
  %30 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %31 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @STV6110x_CTRL2, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CTRL2_CO_DIV, align 4
  %37 = call i32 @STV6110x_SETFIELD(i32 %35, i32 %36, i32 2)
  br label %47

38:                                               ; preds = %2, %2
  %39 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %40 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @STV6110x_CTRL2, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CTRL2_CO_DIV, align 4
  %46 = call i32 @STV6110x_SETFIELD(i32 %44, i32 %45, i32 3)
  br label %47

47:                                               ; preds = %38, %29, %20, %11
  %48 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %49 = load i64, i64* @STV6110x_CTRL2, align 8
  %50 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %51 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @STV6110x_CTRL2, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @stv6110x_write_reg(%struct.stv6110x_state* %48, i64 %49, i32 %55)
  ret i32 0
}

declare dso_local i32 @STV6110x_SETFIELD(i32, i32, i32) #1

declare dso_local i32 @stv6110x_write_reg(%struct.stv6110x_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
