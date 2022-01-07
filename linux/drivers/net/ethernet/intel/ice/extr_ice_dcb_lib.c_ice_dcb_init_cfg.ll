; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_dcb_init_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_dcb_init_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ice_port_info* }
%struct.ice_port_info = type { i32 }
%struct.ice_dcbx_cfg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Configuring initial DCB values\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*, i32)* @ice_dcb_init_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_dcb_init_cfg(%struct.ice_pf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_dcbx_cfg*, align 8
  %7 = alloca %struct.ice_port_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ice_port_info*, %struct.ice_port_info** %11, align 8
  store %struct.ice_port_info* %12, %struct.ice_port_info** %7, align 8
  %13 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ice_dcbx_cfg* @devm_kzalloc(i32* %16, i32 4, i32 %17)
  store %struct.ice_dcbx_cfg* %18, %struct.ice_dcbx_cfg** %6, align 8
  %19 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %6, align 8
  %20 = icmp ne %struct.ice_dcbx_cfg* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %6, align 8
  %26 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %27 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %26, i32 0, i32 0
  %28 = call i32 @memcpy(%struct.ice_dcbx_cfg* %25, i32* %27, i32 4)
  %29 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %30 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %29, i32 0, i32 0
  %31 = call i32 @memset(i32* %30, i32 0, i32 4)
  %32 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %33 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %38 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @ice_pf_dcb_cfg(%struct.ice_pf* %37, %struct.ice_dcbx_cfg* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %24
  %46 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %47 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %6, align 8
  %51 = call i32 @devm_kfree(i32* %49, %struct.ice_dcbx_cfg* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.ice_dcbx_cfg* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ice_dcbx_cfg*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @ice_pf_dcb_cfg(%struct.ice_pf*, %struct.ice_dcbx_cfg*, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_dcbx_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
