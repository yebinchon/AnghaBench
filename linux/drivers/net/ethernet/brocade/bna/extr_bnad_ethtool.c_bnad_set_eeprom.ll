; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i64, i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bnad_iocmd_comp = type { i32, i32, %struct.bnad* }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@bnad_cb_completion = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @bnad_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bnad*, align 8
  %9 = alloca %struct.bnad_iocmd_comp, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.bnad* @netdev_priv(%struct.net_device* %14)
  store %struct.bnad* %15, %struct.bnad** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.bnad*, %struct.bnad** %8, align 8
  %20 = getelementptr inbounds %struct.bnad, %struct.bnad* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bnad*, %struct.bnad** %8, align 8
  %25 = getelementptr inbounds %struct.bnad, %struct.bnad* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %23, %29
  %31 = icmp ne i32 %18, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %93

35:                                               ; preds = %3
  %36 = load %struct.bnad*, %struct.bnad** %8, align 8
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @bnad_get_flash_partition_by_offset(%struct.bnad* %36, i64 %39, i64* %11)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %93

46:                                               ; preds = %35
  %47 = load %struct.bnad*, %struct.bnad** %8, align 8
  %48 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 2
  store %struct.bnad* %47, %struct.bnad** %48, align 8
  %49 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 1
  %51 = call i32 @init_completion(i32* %50)
  %52 = load %struct.bnad*, %struct.bnad** %8, align 8
  %53 = getelementptr inbounds %struct.bnad, %struct.bnad* %52, i32 0, i32 0
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.bnad*, %struct.bnad** %8, align 8
  %57 = getelementptr inbounds %struct.bnad, %struct.bnad* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.bnad*, %struct.bnad** %8, align 8
  %61 = getelementptr inbounds %struct.bnad, %struct.bnad* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %65 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load i32, i32* @bnad_cb_completion, align 4
  %73 = call i32 @bfa_nw_flash_update_part(i32* %58, i64 %59, i32 %62, i32* %63, i32 %66, i64 %71, i32 %72, %struct.bnad_iocmd_comp* %9)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @BFA_STATUS_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %46
  %78 = load %struct.bnad*, %struct.bnad** %8, align 8
  %79 = getelementptr inbounds %struct.bnad, %struct.bnad* %78, i32 0, i32 0
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  br label %91

82:                                               ; preds = %46
  %83 = load %struct.bnad*, %struct.bnad** %8, align 8
  %84 = getelementptr inbounds %struct.bnad, %struct.bnad* %83, i32 0, i32 0
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 1
  %88 = call i32 @wait_for_completion(i32* %87)
  %89 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %82, %77
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %43, %32
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @bnad_get_flash_partition_by_offset(%struct.bnad*, i64, i64*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_nw_flash_update_part(i32*, i64, i32, i32*, i32, i64, i32, %struct.bnad_iocmd_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
