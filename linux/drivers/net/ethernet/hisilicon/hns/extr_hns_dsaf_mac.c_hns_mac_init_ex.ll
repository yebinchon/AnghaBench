; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_init_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_init_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.mac_params = type { i32 }
%struct.mac_driver = type { i32 (i32*)* }

@MAC_SPEED_10000 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mac_cb*)* @hns_mac_init_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mac_init_ex(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_mac_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac_params, align 4
  %6 = alloca %struct.mac_driver*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %3, align 8
  %7 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %8 = call i32 @hns_dsaf_fix_mac_mode(%struct.hns_mac_cb* %7)
  %9 = call i32 @memset(%struct.mac_params* %5, i32 0, i32 4)
  %10 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %11 = call i32 @hns_mac_param_get(%struct.mac_params* %5, %struct.hns_mac_cb* %10)
  %12 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @MAC_SPEED_FROM_MODE(i32 %13)
  %15 = load i64, i64* @MAC_SPEED_10000, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %19 = call i64 @hns_gmac_config(%struct.hns_mac_cb* %18, %struct.mac_params* %5)
  %20 = inttoptr i64 %19 to %struct.mac_driver*
  store %struct.mac_driver* %20, %struct.mac_driver** %6, align 8
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %23 = call i64 @hns_xgmac_config(%struct.hns_mac_cb* %22, %struct.mac_params* %5)
  %24 = inttoptr i64 %23 to %struct.mac_driver*
  store %struct.mac_driver* %24, %struct.mac_driver** %6, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %27 = icmp ne %struct.mac_driver* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %73

31:                                               ; preds = %25
  %32 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %33 = bitcast %struct.mac_driver* %32 to i8*
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %36 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32* %34, i32** %37, align 8
  %38 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %39 = call i32 @hns_mac_reset(%struct.hns_mac_cb* %38)
  %40 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %41 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %42 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %45 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @hns_mac_adjust_link(%struct.hns_mac_cb* %40, i32 %43, i32 %49)
  %51 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %52 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %53 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @hns_mac_port_config_bc_en(%struct.hns_mac_cb* %51, i32 %54, i32 0, i32 1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %31
  br label %60

59:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %73

60:                                               ; preds = %58
  %61 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %62 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %61, i32 0, i32 0
  %63 = load i32 (i32*)*, i32 (i32*)** %62, align 8
  %64 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %65 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 %63(i32* %67)
  %69 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %70 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %60, %59, %28
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @hns_dsaf_fix_mac_mode(%struct.hns_mac_cb*) #1

declare dso_local i32 @memset(%struct.mac_params*, i32, i32) #1

declare dso_local i32 @hns_mac_param_get(%struct.mac_params*, %struct.hns_mac_cb*) #1

declare dso_local i64 @MAC_SPEED_FROM_MODE(i32) #1

declare dso_local i64 @hns_gmac_config(%struct.hns_mac_cb*, %struct.mac_params*) #1

declare dso_local i64 @hns_xgmac_config(%struct.hns_mac_cb*, %struct.mac_params*) #1

declare dso_local i32 @hns_mac_reset(%struct.hns_mac_cb*) #1

declare dso_local i32 @hns_mac_adjust_link(%struct.hns_mac_cb*, i32, i32) #1

declare dso_local i32 @hns_mac_port_config_bc_en(%struct.hns_mac_cb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
