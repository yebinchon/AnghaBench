; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_wait_msecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_wait_msecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_state = type { %struct.altera_jtag }
%struct.altera_jtag = type { i64 }

@ILLEGAL_JTAG_STATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_wait_msecs(%struct.altera_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.altera_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.altera_jtag*, align 8
  %8 = alloca i32, align 4
  store %struct.altera_state* %0, %struct.altera_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.altera_state*, %struct.altera_state** %4, align 8
  %10 = getelementptr inbounds %struct.altera_state, %struct.altera_state* %9, i32 0, i32 0
  store %struct.altera_jtag* %10, %struct.altera_jtag** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.altera_jtag*, %struct.altera_jtag** %7, align 8
  %12 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ILLEGAL_JTAG_STATE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.altera_jtag*, %struct.altera_jtag** %7, align 8
  %18 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.altera_state*, %struct.altera_state** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @altera_goto_jstate(%struct.altera_state* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %16, %3
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @udelay(i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @altera_goto_jstate(%struct.altera_state*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
