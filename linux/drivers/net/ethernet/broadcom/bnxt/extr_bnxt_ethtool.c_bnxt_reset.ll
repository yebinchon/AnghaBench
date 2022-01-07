; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Reset is not supported from a VF\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Reset not allowed when VFs are assigned to VMs\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ETH_RESET_ALL = common dso_local global i64 0, align 8
@BNXT_FW_RESET_CHIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Reset request successful. Reload driver to complete reset\0A\00", align 1
@ETH_RESET_AP = common dso_local global i64 0, align 8
@BNXT_FW_RESET_AP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Reset Application Processor request successful.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*)* @bnxt_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_reset(%struct.net_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.bnxt* @netdev_priv(%struct.net_device* %8)
  store %struct.bnxt* %9, %struct.bnxt** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %11 = call i32 @BNXT_PF(%struct.bnxt* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @netdev_err(%struct.net_device* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @pci_vfs_assigned(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %83

29:                                               ; preds = %18
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ETH_RESET_ALL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 67587
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %83

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* @BNXT_FW_RESET_CHIP, align 4
  %45 = call i32 @bnxt_firmware_reset(%struct.net_device* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @netdev_info(%struct.net_device* %49, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i64*, i64** %5, align 8
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %81

53:                                               ; preds = %29
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ETH_RESET_AP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %60 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 67587
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %83

66:                                               ; preds = %58
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = load i32, i32* @BNXT_FW_RESET_AP, align 4
  %69 = call i32 @bnxt_firmware_reset(%struct.net_device* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i32 @netdev_info(%struct.net_device* %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i64*, i64** %5, align 8
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %72, %66
  br label %80

77:                                               ; preds = %53
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %76
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %63, %39, %24, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BNXT_PF(%struct.bnxt*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @pci_vfs_assigned(i32) #1

declare dso_local i32 @bnxt_firmware_reset(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
