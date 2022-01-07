; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_state = type { %struct.altera_jtag }
%struct.altera_jtag = type { i64, i32*, i32*, i32*, i32*, i32*, i32* }

@ILLEGAL_JTAG_STATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @altera_free_buffers(%struct.altera_state* %0) #0 {
  %2 = alloca %struct.altera_state*, align 8
  %3 = alloca %struct.altera_jtag*, align 8
  store %struct.altera_state* %0, %struct.altera_state** %2, align 8
  %4 = load %struct.altera_state*, %struct.altera_state** %2, align 8
  %5 = getelementptr inbounds %struct.altera_state, %struct.altera_state* %4, i32 0, i32 0
  store %struct.altera_jtag* %5, %struct.altera_jtag** %3, align 8
  %6 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %7 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ILLEGAL_JTAG_STATE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.altera_state*, %struct.altera_state** %2, align 8
  %13 = call i32 @altera_jreset_idle(%struct.altera_state* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %16 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kfree(i32* %17)
  %19 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %20 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %19, i32 0, i32 6
  store i32* null, i32** %20, align 8
  %21 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %22 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %26 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %28 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree(i32* %29)
  %31 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %32 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %34 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %38 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %40 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %44 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %46 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load %struct.altera_jtag*, %struct.altera_jtag** %3, align 8
  %50 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  ret void
}

declare dso_local i32 @altera_jreset_idle(%struct.altera_state*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
