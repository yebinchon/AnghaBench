; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_mc_list_e1x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_mc_list_e1x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i32*, i32* }

@mcast_group_list = common dso_local global i32 0, align 4
@BNX2X_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to clear multicast configuration: %d\0A\00", align 1
@BNX2X_MCAST_CMD_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to set a new multicast configuration: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_set_mc_list_e1x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_mc_list_e1x(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bnx2x_mcast_ramrod_params, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %7 = load i32, i32* @mcast_group_list, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = bitcast %struct.bnx2x_mcast_ramrod_params* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %5, i32 0, i32 0
  store i32* %14, i32** %15, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = load i32, i32* @BNX2X_MCAST_CMD_DEL, align 4
  %18 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %16, %struct.bnx2x_mcast_ramrod_params* %5, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %49

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i64 @netdev_mc_count(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = call i32 @bnx2x_init_mcast_macs_list(%struct.bnx2x* %30, %struct.bnx2x_mcast_ramrod_params* %5, i32* @mcast_group_list)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %29
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = load i32, i32* @BNX2X_MCAST_CMD_ADD, align 4
  %39 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %37, %struct.bnx2x_mcast_ramrod_params* %5, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = call i32 @bnx2x_free_mcast_macs_list(i32* @mcast_group_list)
  br label %47

47:                                               ; preds = %45, %25
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %34, %21
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @LIST_HEAD(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bnx2x_config_mcast(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @bnx2x_init_mcast_macs_list(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32*) #1

declare dso_local i32 @bnx2x_free_mcast_macs_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
