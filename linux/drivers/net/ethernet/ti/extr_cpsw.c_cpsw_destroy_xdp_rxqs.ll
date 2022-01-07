; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_destroy_xdp_rxqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_destroy_xdp_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_common = type { i32, i32**, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_destroy_xdp_rxqs(%struct.cpsw_common* %0) #0 {
  %2 = alloca %struct.cpsw_common*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpsw_common* %0, %struct.cpsw_common** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %55, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %9 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %16 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %22 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %3, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %37

32:                                               ; preds = %20
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netdev_priv(%struct.net_device* %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cpsw_ndev_destroy_xdp_rxq(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %31
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %42 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @page_pool_destroy(i32* %47)
  %49 = load %struct.cpsw_common*, %struct.cpsw_common** %2, align 8
  %50 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %6

58:                                               ; preds = %6
  ret void
}

declare dso_local i32 @cpsw_ndev_destroy_xdp_rxq(i32, i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @page_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
