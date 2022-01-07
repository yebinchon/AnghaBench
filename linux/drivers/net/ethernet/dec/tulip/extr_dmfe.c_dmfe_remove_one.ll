; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.dmfe_board_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"dmfe_remove_one()\00", align 1
@DESC_ALL_CNT = common dso_local global i32 0, align 4
@TX_BUF_ALLOC = common dso_local global i32 0, align 4
@TX_DESC_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"dmfe_remove_one() exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @dmfe_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dmfe_board_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.dmfe_board_info* @netdev_priv(%struct.net_device* %7)
  store %struct.dmfe_board_info* %8, %struct.dmfe_board_info** %4, align 8
  %9 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0)
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @unregister_netdev(%struct.net_device* %13)
  %15 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %16 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %19 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pci_iounmap(i32 %17, i32 %20)
  %22 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %23 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DESC_ALL_CNT, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = add i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %31 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %34 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_free_consistent(i32 %24, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %38 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TX_BUF_ALLOC, align 4
  %41 = load i32, i32* @TX_DESC_CNT, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %42, 4
  %44 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %45 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %48 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pci_free_consistent(i32 %39, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = call i32 @pci_release_regions(%struct.pci_dev* %51)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @free_netdev(%struct.net_device* %53)
  br label %55

55:                                               ; preds = %12, %1
  %56 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.dmfe_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
