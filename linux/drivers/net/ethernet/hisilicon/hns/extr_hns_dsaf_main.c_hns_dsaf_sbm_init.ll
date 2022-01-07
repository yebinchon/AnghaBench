; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_sbm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_sbm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DSAF_SRAM_INIT_OVER_M = common dso_local global i64 0, align 8
@DSAFV2_SRAM_INIT_OVER_M = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"hns_dsaf_sbm_cfg_mib_en fail,%s, ret=%d\0A\00", align 1
@DSAF_SRAM_INIT_OVER_0_REG = common dso_local global i32 0, align 4
@DSAF_SRAM_INIT_OVER_S = common dso_local global i64 0, align 8
@DSAF_CFG_READ_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"hns_dsaf_sbm_init fail %s, flag=%d, cnt=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsaf_device*)* @hns_dsaf_sbm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_dsaf_sbm_init(%struct.dsaf_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %9 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @AE_IS_VER1(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %15 = call i32 @hns_dsaf_sbm_bp_wl_cfg(%struct.dsaf_device* %14)
  %16 = load i64, i64* @DSAF_SRAM_INIT_OVER_M, align 8
  store i64 %16, i64* %5, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %19 = call i32 @hns_dsafv2_sbm_bp_wl_cfg(%struct.dsaf_device* %18)
  %20 = load i64, i64* @DSAFV2_SRAM_INIT_OVER_M, align 8
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %23 = call i32 @hns_dsaf_sbm_cfg(%struct.dsaf_device* %22)
  %24 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %25 = call i32 @hns_dsaf_sbm_cfg_mib_en(%struct.dsaf_device* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %30 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %33 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 (i32, i8*, i32, i64, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %86

40:                                               ; preds = %21
  %41 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %42 = call i32 @hns_dsaf_sbm_link_sram_init_en(%struct.dsaf_device* %41)
  br label %43

43:                                               ; preds = %62, %40
  %44 = call i32 @usleep_range(i32 200, i32 210)
  %45 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %46 = load i32, i32* @DSAF_SRAM_INIT_OVER_0_REG, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @DSAF_SRAM_INIT_OVER_S, align 8
  %49 = call i64 @dsaf_get_dev_field(%struct.dsaf_device* %45, i32 %46, i64 %47, i64 %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @DSAF_SRAM_INIT_OVER_S, align 8
  %56 = ashr i64 %54, %55
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @DSAF_CFG_READ_CNT, align 8
  %61 = icmp slt i64 %59, %60
  br label %62

62:                                               ; preds = %58, %52
  %63 = phi i1 [ false, %52 ], [ %61, %58 ]
  br i1 %63, label %43, label %64

64:                                               ; preds = %62
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @DSAF_SRAM_INIT_OVER_S, align 8
  %68 = ashr i64 %66, %67
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %72 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %75 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 (i32, i8*, i32, i64, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %77, i64 %78, i64 %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %86

83:                                               ; preds = %64
  %84 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %85 = call i32 @hns_dsaf_rocee_bp_en(%struct.dsaf_device* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %70, %28
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @hns_dsaf_sbm_bp_wl_cfg(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsafv2_sbm_bp_wl_cfg(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsaf_sbm_cfg(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsaf_sbm_cfg_mib_en(%struct.dsaf_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @hns_dsaf_sbm_link_sram_init_en(%struct.dsaf_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @dsaf_get_dev_field(%struct.dsaf_device*, i32, i64, i64) #1

declare dso_local i32 @hns_dsaf_rocee_bp_en(%struct.dsaf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
