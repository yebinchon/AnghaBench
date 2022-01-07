; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110x.c_stv6110x_setup_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110x.c_stv6110x_setup_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv6110x_state = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STV6110x_CTRL2 = common dso_local global i64 0, align 8
@CTRL2_CO_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv6110x_state*)* @stv6110x_setup_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv6110x_setup_divider(%struct.stv6110x_state* %0) #0 {
  %2 = alloca %struct.stv6110x_state*, align 8
  store %struct.stv6110x_state* %0, %struct.stv6110x_state** %2, align 8
  %3 = load %struct.stv6110x_state*, %struct.stv6110x_state** %2, align 8
  %4 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %8 [
    i32 1, label %9
    i32 2, label %18
    i32 4, label %27
    i32 8, label %36
    i32 0, label %36
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %1, %8
  %10 = load %struct.stv6110x_state*, %struct.stv6110x_state** %2, align 8
  %11 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @STV6110x_CTRL2, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CTRL2_CO_DIV, align 4
  %17 = call i32 @STV6110x_SETFIELD(i32 %15, i32 %16, i32 0)
  br label %45

18:                                               ; preds = %1
  %19 = load %struct.stv6110x_state*, %struct.stv6110x_state** %2, align 8
  %20 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @STV6110x_CTRL2, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CTRL2_CO_DIV, align 4
  %26 = call i32 @STV6110x_SETFIELD(i32 %24, i32 %25, i32 1)
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.stv6110x_state*, %struct.stv6110x_state** %2, align 8
  %29 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @STV6110x_CTRL2, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CTRL2_CO_DIV, align 4
  %35 = call i32 @STV6110x_SETFIELD(i32 %33, i32 %34, i32 2)
  br label %45

36:                                               ; preds = %1, %1
  %37 = load %struct.stv6110x_state*, %struct.stv6110x_state** %2, align 8
  %38 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @STV6110x_CTRL2, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CTRL2_CO_DIV, align 4
  %44 = call i32 @STV6110x_SETFIELD(i32 %42, i32 %43, i32 3)
  br label %45

45:                                               ; preds = %36, %27, %18, %9
  ret void
}

declare dso_local i32 @STV6110x_SETFIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
