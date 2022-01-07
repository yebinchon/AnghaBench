; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_req_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_req_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.jmb38x_ms_host = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"tasklet req %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @jmb38x_ms_req_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmb38x_ms_req_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.memstick_host*, align 8
  %4 = alloca %struct.jmb38x_ms_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.memstick_host*
  store %struct.memstick_host* %8, %struct.memstick_host** %3, align 8
  %9 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %10 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host* %9)
  store %struct.jmb38x_ms_host* %10, %struct.jmb38x_ms_host** %4, align 8
  %11 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %12 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %16 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %40, %19
  %21 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %22 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %23 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %22, i32 0, i32 2
  %24 = call i32 @memstick_next_req(%struct.memstick_host* %21, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %26 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %38 = call i64 @jmb38x_ms_issue_cmd(%struct.memstick_host* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %20, label %42

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %45 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %44, i32 0, i32 0
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memstick_next_req(%struct.memstick_host*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @jmb38x_ms_issue_cmd(%struct.memstick_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
