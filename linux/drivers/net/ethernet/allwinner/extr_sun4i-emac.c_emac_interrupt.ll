; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_board_info = type { i32, i32, i64, i32 }

@EMAC_INT_CTL_REG = common dso_local global i64 0, align 8
@EMAC_INT_STA_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"emac interrupt %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" ab : %x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @emac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.emac_board_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %12)
  store %struct.emac_board_info* %13, %struct.emac_board_info** %6, align 8
  %14 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %15 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %14, i32 0, i32 1
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %19 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  %24 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %25 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EMAC_INT_STA_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i8* @readl(i64 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %33 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EMAC_INT_STA_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %39 = call i64 @netif_msg_intr(%struct.emac_board_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %43 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %2
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 256
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %53 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %58 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = call i32 @emac_rx(%struct.net_device* %59)
  br label %61

61:                                               ; preds = %56, %51, %47
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 3
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @emac_tx_done(%struct.net_device* %66, %struct.emac_board_info* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 12
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @netdev_info(%struct.net_device* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %80 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %100

83:                                               ; preds = %78
  %84 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %85 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i8* @readl(i64 %88)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, 271
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %95 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  br label %100

100:                                              ; preds = %83, %78
  %101 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %102 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %101, i32 0, i32 1
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %105
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i64 @netif_msg_intr(%struct.emac_board_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @emac_rx(%struct.net_device*) #1

declare dso_local i32 @emac_tx_done(%struct.net_device*, %struct.emac_board_info*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
