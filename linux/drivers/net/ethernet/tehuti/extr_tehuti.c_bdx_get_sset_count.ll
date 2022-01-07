; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bdx_priv = type { i32 }

@bdx_stat_names = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bdx_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bdx_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bdx_priv* %8, %struct.bdx_priv** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %27 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @bdx_stat_names, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @BDX_ASSERT(i32 %15)
  %17 = load %struct.bdx_priv*, %struct.bdx_priv** %6, align 8
  %18 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @bdx_stat_names, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  br label %25

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BDX_ASSERT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
