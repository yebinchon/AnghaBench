; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Adding vlanid %d to vlan filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i64)* @cpsw_ndo_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cpsw_priv*, align 8
  %9 = alloca %struct.cpsw_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.cpsw_priv* %13, %struct.cpsw_priv** %8, align 8
  %14 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %15 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %14, i32 0, i32 1
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %15, align 8
  store %struct.cpsw_common* %16, %struct.cpsw_common** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %19 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

24:                                               ; preds = %3
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pm_runtime_get_sync(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %33 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pm_runtime_put_noidle(i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %85

37:                                               ; preds = %24
  %38 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %39 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %47 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %54 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %52, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %79

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %44

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69, %37
  %71 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %72 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @cpsw_add_vlan_ale_entry(%struct.cpsw_priv* %76, i64 %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %70, %62
  %80 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %81 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pm_runtime_put(i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %31, %23
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @cpsw_add_vlan_ale_entry(%struct.cpsw_priv*, i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
