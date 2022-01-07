; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_set_jumbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_set_jumbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, i32, i32 }

@JMS_MIN_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@JMS_MAX_SIZE = common dso_local global i32 0, align 4
@JPM_10_100_JUMBO_EN = common dso_local global i32 0, align 4
@B53_JUMBO_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32, i32)* @b53_set_jumbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_set_jumbo(%struct.b53_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b53_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @JMS_MIN_SIZE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %12 = call i64 @is5325(%struct.b53_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %16 = call i64 @is5365(%struct.b53_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %26 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @JMS_MAX_SIZE, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @JPM_10_100_JUMBO_EN, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %24
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %38 = load i32, i32* @B53_JUMBO_PAGE, align 4
  %39 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %40 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @b53_write32(%struct.b53_device* %37, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %45 = load i32, i32* @B53_JUMBO_PAGE, align 4
  %46 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %47 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @b53_write16(%struct.b53_device* %44, i32 %45, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %36, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @b53_write32(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_write16(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
