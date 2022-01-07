; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.adf7242_local* }
%struct.adf7242_local = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }

@FLAG_XMIT = common dso_local global i32 0, align 4
@CMD_RC_PHY_RDY = common dso_local global i32 0, align 4
@CMD_RC_CSMACA = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timeout waiting for TX interrupt\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Error xmit: Retry count exceeded Status=0x%x\0A\00", align 1
@ECOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, %struct.sk_buff*)* @adf7242_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf7242_xmit(%struct.ieee802154_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee802154_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.adf7242_local*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %7, i32 0, i32 0
  %9 = load %struct.adf7242_local*, %struct.adf7242_local** %8, align 8
  store %struct.adf7242_local* %9, %struct.adf7242_local** %5, align 8
  %10 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %11 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @disable_irq(i32 %14)
  %16 = load i32, i32* @FLAG_XMIT, align 4
  %17 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %18 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %21 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %20, i32 0, i32 4
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %24 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %23, i32 0, i32 3
  %25 = call i32 @reinit_completion(i32* %24)
  %26 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %27 = load i32, i32* @CMD_RC_PHY_RDY, align 4
  %28 = call i32 @adf7242_cmd(%struct.adf7242_local* %26, i32 %27)
  %29 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %30 = call i32 @adf7242_clear_irqstat(%struct.adf7242_local* %29)
  %31 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @adf7242_write_fbuf(%struct.adf7242_local* %31, i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %94

42:                                               ; preds = %2
  %43 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %44 = load i32, i32* @CMD_RC_CSMACA, align 4
  %45 = call i32 @adf7242_cmd(%struct.adf7242_local* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %94

49:                                               ; preds = %42
  %50 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %51 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @enable_irq(i32 %54)
  %56 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %57 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %56, i32 0, i32 3
  %58 = load i32, i32* @HZ, align 4
  %59 = sdiv i32 %58, 10
  %60 = call i32 @wait_for_completion_interruptible_timeout(i32* %57, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %94

64:                                               ; preds = %49
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %69 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %94

75:                                               ; preds = %64
  %76 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %77 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %83 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %87 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %85, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @ECOMM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %93

92:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %81
  br label %94

94:                                               ; preds = %93, %67, %63, %48, %41
  %95 = load i32, i32* @FLAG_XMIT, align 4
  %96 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %97 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %96, i32 0, i32 1
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  %99 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %100 = call i32 @adf7242_cmd_rx(%struct.adf7242_local* %99)
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @adf7242_cmd(%struct.adf7242_local*, i32) #1

declare dso_local i32 @adf7242_clear_irqstat(%struct.adf7242_local*) #1

declare dso_local i32 @adf7242_write_fbuf(%struct.adf7242_local*, i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @adf7242_cmd_rx(%struct.adf7242_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
