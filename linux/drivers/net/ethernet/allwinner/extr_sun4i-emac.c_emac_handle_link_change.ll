; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_handle_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_handle_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i32 }
%struct.emac_board_info = type { i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @emac_handle_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_handle_link_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_board_info*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %7)
  store %struct.emac_board_info* %8, %struct.emac_board_info** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %65

16:                                               ; preds = %1
  %17 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %18 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %26 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %25, i32 0, i32 3
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %33 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @emac_update_speed(%struct.net_device* %34)
  %36 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %37 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %36, i32 0, i32 3
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %24, %16
  %41 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %42 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %50 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %49, i32 0, i32 3
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %57 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = call i32 @emac_update_duplex(%struct.net_device* %58)
  %60 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %61 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %60, i32 0, i32 3
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %48, %40
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %67 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %70 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %80 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %82 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %81, i32 0, i32 1
  store i32 -1, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %88 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %65
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %94 = call i32 @phy_print_status(%struct.phy_device* %93)
  br label %95

95:                                               ; preds = %92, %89
  ret void
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @emac_update_speed(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @emac_update_duplex(%struct.net_device*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
