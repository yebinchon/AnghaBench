; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.net_device = type { i32 }

@NFP_FL_FEATS_LAG = common dso_local global i32 0, align 4
@NOTIFY_STOP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, i64, i8*)* @nfp_flower_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_netdev_event(%struct.nfp_app* %0, %struct.net_device* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nfp_flower_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %12, i32 0, i32 0
  %14 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  store %struct.nfp_flower_priv* %14, %struct.nfp_flower_priv** %10, align 8
  %15 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %16 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFP_FL_FEATS_LAG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @nfp_flower_lag_netdev_event(%struct.nfp_flower_priv* %22, %struct.net_device* %23, i64 %24, i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @NOTIFY_STOP_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %62

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @nfp_flower_reg_indir_block_handler(%struct.nfp_app* %35, %struct.net_device* %36, i64 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @NOTIFY_STOP_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %62

45:                                               ; preds = %34
  %46 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @nfp_flower_internal_port_event_handler(%struct.nfp_app* %46, %struct.net_device* %47, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @NOTIFY_STOP_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %62

56:                                               ; preds = %45
  %57 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @nfp_tunnel_mac_event_handler(%struct.nfp_app* %57, %struct.net_device* %58, i64 %59, i8* %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %56, %54, %43, %31
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @nfp_flower_lag_netdev_event(%struct.nfp_flower_priv*, %struct.net_device*, i64, i8*) #1

declare dso_local i32 @nfp_flower_reg_indir_block_handler(%struct.nfp_app*, %struct.net_device*, i64) #1

declare dso_local i32 @nfp_flower_internal_port_event_handler(%struct.nfp_app*, %struct.net_device*, i64) #1

declare dso_local i32 @nfp_tunnel_mac_event_handler(%struct.nfp_app*, %struct.net_device*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
