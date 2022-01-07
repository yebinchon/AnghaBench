; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_flush_arl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_flush_arl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@B53_FAST_AGE_CTRL = common dso_local global i32 0, align 4
@FAST_AGE_DONE = common dso_local global i32 0, align 4
@FAST_AGE_DYNAMIC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32)* @b53_flush_arl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_flush_arl(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %9 = load i32, i32* @B53_CTRL_PAGE, align 4
  %10 = load i32, i32* @B53_FAST_AGE_CTRL, align 4
  %11 = load i32, i32* @FAST_AGE_DONE, align 4
  %12 = load i32, i32* @FAST_AGE_DYNAMIC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @b53_write8(%struct.b53_device* %8, i32 %9, i32 %10, i32 %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %32, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %18, 10
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %22 = load i32, i32* @B53_CTRL_PAGE, align 4
  %23 = load i32, i32* @B53_FAST_AGE_CTRL, align 4
  %24 = call i32 @b53_read8(%struct.b53_device* %21, i32 %22, i32 %23, i32* %7)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @FAST_AGE_DONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %38

30:                                               ; preds = %20
  %31 = call i32 @msleep(i32 1)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %29
  %39 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %40 = load i32, i32* @B53_CTRL_PAGE, align 4
  %41 = load i32, i32* @B53_FAST_AGE_CTRL, align 4
  %42 = load i32, i32* @FAST_AGE_DYNAMIC, align 4
  %43 = call i32 @b53_write8(%struct.b53_device* %39, i32 %40, i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
