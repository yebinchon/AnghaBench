; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_arl_rw_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_arl_rw_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@ARLTBL_RW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B53_ARLIO_PAGE = common dso_local global i32 0, align 4
@B53_ARLTBL_RW_CTRL = common dso_local global i32 0, align 4
@ARLTBL_START_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32)* @b53_arl_rw_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_arl_rw_op(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @ARLTBL_RW, align 4
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %15 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %16 = load i32, i32* @B53_ARLTBL_RW_CTRL, align 4
  %17 = call i32 @b53_read8(%struct.b53_device* %14, i32 %15, i32 %16, i32* %6)
  %18 = load i32, i32* @ARLTBL_START_DONE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @ARLTBL_RW, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %32

27:                                               ; preds = %13
  %28 = load i32, i32* @ARLTBL_RW, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %34 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %35 = load i32, i32* @B53_ARLTBL_RW_CTRL, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @b53_write8(%struct.b53_device* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %39 = call i32 @b53_arl_op_wait(%struct.b53_device* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_arl_op_wait(%struct.b53_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
