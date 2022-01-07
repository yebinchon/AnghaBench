; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_update_stats_ver14.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_update_stats_ver14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_priv = type { i32, i32* }

@GBE_STATSC_MODULE = common dso_local global i32 0, align 4
@GBE_STATSA_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_priv*, i32*)* @gbe_update_stats_ver14 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbe_update_stats_ver14(%struct.gbe_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.gbe_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gbe_priv* %0, %struct.gbe_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %10 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %11, 2
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %59, %2
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @GBE_STATSC_MODULE, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @GBE_STATSA_MODULE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @gbe_stats_mod_visible_ver14(%struct.gbe_priv* %17, i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %55, %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @gbe_update_hw_stats_entry(%struct.gbe_priv* %37, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %44 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %42, %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %27

58:                                               ; preds = %27
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %13

62:                                               ; preds = %13
  ret void
}

declare dso_local i32 @gbe_stats_mod_visible_ver14(%struct.gbe_priv*, i32) #1

declare dso_local i32 @gbe_update_hw_stats_entry(%struct.gbe_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
