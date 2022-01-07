; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i64, i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bnad_iocmd_comp = type { i32, i32, %struct.bnad* }

@EFAULT = common dso_local global i32 0, align 4
@bnad_cb_completion = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @bnad_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
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
  %16 = load %struct.bnad*, %struct.bnad** %8, align 8
  %17 = getelementptr inbounds %struct.bnad, %struct.bnad* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bnad*, %struct.bnad** %8, align 8
  %22 = getelementptr inbounds %struct.bnad, %struct.bnad* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %20, %26
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bnad*, %struct.bnad** %8, align 8
  %31 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @bnad_get_flash_partition_by_offset(%struct.bnad* %30, i64 %33, i64* %11)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %87

40:                                               ; preds = %3
  %41 = load %struct.bnad*, %struct.bnad** %8, align 8
  %42 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 2
  store %struct.bnad* %41, %struct.bnad** %42, align 8
  %43 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 1
  %45 = call i32 @init_completion(i32* %44)
  %46 = load %struct.bnad*, %struct.bnad** %8, align 8
  %47 = getelementptr inbounds %struct.bnad, %struct.bnad* %46, i32 0, i32 0
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.bnad*, %struct.bnad** %8, align 8
  %51 = getelementptr inbounds %struct.bnad, %struct.bnad* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.bnad*, %struct.bnad** %8, align 8
  %55 = getelementptr inbounds %struct.bnad, %struct.bnad* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %59 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %62 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i32, i32* @bnad_cb_completion, align 4
  %67 = call i32 @bfa_nw_flash_read_part(i32* %52, i64 %53, i32 %56, i32* %57, i32 %60, i64 %65, i32 %66, %struct.bnad_iocmd_comp* %9)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @BFA_STATUS_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %40
  %72 = load %struct.bnad*, %struct.bnad** %8, align 8
  %73 = getelementptr inbounds %struct.bnad, %struct.bnad* %72, i32 0, i32 0
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %85

76:                                               ; preds = %40
  %77 = load %struct.bnad*, %struct.bnad** %8, align 8
  %78 = getelementptr inbounds %struct.bnad, %struct.bnad* %77, i32 0, i32 0
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 1
  %82 = call i32 @wait_for_completion(i32* %81)
  %83 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %76, %71
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %37
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @bnad_get_flash_partition_by_offset(%struct.bnad*, i64, i64*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_nw_flash_read_part(i32*, i64, i32, i32*, i32, i64, i32, %struct.bnad_iocmd_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
