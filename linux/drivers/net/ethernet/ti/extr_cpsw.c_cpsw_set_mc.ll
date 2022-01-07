; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { i64, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ALE_PORT_HOST = common dso_local global i32 0, align 4
@ALE_ALL_PORTS = common dso_local global i32 0, align 4
@ALE_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32, i32)* @cpsw_set_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_set_mc(%struct.net_device* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpsw_priv*, align 8
  %10 = alloca %struct.cpsw_common*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.cpsw_priv* %15, %struct.cpsw_priv** %9, align 8
  %16 = load %struct.cpsw_priv*, %struct.cpsw_priv** %9, align 8
  %17 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %16, i32 0, i32 1
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %17, align 8
  store %struct.cpsw_common* %18, %struct.cpsw_common** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %4
  %22 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %23 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %29 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.cpsw_priv*, %struct.cpsw_priv** %9, align 8
  %32 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  br label %38

37:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %41 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @ALE_PORT_HOST, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @ALE_ALL_PORTS, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @ALE_VLAN, align 4
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %62 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @cpsw_ale_add_mcast(i32 %63, i32* %64, i32 %65, i32 %66, i32 %67, i32 0)
  store i32 %68, i32* %13, align 4
  br label %77

69:                                               ; preds = %56
  %70 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %71 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @cpsw_ale_del_mcast(i32 %72, i32* %73, i32 0, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %69, %60
  %78 = load i32, i32* %13, align 4
  ret i32 %78
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_ale_add_mcast(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_ale_del_mcast(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
