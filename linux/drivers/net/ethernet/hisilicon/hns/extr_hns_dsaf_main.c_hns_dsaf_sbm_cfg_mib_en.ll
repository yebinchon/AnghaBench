; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_sbm_cfg_mib_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_sbm_cfg_mib_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@DSAF_SBM_CFG_REG_0_REG = common dso_local global i32 0, align 4
@DSAF_SBM_CFG_MIB_EN_S = common dso_local global i32 0, align 4
@DSAF_CFG_READ_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"sbm_cfg_mib_en fail,%s,sbm_num=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsaf_device*)* @hns_dsaf_sbm_cfg_mib_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_dsaf_sbm_cfg_mib_en(%struct.dsaf_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %11 = call i32 @HNS_DSAF_SBM_NUM(%struct.dsaf_device* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i32, i32* @DSAF_SBM_CFG_REG_0_REG, align 4
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 128, %15
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DSAF_SBM_CFG_MIB_EN_S, align 4
  %21 = call i32 @dsaf_set_dev_bit(%struct.dsaf_device* %18, i32 %19, i32 %20, i32 0)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %8

25:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %29 = call i32 @HNS_DSAF_SBM_NUM(%struct.dsaf_device* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32, i32* @DSAF_SBM_CFG_REG_0_REG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 128, %33
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DSAF_SBM_CFG_MIB_EN_S, align 4
  %39 = call i32 @dsaf_set_dev_bit(%struct.dsaf_device* %36, i32 %37, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %26

43:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %87, %43
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %47 = call i32 @HNS_DSAF_SBM_NUM(%struct.dsaf_device* %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  %50 = load i32, i32* @DSAF_SBM_CFG_REG_0_REG, align 4
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 128, %51
  %53 = add nsw i32 %50, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %69, %49
  %55 = call i32 @udelay(i32 1)
  %56 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @DSAF_SBM_CFG_MIB_EN_S, align 4
  %59 = call i32 @dsaf_get_dev_bit(%struct.dsaf_device* %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @DSAF_CFG_READ_CNT, align 4
  %68 = icmp slt i32 %66, %67
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  br i1 %70, label %54, label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %76 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %79 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %91

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %44

90:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @HNS_DSAF_SBM_NUM(%struct.dsaf_device*) #1

declare dso_local i32 @dsaf_set_dev_bit(%struct.dsaf_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dsaf_get_dev_bit(%struct.dsaf_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
