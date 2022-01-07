; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_cmd_tx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_cmd_tx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.ar5523_tx_cmd* }
%struct.ar5523_tx_cmd = type { i32, i32, i64, %struct.ar5523* }
%struct.ar5523 = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to TX command. Status = %d\0A\00", align 1
@AR5523_CMD_FLAG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ar5523_cmd_tx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_cmd_tx_cb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ar5523_tx_cmd*, align 8
  %4 = alloca %struct.ar5523*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 1
  %7 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  store %struct.ar5523_tx_cmd* %7, %struct.ar5523_tx_cmd** %3, align 8
  %8 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %8, i32 0, i32 3
  %10 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  store %struct.ar5523* %10, %struct.ar5523** %4, align 8
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ar5523_err(%struct.ar5523* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %26, i32 0, i32 1
  %28 = call i32 @complete(i32* %27)
  br label %42

29:                                               ; preds = %1
  %30 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AR5523_CMD_FLAG_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %39, i32 0, i32 1
  %41 = call i32 @complete(i32* %40)
  br label %42

42:                                               ; preds = %15, %36, %29
  ret void
}

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
