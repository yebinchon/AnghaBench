; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_jinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_jinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_state = type { %struct.altera_jtag }
%struct.altera_jtag = type { i32*, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i8*, i8*, i32 }

@ILLEGAL_JTAG_STATE = common dso_local global i32 0, align 4
@IDLE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_jinit(%struct.altera_state* %0) #0 {
  %2 = alloca %struct.altera_state*, align 8
  %3 = alloca %struct.altera_jtag*, align 8
  store %struct.altera_state* %0, %struct.altera_state** %2, align 8
  %4 = load %struct.altera_state*, %struct.altera_state** %2, align 8
  %5 = getelementptr inbounds %struct.altera_state, %struct.altera_state* %4, i32 0, i32 0
  store %struct.altera_jtag* %5, %struct.altera_jtag** %3, align 8
  %6 = load i32, i32* @ILLEGAL_JTAG_STATE, align 4
  %7 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %8 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %7, i32 0, i32 14
  store i32 %6, i32* %8, align 8
  %9 = load i8*, i8** @IDLE, align 8
  %10 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %11 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %10, i32 0, i32 13
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @IDLE, align 8
  %13 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %14 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %13, i32 0, i32 12
  store i8* %12, i8** %14, align 8
  %15 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %16 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %15, i32 0, i32 11
  store i64 0, i64* %16, align 8
  %17 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %18 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %20 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %22 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %24 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %26 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %28 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %30 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %32 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %34 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %36 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %38 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
