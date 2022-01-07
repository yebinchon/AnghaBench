; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { i32, i32* }

@BNX2X_MAX_PRIORITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"support for too many traffic classes requested: %d. Max supported is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to declare %d traffic classes\0A\00", align 1
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"mapping priority %d to tc %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"mapping tc %d to offset %d count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_setup_tc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %16)
  store %struct.bnx2x* %17, %struct.bnx2x** %6, align 8
  %18 = load i32, i32* @BNX2X_MAX_PRIORITY, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = call i32 (...) @ASSERT_RTNL()
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netdev_reset_tc(%struct.net_device* %26)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %119

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %119

42:                                               ; preds = %28
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @netdev_set_num_tc(%struct.net_device* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %119

52:                                               ; preds = %42
  %53 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %54 = call i32 @bnx2x_get_c2s_mapping(%struct.bnx2x* %53, i32* %21, i32* %9)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %86, %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @BNX2X_MAX_PRIORITY, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %21, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %15, align 4
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %67 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @netdev_set_prio_tc_map(%struct.net_device* %64, i32 %65, i32 %72)
  %74 = load i32, i32* @BNX2X_MSG_SP, align 4
  %75 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %79 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %84)
  br label %86

86:                                               ; preds = %59
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %55

89:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %115, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %93 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %90
  %97 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %98 = call i32 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %101 = call i32 @BNX2X_NUM_NON_CNIC_QUEUES(%struct.bnx2x* %100)
  %102 = mul nsw i32 %99, %101
  store i32 %102, i32* %13, align 4
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @netdev_set_tc_queue(%struct.net_device* %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* @BNX2X_MSG_SP, align 4
  %109 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %96
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %90

118:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %119

119:                                              ; preds = %118, %47, %34, %25
  %120 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, ...) #1

declare dso_local i64 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @bnx2x_get_c2s_mapping(%struct.bnx2x*, i32*, i32*) #1

declare dso_local i32 @netdev_set_prio_tc_map(%struct.net_device*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_NUM_NON_CNIC_QUEUES(%struct.bnx2x*) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
