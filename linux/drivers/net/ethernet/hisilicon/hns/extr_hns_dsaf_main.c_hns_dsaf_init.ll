; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32, i64, i32 }
%struct.dsaf_drv_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DSAF_TCAM_SUM = common dso_local global i64 0, align 8
@DSAFV2_MAC_FUZZY_TCAM_NUM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DSAF_INVALID_ENTRY_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsaf_device*)* @hns_dsaf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_dsaf_init(%struct.dsaf_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca %struct.dsaf_drv_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  %7 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %8 = call i64 @hns_dsaf_dev_priv(%struct.dsaf_device* %7)
  %9 = inttoptr i64 %8 to %struct.dsaf_drv_priv*
  store %struct.dsaf_drv_priv* %9, %struct.dsaf_drv_priv** %4, align 8
  %10 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %11 = call i64 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %16 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @AE_IS_VER1(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i64, i64* @DSAF_TCAM_SUM, align 8
  %22 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %23 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  br label %30

24:                                               ; preds = %14
  %25 = load i64, i64* @DSAF_TCAM_SUM, align 8
  %26 = load i64, i64* @DSAFV2_MAC_FUZZY_TCAM_NUM, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %29 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %20
  %31 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %32 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %35 = call i32 @hns_dsaf_init_hw(%struct.dsaf_device* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %74

40:                                               ; preds = %30
  %41 = load i64, i64* @DSAF_TCAM_SUM, align 8
  %42 = call i32 @array_size(i64 %41, i32 4)
  %43 = call %struct.TYPE_2__* @vzalloc(i32 %42)
  %44 = load %struct.dsaf_drv_priv*, %struct.dsaf_drv_priv** %4, align 8
  %45 = getelementptr inbounds %struct.dsaf_drv_priv, %struct.dsaf_drv_priv* %44, i32 0, i32 0
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %45, align 8
  %46 = load %struct.dsaf_drv_priv*, %struct.dsaf_drv_priv** %4, align 8
  %47 = getelementptr inbounds %struct.dsaf_drv_priv, %struct.dsaf_drv_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %70

53:                                               ; preds = %40
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @DSAF_TCAM_SUM, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* @DSAF_INVALID_ENTRY_IDX, align 4
  %60 = load %struct.dsaf_drv_priv*, %struct.dsaf_drv_priv** %4, align 8
  %61 = getelementptr inbounds %struct.dsaf_drv_priv, %struct.dsaf_drv_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %5, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %54

69:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %50
  %71 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %72 = call i32 @hns_dsaf_remove_hw(%struct.dsaf_device* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %69, %38, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @hns_dsaf_dev_priv(%struct.dsaf_device*) #1

declare dso_local i64 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device*) #1

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hns_dsaf_init_hw(%struct.dsaf_device*) #1

declare dso_local %struct.TYPE_2__* @vzalloc(i32) #1

declare dso_local i32 @array_size(i64, i32) #1

declare dso_local i32 @hns_dsaf_remove_hw(%struct.dsaf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
