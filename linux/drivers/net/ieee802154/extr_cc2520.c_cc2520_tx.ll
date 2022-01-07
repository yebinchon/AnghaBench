; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.cc2520_private* }
%struct.cc2520_private = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@CC2520_CMD_SFLUSHTX = common dso_local global i32 0, align 4
@CC2520_STATUS_TX_UNDERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cc2520 tx underflow exception\0A\00", align 1
@CC2520_CMD_STXONCCA = common dso_local global i32 0, align 4
@CC2520_CMD_SRXON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, %struct.sk_buff*)* @cc2520_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_tx(%struct.ieee802154_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cc2520_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %12, i32 0, i32 0
  %14 = load %struct.cc2520_private*, %struct.cc2520_private** %13, align 8
  store %struct.cc2520_private* %14, %struct.cc2520_private** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %16 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @crc_ccitt(i32 0, i32 %22, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @skb_put(%struct.sk_buff* %28, i32 2)
  %30 = call i32 @put_unaligned_le16(i32 %27, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %34, %19
  %40 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %41 = load i32, i32* @CC2520_CMD_SFLUSHTX, align 4
  %42 = call i32 @cc2520_cmd_strobe(%struct.cc2520_private* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %123

46:                                               ; preds = %39
  %47 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cc2520_write_txfifo(%struct.cc2520_private* %47, i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %123

59:                                               ; preds = %46
  %60 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %61 = call i32 @cc2520_get_status(%struct.cc2520_private* %60, i32* %9)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %123

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @CC2520_STATUS_TX_UNDERFLOW, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %72 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %123

76:                                               ; preds = %65
  %77 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %78 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %77, i32 0, i32 1
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %82 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %86 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %88 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %87, i32 0, i32 1
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %92 = load i32, i32* @CC2520_CMD_STXONCCA, align 4
  %93 = call i32 @cc2520_cmd_strobe(%struct.cc2520_private* %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %76
  br label %112

97:                                               ; preds = %76
  %98 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %99 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %98, i32 0, i32 2
  %100 = call i32 @wait_for_completion_interruptible(i32* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %112

104:                                              ; preds = %97
  %105 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %106 = load i32, i32* @CC2520_CMD_SFLUSHTX, align 4
  %107 = call i32 @cc2520_cmd_strobe(%struct.cc2520_private* %105, i32 %106)
  %108 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %109 = load i32, i32* @CC2520_CMD_SRXON, align 4
  %110 = call i32 @cc2520_cmd_strobe(%struct.cc2520_private* %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %125

112:                                              ; preds = %103, %96
  %113 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %114 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %113, i32 0, i32 1
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %118 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %120 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %119, i32 0, i32 1
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  br label %123

123:                                              ; preds = %112, %70, %64, %58, %45
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %104
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @crc_ccitt(i32, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cc2520_cmd_strobe(%struct.cc2520_private*, i32) #1

declare dso_local i32 @cc2520_write_txfifo(%struct.cc2520_private*, i32, i32, i32) #1

declare dso_local i32 @cc2520_get_status(%struct.cc2520_private*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
