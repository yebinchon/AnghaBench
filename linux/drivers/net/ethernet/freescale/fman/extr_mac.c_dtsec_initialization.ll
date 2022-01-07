; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_dtsec_initialization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_dtsec_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device = type { i32 (i32, i32, i32)*, i32, %struct.mac_priv_s* }
%struct.mac_priv_s = type { i32 }
%struct.fman_mac_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FM_MAC_EX_1G_RX_MIB_CNT_OVFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"FMan dTSEC version: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_device*)* @dtsec_initialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtsec_initialization(%struct.mac_device* %0) #0 {
  %2 = alloca %struct.mac_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_priv_s*, align 8
  %5 = alloca %struct.fman_mac_params, align 4
  %6 = alloca i32, align 4
  store %struct.mac_device* %0, %struct.mac_device** %2, align 8
  %7 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %8 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %7, i32 0, i32 2
  %9 = load %struct.mac_priv_s*, %struct.mac_priv_s** %8, align 8
  store %struct.mac_priv_s* %9, %struct.mac_priv_s** %4, align 8
  %10 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %11 = call i32 @set_fman_mac_params(%struct.mac_device* %10, %struct.fman_mac_params* %5)
  %12 = call i32 @dtsec_config(%struct.fman_mac_params* %5)
  %13 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %14 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %16 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %1
  %23 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %24 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (...) @fman_get_max_frm()
  %27 = call i32 @dtsec_cfg_max_frame_len(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %73

31:                                               ; preds = %22
  %32 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %33 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dtsec_cfg_pad_and_crc(i32 %34, i32 1)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %73

39:                                               ; preds = %31
  %40 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %41 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dtsec_init(i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %73

47:                                               ; preds = %39
  %48 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %49 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %48, i32 0, i32 0
  %50 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %49, align 8
  %51 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %52 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FM_MAC_EX_1G_RX_MIB_CNT_OVFL, align 4
  %55 = call i32 %50(i32 %53, i32 %54, i32 0)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %73

59:                                               ; preds = %47
  %60 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %61 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dtsec_get_version(i32 %62, i32* %6)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %73

67:                                               ; preds = %59
  %68 = load %struct.mac_priv_s*, %struct.mac_priv_s** %4, align 8
  %69 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_info(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %78

73:                                               ; preds = %66, %58, %46, %38, %30
  %74 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %75 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dtsec_free(i32 %76)
  br label %78

78:                                               ; preds = %73, %67, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @set_fman_mac_params(%struct.mac_device*, %struct.fman_mac_params*) #1

declare dso_local i32 @dtsec_config(%struct.fman_mac_params*) #1

declare dso_local i32 @dtsec_cfg_max_frame_len(i32, i32) #1

declare dso_local i32 @fman_get_max_frm(...) #1

declare dso_local i32 @dtsec_cfg_pad_and_crc(i32, i32) #1

declare dso_local i32 @dtsec_init(i32) #1

declare dso_local i32 @dtsec_get_version(i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dtsec_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
