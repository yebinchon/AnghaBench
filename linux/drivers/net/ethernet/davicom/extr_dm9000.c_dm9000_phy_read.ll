; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.board_info = type { i32, i32, i32 }

@DM9000_EPAR = common dso_local global i32 0, align 4
@DM9000_PHY = common dso_local global i32 0, align 4
@DM9000_EPCR = common dso_local global i32 0, align 4
@EPCR_ERPRR = common dso_local global i32 0, align 4
@EPCR_EPOS = common dso_local global i32 0, align 4
@DM9000_EPDRH = common dso_local global i32 0, align 4
@DM9000_EPDRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy_read[%02x] -> %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @dm9000_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm9000_phy_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.board_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.board_info* @netdev_priv(%struct.net_device* %11)
  store %struct.board_info* %12, %struct.board_info** %7, align 8
  %13 = load %struct.board_info*, %struct.board_info** %7, align 8
  %14 = getelementptr inbounds %struct.board_info, %struct.board_info* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.board_info*, %struct.board_info** %7, align 8
  %17 = getelementptr inbounds %struct.board_info, %struct.board_info* %16, i32 0, i32 1
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.board_info*, %struct.board_info** %7, align 8
  %21 = getelementptr inbounds %struct.board_info, %struct.board_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @readb(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.board_info*, %struct.board_info** %7, align 8
  %25 = load i32, i32* @DM9000_EPAR, align 4
  %26 = load i32, i32* @DM9000_PHY, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @iow(%struct.board_info* %24, i32 %25, i32 %28)
  %30 = load %struct.board_info*, %struct.board_info** %7, align 8
  %31 = load i32, i32* @DM9000_EPCR, align 4
  %32 = load i32, i32* @EPCR_ERPRR, align 4
  %33 = load i32, i32* @EPCR_EPOS, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @iow(%struct.board_info* %30, i32 %31, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.board_info*, %struct.board_info** %7, align 8
  %38 = getelementptr inbounds %struct.board_info, %struct.board_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @writeb(i32 %36, i32 %39)
  %41 = load %struct.board_info*, %struct.board_info** %7, align 8
  %42 = getelementptr inbounds %struct.board_info, %struct.board_info* %41, i32 0, i32 1
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.board_info*, %struct.board_info** %7, align 8
  %46 = call i32 @dm9000_msleep(%struct.board_info* %45, i32 1)
  %47 = load %struct.board_info*, %struct.board_info** %7, align 8
  %48 = getelementptr inbounds %struct.board_info, %struct.board_info* %47, i32 0, i32 1
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.board_info*, %struct.board_info** %7, align 8
  %52 = getelementptr inbounds %struct.board_info, %struct.board_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @readb(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.board_info*, %struct.board_info** %7, align 8
  %56 = load i32, i32* @DM9000_EPCR, align 4
  %57 = call i32 @iow(%struct.board_info* %55, i32 %56, i32 0)
  %58 = load %struct.board_info*, %struct.board_info** %7, align 8
  %59 = load i32, i32* @DM9000_EPDRH, align 4
  %60 = call i32 @ior(%struct.board_info* %58, i32 %59)
  %61 = shl i32 %60, 8
  %62 = load %struct.board_info*, %struct.board_info** %7, align 8
  %63 = load i32, i32* @DM9000_EPDRL, align 4
  %64 = call i32 @ior(%struct.board_info* %62, i32 %63)
  %65 = or i32 %61, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.board_info*, %struct.board_info** %7, align 8
  %68 = getelementptr inbounds %struct.board_info, %struct.board_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @writeb(i32 %66, i32 %69)
  %71 = load %struct.board_info*, %struct.board_info** %7, align 8
  %72 = getelementptr inbounds %struct.board_info, %struct.board_info* %71, i32 0, i32 1
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.board_info*, %struct.board_info** %7, align 8
  %76 = getelementptr inbounds %struct.board_info, %struct.board_info* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.board_info*, %struct.board_info** %7, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @dm9000_dbg(%struct.board_info* %78, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local %struct.board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @iow(%struct.board_info*, i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dm9000_msleep(%struct.board_info*, i32) #1

declare dso_local i32 @ior(%struct.board_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dm9000_dbg(%struct.board_info*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
