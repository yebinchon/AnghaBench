; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_set_filter_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_set_filter_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dmfe_board_info = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"dmfe_set_filter_mode()\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Enable PROM Mode\00", align 1
@CR6_PM = common dso_local global i32 0, align 4
@CR6_PBF = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@DMFE_MAX_MULTICAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Pass all multicast address\00", align 1
@CR6_PAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Set multicast address\00", align 1
@PCI_DM9132_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dmfe_set_filter_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_set_filter_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dmfe_board_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.dmfe_board_info* @netdev_priv(%struct.net_device* %6)
  store %struct.dmfe_board_info* %7, %struct.dmfe_board_info** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netdev_mc_count(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 0)
  %11 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %12 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %11, i32 0, i32 2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %23 = load i32, i32* @CR6_PM, align 4
  %24 = load i32, i32* @CR6_PBF, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %27 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %31 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %34 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @update_cr6(i32 %32, i32 %35)
  %37 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %38 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %37, i32 0, i32 2
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %91

41:                                               ; preds = %1
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_ALLMULTI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @DMFE_MAX_MULTICAST, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48, %41
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @CR6_PM, align 4
  %56 = load i32, i32* @CR6_PBF, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %60 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @CR6_PAM, align 4
  %64 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %65 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %69 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %68, i32 0, i32 2
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %91

72:                                               ; preds = %48
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %76 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI_DM9132_ID, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = call i32 @dm9132_id_table(%struct.net_device* %81)
  br label %86

83:                                               ; preds = %72
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = call i32 @send_filter_frame(%struct.net_device* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %88 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %87, i32 0, i32 2
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  br label %91

91:                                               ; preds = %86, %52, %21
  ret void
}

declare dso_local %struct.dmfe_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_cr6(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dm9132_id_table(%struct.net_device*) #1

declare dso_local i32 @send_filter_frame(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
