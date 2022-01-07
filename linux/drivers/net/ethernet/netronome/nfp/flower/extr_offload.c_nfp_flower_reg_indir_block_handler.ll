; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_reg_indir_block_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_reg_indir_block_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.net_device = type { i32 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@NETDEV_REGISTER = common dso_local global i64 0, align 8
@nfp_flower_indr_setup_tc_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Indirect block reg failed - %s\0A\00", align 1
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_reg_indir_block_handler(%struct.nfp_app* %0, %struct.net_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %6, align 8
  %10 = call i32 @nfp_fl_is_netdev_to_offload(%struct.net_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %13, i32* %4, align 4
  br label %45

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @NETDEV_REGISTER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %21 = load i32, i32* @nfp_flower_indr_setup_tc_cb, align 4
  %22 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %23 = call i32 @__flow_indr_block_cb_register(%struct.net_device* %19, %struct.nfp_app* %20, i32 %21, %struct.nfp_app* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %18
  br label %43

33:                                               ; preds = %14
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load i32, i32* @nfp_flower_indr_setup_tc_cb, align 4
  %40 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %41 = call i32 @__flow_indr_block_cb_unregister(%struct.net_device* %38, i32 %39, %struct.nfp_app* %40)
  br label %42

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @nfp_fl_is_netdev_to_offload(%struct.net_device*) #1

declare dso_local i32 @__flow_indr_block_cb_register(%struct.net_device*, %struct.nfp_app*, i32, %struct.nfp_app*) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*, i32) #1

declare dso_local i32 @__flow_indr_block_cb_unregister(%struct.net_device*, i32, %struct.nfp_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
