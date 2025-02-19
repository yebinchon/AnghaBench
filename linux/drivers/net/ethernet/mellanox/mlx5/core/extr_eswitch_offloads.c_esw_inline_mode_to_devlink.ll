; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_inline_mode_to_devlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_inline_mode_to_devlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEVLINK_ESWITCH_INLINE_MODE_NONE = common dso_local global i32 0, align 4
@DEVLINK_ESWITCH_INLINE_MODE_LINK = common dso_local global i32 0, align 4
@DEVLINK_ESWITCH_INLINE_MODE_NETWORK = common dso_local global i32 0, align 4
@DEVLINK_ESWITCH_INLINE_MODE_TRANSPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @esw_inline_mode_to_devlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_inline_mode_to_devlink(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %19 [
    i32 129, label %7
    i32 130, label %10
    i32 131, label %13
    i32 128, label %16
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @DEVLINK_ESWITCH_INLINE_MODE_NONE, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  br label %22

10:                                               ; preds = %2
  %11 = load i32, i32* @DEVLINK_ESWITCH_INLINE_MODE_LINK, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @DEVLINK_ESWITCH_INLINE_MODE_NETWORK, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @DEVLINK_ESWITCH_INLINE_MODE_TRANSPORT, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %16, %13, %10, %7
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
