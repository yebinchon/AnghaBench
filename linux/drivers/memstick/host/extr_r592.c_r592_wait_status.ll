; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_wait_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_wait_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@R592_STATUS = common dso_local global i32 0, align 4
@R592_STATUS_SEND_ERR = common dso_local global i32 0, align 4
@R592_STATUS_RECV_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r592_device*, i32, i32)* @r592_wait_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_wait_status(%struct.r592_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r592_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.r592_device* %0, %struct.r592_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @jiffies, align 8
  %11 = call i64 @msecs_to_jiffies(i32 1000)
  %12 = add i64 %10, %11
  store i64 %12, i64* %8, align 8
  %13 = load %struct.r592_device*, %struct.r592_device** %5, align 8
  %14 = load i32, i32* @R592_STATUS, align 4
  %15 = call i32 @r592_read_reg(%struct.r592_device* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @time_before(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load %struct.r592_device*, %struct.r592_device** %5, align 8
  %30 = load i32, i32* @R592_STATUS, align 4
  %31 = call i32 @r592_read_reg(%struct.r592_device* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %53

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @R592_STATUS_SEND_ERR, align 4
  %41 = load i32, i32* @R592_STATUS_RECV_ERR, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %38
  %49 = call i32 (...) @cpu_relax()
  br label %23

50:                                               ; preds = %23
  %51 = load i32, i32* @ETIME, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %45, %37, %21
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @r592_read_reg(%struct.r592_device*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
