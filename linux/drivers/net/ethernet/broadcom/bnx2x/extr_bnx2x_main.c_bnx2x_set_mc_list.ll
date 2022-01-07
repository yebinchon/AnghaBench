; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_mc_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_mc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i32*, i32* }

@mcast_group_list = common dso_local global i32 0, align 4
@BNX2X_MCAST_CMD_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to set a new multicast configuration: %d\0A\00", align 1
@BNX2X_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to clear multicast configuration %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_set_mc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_mc_list(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_mcast_ramrod_params, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %7 = load i32, i32* @mcast_group_list, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = bitcast %struct.bnx2x_mcast_ramrod_params* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = call i32 @bnx2x_set_mc_list_e1x(%struct.bnx2x* %17)
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %4, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i64 @netdev_mc_count(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = call i32 @bnx2x_init_mcast_macs_list(%struct.bnx2x* %27, %struct.bnx2x_mcast_ramrod_params* %4, i32* @mcast_group_list)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %56

33:                                               ; preds = %26
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = load i32, i32* @BNX2X_MCAST_CMD_SET, align 4
  %36 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %34, %struct.bnx2x_mcast_ramrod_params* %4, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = call i32 @bnx2x_free_mcast_macs_list(i32* @mcast_group_list)
  br label %54

44:                                               ; preds = %19
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = load i32, i32* @BNX2X_MCAST_CMD_DEL, align 4
  %47 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %45, %struct.bnx2x_mcast_ramrod_params* %4, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %31, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @LIST_HEAD(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_mc_list_e1x(%struct.bnx2x*) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @bnx2x_init_mcast_macs_list(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32*) #1

declare dso_local i32 @bnx2x_config_mcast(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @bnx2x_free_mcast_macs_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
