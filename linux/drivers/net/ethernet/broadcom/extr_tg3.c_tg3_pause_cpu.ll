; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_pause_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_pause_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@CPU_STATE = common dso_local global i64 0, align 8
@CPU_MODE = common dso_local global i64 0, align 8
@CPU_MODE_HALT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i64)* @tg3_pause_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_pause_cpu(%struct.tg3* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 10000, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 10000
  br i1 %10, label %11, label %42

11:                                               ; preds = %8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @CPU_STATE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @tw32(i64 %14, i32 -1)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @CPU_MODE, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @CPU_MODE_HALT, align 4
  %20 = call i32 @tw32(i64 %18, i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @CPU_MODE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @tr32(i64 %23)
  %25 = load i32, i32* @CPU_MODE_HALT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  br label %42

29:                                               ; preds = %11
  %30 = load %struct.tg3*, %struct.tg3** %4, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @pci_channel_offline(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %8

42:                                               ; preds = %28, %8
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 10000
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 0, %48 ]
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %35
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @tw32(i64, i32) #1

declare dso_local i32 @tr32(i64) #1

declare dso_local i64 @pci_channel_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
