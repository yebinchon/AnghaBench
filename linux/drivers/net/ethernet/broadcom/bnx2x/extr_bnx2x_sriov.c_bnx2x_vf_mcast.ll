; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32 }
%struct.bnx2x_mcast_list_elem = type { i32, i32 }
%struct.bnx2x_mcast_ramrod_params = type { i32, i32, i32, i32* }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vf[%d]\0A\00", align 1
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Cannot Configure multicasts due to lack of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BNX2X_MCAST_CMD_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to set multicasts\0A\00", align 1
@BNX2X_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to remove multicasts\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vf_mcast(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_virtf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnx2x_mcast_list_elem*, align 8
  %13 = alloca %struct.bnx2x_mcast_ramrod_params, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.bnx2x_mcast_list_elem* null, %struct.bnx2x_mcast_list_elem** %12, align 8
  %16 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %17 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %18 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DP(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @memset(%struct.bnx2x_mcast_ramrod_params* %13, i32 0, i32 24)
  %22 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %23 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %13, i32 0, i32 3
  store i32* %23, i32** %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %29 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %13, i32 0, i32 2
  %30 = call i32 @set_bit(i32 %28, i32* %29)
  br label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %33 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %13, i32 0, i32 2
  %34 = call i32 @set_bit(i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.bnx2x_mcast_list_elem* @kcalloc(i32 %39, i32 8, i32 %40)
  store %struct.bnx2x_mcast_list_elem* %41, %struct.bnx2x_mcast_list_elem** %12, align 8
  %42 = load %struct.bnx2x_mcast_list_elem*, %struct.bnx2x_mcast_list_elem** %12, align 8
  %43 = icmp ne %struct.bnx2x_mcast_list_elem* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %104

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %13, i32 0, i32 1
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %77, %52
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bnx2x_mcast_list_elem*, %struct.bnx2x_mcast_list_elem** %12, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.bnx2x_mcast_list_elem, %struct.bnx2x_mcast_list_elem* %65, i64 %67
  %69 = getelementptr inbounds %struct.bnx2x_mcast_list_elem, %struct.bnx2x_mcast_list_elem* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 4
  %70 = load %struct.bnx2x_mcast_list_elem*, %struct.bnx2x_mcast_list_elem** %12, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.bnx2x_mcast_list_elem, %struct.bnx2x_mcast_list_elem* %70, i64 %72
  %74 = getelementptr inbounds %struct.bnx2x_mcast_list_elem, %struct.bnx2x_mcast_list_elem* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %13, i32 0, i32 1
  %76 = call i32 @list_add_tail(i32* %74, i32* %75)
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %55

80:                                               ; preds = %55
  %81 = load i32, i32* %10, align 4
  %82 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %13, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %84 = load i32, i32* @BNX2X_MCAST_CMD_SET, align 4
  %85 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %83, %struct.bnx2x_mcast_ramrod_params* %13, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %80
  br label %100

91:                                               ; preds = %49
  %92 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %93 = load i32, i32* @BNX2X_MCAST_CMD_DEL, align 4
  %94 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %92, %struct.bnx2x_mcast_ramrod_params* %13, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %91
  br label %100

100:                                              ; preds = %99, %90
  %101 = load %struct.bnx2x_mcast_list_elem*, %struct.bnx2x_mcast_list_elem** %12, align 8
  %102 = call i32 @kfree(%struct.bnx2x_mcast_list_elem* %101)
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %44
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.bnx2x_mcast_ramrod_params*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.bnx2x_mcast_list_elem* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bnx2x_config_mcast(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32) #1

declare dso_local i32 @kfree(%struct.bnx2x_mcast_list_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
