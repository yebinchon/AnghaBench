; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_create_xdp_rxqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_create_xdp_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_common = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_create_xdp_rxqs(%struct.cpsw_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpsw_common*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpsw_common* %0, %struct.cpsw_common** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %54, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %11 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %8
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cpsw_create_rx_pool(%struct.cpsw_common* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %58

21:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %25 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %22
  %30 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %31 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  store %struct.net_device* %37, %struct.net_device** %4, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  br label %50

41:                                               ; preds = %29
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @netdev_priv(%struct.net_device* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @cpsw_ndev_create_xdp_rxq(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %58

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %22

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %8

57:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %62

58:                                               ; preds = %48, %20
  %59 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %60 = call i32 @cpsw_destroy_xdp_rxqs(%struct.cpsw_common* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @cpsw_create_rx_pool(%struct.cpsw_common*, i32) #1

declare dso_local i32 @cpsw_ndev_create_xdp_rxq(i32, i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_destroy_xdp_rxqs(%struct.cpsw_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
