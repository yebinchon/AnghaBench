; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_inode_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_inode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i64, i32 }

@HRD_DSAF_4TC_MODE = common dso_local global i64 0, align 8
@HNS_DSAF_I4TC_CFG = common dso_local global i32 0, align 4
@HNS_DSAF_I8TC_CFG = common dso_local global i32 0, align 4
@DSAF_INODE_NUM = common dso_local global i32 0, align 4
@DSAF_INODE_IN_PORT_NUM_0_REG = common dso_local global i32 0, align 4
@DSAF_INODE_IN_PORT_NUM_M = common dso_local global i32 0, align 4
@DSAF_INODE_IN_PORT_NUM_S = common dso_local global i32 0, align 4
@DSAF_XGE_NUM = common dso_local global i32 0, align 4
@DSAF_PORT_TYPE_NUM = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT1_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT1_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT2_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT2_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT3_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT3_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT4_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT4_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT5_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_INODE_IN_PORT5_NUM_S = common dso_local global i32 0, align 4
@DSAF_INODE_PRI_TC_CFG_0_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*)* @hns_dsaf_inode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_inode_init(%struct.dsaf_device* %0) #0 {
  %2 = alloca %struct.dsaf_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %2, align 8
  %6 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %7 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HRD_DSAF_4TC_MODE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @HNS_DSAF_I4TC_CFG, align 4
  store i32 %12, i32* %4, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @HNS_DSAF_I8TC_CFG, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %17 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @AE_IS_VER1(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DSAF_INODE_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32, i32* @DSAF_INODE_IN_PORT_NUM_0_REG, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 128, %28
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @DSAF_INODE_IN_PORT_NUM_M, align 4
  %34 = load i32, i32* @DSAF_INODE_IN_PORT_NUM_S, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @DSAF_XGE_NUM, align 4
  %37 = srem i32 %35, %36
  %38 = call i32 @dsaf_set_dev_field(%struct.dsaf_device* %31, i32 %32, i32 %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %22

42:                                               ; preds = %22
  br label %87

43:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %83, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @DSAF_PORT_TYPE_NUM, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %44
  %49 = load i32, i32* @DSAF_INODE_IN_PORT_NUM_0_REG, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 128, %50
  %52 = add nsw i32 %49, %51
  store i32 %52, i32* %3, align 4
  %53 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @DSAF_INODE_IN_PORT_NUM_M, align 4
  %56 = load i32, i32* @DSAF_INODE_IN_PORT_NUM_S, align 4
  %57 = call i32 @dsaf_set_dev_field(%struct.dsaf_device* %53, i32 %54, i32 %55, i32 %56, i32 0)
  %58 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @DSAFV2_INODE_IN_PORT1_NUM_M, align 4
  %61 = load i32, i32* @DSAFV2_INODE_IN_PORT1_NUM_S, align 4
  %62 = call i32 @dsaf_set_dev_field(%struct.dsaf_device* %58, i32 %59, i32 %60, i32 %61, i32 1)
  %63 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @DSAFV2_INODE_IN_PORT2_NUM_M, align 4
  %66 = load i32, i32* @DSAFV2_INODE_IN_PORT2_NUM_S, align 4
  %67 = call i32 @dsaf_set_dev_field(%struct.dsaf_device* %63, i32 %64, i32 %65, i32 %66, i32 2)
  %68 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @DSAFV2_INODE_IN_PORT3_NUM_M, align 4
  %71 = load i32, i32* @DSAFV2_INODE_IN_PORT3_NUM_S, align 4
  %72 = call i32 @dsaf_set_dev_field(%struct.dsaf_device* %68, i32 %69, i32 %70, i32 %71, i32 3)
  %73 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @DSAFV2_INODE_IN_PORT4_NUM_M, align 4
  %76 = load i32, i32* @DSAFV2_INODE_IN_PORT4_NUM_S, align 4
  %77 = call i32 @dsaf_set_dev_field(%struct.dsaf_device* %73, i32 %74, i32 %75, i32 %76, i32 4)
  %78 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @DSAFV2_INODE_IN_PORT5_NUM_M, align 4
  %81 = load i32, i32* @DSAFV2_INODE_IN_PORT5_NUM_S, align 4
  %82 = call i32 @dsaf_set_dev_field(%struct.dsaf_device* %78, i32 %79, i32 %80, i32 %81, i32 5)
  br label %83

83:                                               ; preds = %48
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %44

86:                                               ; preds = %44
  br label %87

87:                                               ; preds = %86, %42
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %101, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @DSAF_INODE_NUM, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i32, i32* @DSAF_INODE_PRI_TC_CFG_0_REG, align 4
  %94 = load i32, i32* %5, align 4
  %95 = mul nsw i32 128, %94
  %96 = add nsw i32 %93, %95
  store i32 %96, i32* %3, align 4
  %97 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @dsaf_write_dev(%struct.dsaf_device* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %88

104:                                              ; preds = %88
  ret void
}

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @dsaf_set_dev_field(%struct.dsaf_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
