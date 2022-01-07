; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_flash_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_flash_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_flash = type { i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bnad_iocmd_comp = type { i32, i32, %struct.bnad* }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"can't load firmware %s\0A\00", align 1
@BFA_FLASH_PART_FWIMG = common dso_local global i32 0, align 4
@bnad_cb_completion = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"flash update failed with err=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"firmware image update failed with err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_flash*)* @bnad_flash_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_flash_device(%struct.net_device* %0, %struct.ethtool_flash* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_flash*, align 8
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.bnad_iocmd_comp, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_flash* %1, %struct.ethtool_flash** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bnad* @netdev_priv(%struct.net_device* %9)
  store %struct.bnad* %10, %struct.bnad** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_flash*, %struct.ethtool_flash** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bnad*, %struct.bnad** %5, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @request_firmware(%struct.firmware** %7, i32 %13, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load %struct.ethtool_flash*, %struct.ethtool_flash** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netdev_err(%struct.net_device* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %82

27:                                               ; preds = %2
  %28 = load %struct.bnad*, %struct.bnad** %5, align 8
  %29 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 2
  store %struct.bnad* %28, %struct.bnad** %29, align 8
  %30 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 1
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.bnad*, %struct.bnad** %5, align 8
  %34 = getelementptr inbounds %struct.bnad, %struct.bnad* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.bnad*, %struct.bnad** %5, align 8
  %37 = getelementptr inbounds %struct.bnad, %struct.bnad* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* @BFA_FLASH_PART_FWIMG, align 4
  %40 = load %struct.bnad*, %struct.bnad** %5, align 8
  %41 = getelementptr inbounds %struct.bnad, %struct.bnad* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.firmware*, %struct.firmware** %7, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load %struct.firmware*, %struct.firmware** %7, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @bnad_cb_completion, align 4
  %51 = call i32 @bfa_nw_flash_update_part(i32* %38, i32 %39, i32 %42, i32* %46, i32 %49, i32 0, i32 %50, %struct.bnad_iocmd_comp* %6)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @BFA_STATUS_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %27
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @netdev_warn(%struct.net_device* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.bnad*, %struct.bnad** %5, align 8
  %62 = getelementptr inbounds %struct.bnad, %struct.bnad* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_irq(i32* %62)
  br label %82

64:                                               ; preds = %27
  %65 = load %struct.bnad*, %struct.bnad** %5, align 8
  %66 = getelementptr inbounds %struct.bnad, %struct.bnad* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 1
  %69 = call i32 @wait_for_completion(i32* %68)
  %70 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BFA_STATUS_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @netdev_warn(%struct.net_device* %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %74, %64
  br label %82

82:                                               ; preds = %81, %55, %21
  %83 = load %struct.firmware*, %struct.firmware** %7, align 8
  %84 = call i32 @release_firmware(%struct.firmware* %83)
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bfa_nw_flash_update_part(i32*, i32, i32, i32*, i32, i32, i32, %struct.bnad_iocmd_comp*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
