; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.board_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"phy_write[%02x] = %04x\0A\00", align 1
@DM9000_EPAR = common dso_local global i32 0, align 4
@DM9000_PHY = common dso_local global i32 0, align 4
@DM9000_EPDRL = common dso_local global i32 0, align 4
@DM9000_EPDRH = common dso_local global i32 0, align 4
@DM9000_EPCR = common dso_local global i32 0, align 4
@EPCR_EPOS = common dso_local global i32 0, align 4
@EPCR_ERPRW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @dm9000_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9000_phy_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.board_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.board_info* @netdev_priv(%struct.net_device* %12)
  store %struct.board_info* %13, %struct.board_info** %9, align 8
  %14 = load %struct.board_info*, %struct.board_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @dm9000_dbg(%struct.board_info* %14, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.board_info*, %struct.board_info** %9, align 8
  %19 = getelementptr inbounds %struct.board_info, %struct.board_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load %struct.board_info*, %struct.board_info** %9, align 8
  %24 = getelementptr inbounds %struct.board_info, %struct.board_info* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  br label %26

26:                                               ; preds = %22, %4
  %27 = load %struct.board_info*, %struct.board_info** %9, align 8
  %28 = getelementptr inbounds %struct.board_info, %struct.board_info* %27, i32 0, i32 2
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.board_info*, %struct.board_info** %9, align 8
  %32 = getelementptr inbounds %struct.board_info, %struct.board_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @readb(i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load %struct.board_info*, %struct.board_info** %9, align 8
  %36 = load i32, i32* @DM9000_EPAR, align 4
  %37 = load i32, i32* @DM9000_PHY, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @iow(%struct.board_info* %35, i32 %36, i32 %39)
  %41 = load %struct.board_info*, %struct.board_info** %9, align 8
  %42 = load i32, i32* @DM9000_EPDRL, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @iow(%struct.board_info* %41, i32 %42, i32 %43)
  %45 = load %struct.board_info*, %struct.board_info** %9, align 8
  %46 = load i32, i32* @DM9000_EPDRH, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 8
  %49 = call i32 @iow(%struct.board_info* %45, i32 %46, i32 %48)
  %50 = load %struct.board_info*, %struct.board_info** %9, align 8
  %51 = load i32, i32* @DM9000_EPCR, align 4
  %52 = load i32, i32* @EPCR_EPOS, align 4
  %53 = load i32, i32* @EPCR_ERPRW, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @iow(%struct.board_info* %50, i32 %51, i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.board_info*, %struct.board_info** %9, align 8
  %58 = getelementptr inbounds %struct.board_info, %struct.board_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @writeb(i64 %56, i32 %59)
  %61 = load %struct.board_info*, %struct.board_info** %9, align 8
  %62 = getelementptr inbounds %struct.board_info, %struct.board_info* %61, i32 0, i32 2
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.board_info*, %struct.board_info** %9, align 8
  %66 = call i32 @dm9000_msleep(%struct.board_info* %65, i32 1)
  %67 = load %struct.board_info*, %struct.board_info** %9, align 8
  %68 = getelementptr inbounds %struct.board_info, %struct.board_info* %67, i32 0, i32 2
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.board_info*, %struct.board_info** %9, align 8
  %72 = getelementptr inbounds %struct.board_info, %struct.board_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @readb(i32 %73)
  store i64 %74, i64* %11, align 8
  %75 = load %struct.board_info*, %struct.board_info** %9, align 8
  %76 = load i32, i32* @DM9000_EPCR, align 4
  %77 = call i32 @iow(%struct.board_info* %75, i32 %76, i32 0)
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.board_info*, %struct.board_info** %9, align 8
  %80 = getelementptr inbounds %struct.board_info, %struct.board_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @writeb(i64 %78, i32 %81)
  %83 = load %struct.board_info*, %struct.board_info** %9, align 8
  %84 = getelementptr inbounds %struct.board_info, %struct.board_info* %83, i32 0, i32 2
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.board_info*, %struct.board_info** %9, align 8
  %88 = getelementptr inbounds %struct.board_info, %struct.board_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %26
  %92 = load %struct.board_info*, %struct.board_info** %9, align 8
  %93 = getelementptr inbounds %struct.board_info, %struct.board_info* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %91, %26
  ret void
}

declare dso_local %struct.board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dm9000_dbg(%struct.board_info*, i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readb(i32) #1

declare dso_local i32 @iow(%struct.board_info*, i32, i32) #1

declare dso_local i32 @writeb(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dm9000_msleep(%struct.board_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
