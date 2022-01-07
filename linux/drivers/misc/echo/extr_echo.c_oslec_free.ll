; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/echo/extr_echo.c_oslec_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/echo/extr_echo.c_oslec_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oslec_state = type { %struct.oslec_state*, %struct.oslec_state**, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oslec_free(%struct.oslec_state* %0) #0 {
  %2 = alloca %struct.oslec_state*, align 8
  %3 = alloca i32, align 4
  store %struct.oslec_state* %0, %struct.oslec_state** %2, align 8
  %4 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %5 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %4, i32 0, i32 3
  %6 = call i32 @fir16_free(i32* %5)
  %7 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %8 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %7, i32 0, i32 2
  %9 = call i32 @fir16_free(i32* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %15 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %14, i32 0, i32 1
  %16 = load %struct.oslec_state**, %struct.oslec_state*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %16, i64 %18
  %20 = load %struct.oslec_state*, %struct.oslec_state** %19, align 8
  %21 = call i32 @kfree(%struct.oslec_state* %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %27 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %26, i32 0, i32 0
  %28 = load %struct.oslec_state*, %struct.oslec_state** %27, align 8
  %29 = call i32 @kfree(%struct.oslec_state* %28)
  %30 = load %struct.oslec_state*, %struct.oslec_state** %2, align 8
  %31 = call i32 @kfree(%struct.oslec_state* %30)
  ret void
}

declare dso_local i32 @fir16_free(i32*) #1

declare dso_local i32 @kfree(%struct.oslec_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
