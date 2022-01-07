; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_repr = type { i32 }
%struct.nfp_port = type { i64 }

@NFP_PORT_PF_PORT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, i32, i8*)* @nfp_abm_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_setup_tc(%struct.nfp_app* %0, %struct.net_device* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nfp_repr*, align 8
  %11 = alloca %struct.nfp_port*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %12)
  store %struct.nfp_repr* %13, %struct.nfp_repr** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %14)
  store %struct.nfp_port* %15, %struct.nfp_port** %11, align 8
  %16 = load %struct.nfp_port*, %struct.nfp_port** %11, align 8
  %17 = icmp ne %struct.nfp_port* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.nfp_port*, %struct.nfp_port** %11, align 8
  %20 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NFP_PORT_PF_PORT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %65

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %62 [
    i32 128, label %29
    i32 130, label %36
    i32 129, label %43
    i32 131, label %50
    i32 132, label %57
  ]

29:                                               ; preds = %27
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load %struct.nfp_repr*, %struct.nfp_repr** %10, align 8
  %32 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @nfp_abm_setup_root(%struct.net_device* %30, i32 %33, i8* %34)
  store i32 %35, i32* %5, align 4
  br label %65

36:                                               ; preds = %27
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = load %struct.nfp_repr*, %struct.nfp_repr** %10, align 8
  %39 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @nfp_abm_setup_tc_mq(%struct.net_device* %37, i32 %40, i8* %41)
  store i32 %42, i32* %5, align 4
  br label %65

43:                                               ; preds = %27
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = load %struct.nfp_repr*, %struct.nfp_repr** %10, align 8
  %46 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @nfp_abm_setup_tc_red(%struct.net_device* %44, i32 %47, i8* %48)
  store i32 %49, i32* %5, align 4
  br label %65

50:                                               ; preds = %27
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = load %struct.nfp_repr*, %struct.nfp_repr** %10, align 8
  %53 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @nfp_abm_setup_tc_gred(%struct.net_device* %51, i32 %54, i8* %55)
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %27
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = load %struct.nfp_repr*, %struct.nfp_repr** %10, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @nfp_abm_setup_cls_block(%struct.net_device* %58, %struct.nfp_repr* %59, i8* %60)
  store i32 %61, i32* %5, align 4
  br label %65

62:                                               ; preds = %27
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %57, %50, %43, %36, %29, %24
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device*) #1

declare dso_local i32 @nfp_abm_setup_root(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @nfp_abm_setup_tc_mq(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @nfp_abm_setup_tc_red(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @nfp_abm_setup_tc_gred(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @nfp_abm_setup_cls_block(%struct.net_device*, %struct.nfp_repr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
