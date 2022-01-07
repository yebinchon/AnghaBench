; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smc_private = type { i32, i64, i32, %struct.sk_buff* }

@.str = private unnamed_addr constant [49 x i8] c"smc_start_xmit(length = %d) called, status %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Internal error -- sent packet while busy\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Far too big packet error: %d pages\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@MC_RESET = common dso_local global i16 0, align 2
@MMU_CMD = common dso_local global i32 0, align 4
@MC_ALLOC = common dso_local global i32 0, align 4
@MEMORY_WAIT_TIME = common dso_local global i16 0, align 2
@INTERRUPT = common dso_local global i32 0, align 4
@IM_ALLOC_INT = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [29 x i8] c"memory allocation deferred.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @smc_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.smc_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.smc_private* @netdev_priv(%struct.net_device* %12)
  store %struct.smc_private* %13, %struct.smc_private** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 2
  %25 = call signext i16 @inw(i32 %24)
  %26 = sext i16 %25 to i32
  %27 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %29 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %28, i32 0, i32 3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %40, i32* %3, align 4
  br label %155

41:                                               ; preds = %2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %44 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %43, i32 0, i32 3
  store %struct.sk_buff* %42, %struct.sk_buff** %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 8
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 7
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @dev_kfree_skb(%struct.sk_buff* %55)
  %57 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %58 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %57, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %155

65:                                               ; preds = %41
  %66 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %67 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %71 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %70, i32 0, i32 0
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = call i32 @SMC_SELECT_BANK(i32 2)
  %75 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %76 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %65
  %80 = load i16, i16* @MC_RESET, align 2
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @MMU_CMD, align 4
  %83 = add i32 %81, %82
  %84 = call i32 @outw(i16 signext %80, i32 %83)
  %85 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %86 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %79, %65
  %88 = load i32, i32* @MC_ALLOC, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %88, %89
  %91 = trunc i32 %90 to i16
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @MMU_CMD, align 4
  %94 = add i32 %92, %93
  %95 = call i32 @outw(i16 signext %91, i32 %94)
  %96 = load i16, i16* @MEMORY_WAIT_TIME, align 2
  store i16 %96, i16* %9, align 2
  br label %97

97:                                               ; preds = %132, %87
  %98 = load i16, i16* %9, align 2
  %99 = sext i16 %98 to i32
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %135

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @INTERRUPT, align 4
  %104 = add i32 %102, %103
  %105 = call signext i16 @inw(i32 %104)
  store i16 %105, i16* %10, align 2
  %106 = load i16, i16* %10, align 2
  %107 = sext i16 %106 to i32
  %108 = load i16, i16* @IM_ALLOC_INT, align 2
  %109 = sext i16 %108 to i32
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %101
  %113 = load i16, i16* %10, align 2
  %114 = sext i16 %113 to i32
  %115 = and i32 %114, 65280
  %116 = load i16, i16* @IM_ALLOC_INT, align 2
  %117 = sext i16 %116 to i32
  %118 = or i32 %115, %117
  %119 = trunc i32 %118 to i16
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @INTERRUPT, align 4
  %122 = add i32 %120, %121
  %123 = call i32 @outw(i16 signext %119, i32 %122)
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = call i32 @smc_hardware_send_packet(%struct.net_device* %124)
  %126 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %127 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %126, i32 0, i32 0
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %130, i32* %3, align 4
  br label %155

131:                                              ; preds = %101
  br label %132

132:                                              ; preds = %131
  %133 = load i16, i16* %9, align 2
  %134 = add i16 %133, -1
  store i16 %134, i16* %9, align 2
  br label %97

135:                                              ; preds = %97
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i16, i16* @IM_ALLOC_INT, align 2
  %139 = sext i16 %138 to i32
  %140 = shl i32 %139, 8
  %141 = load i16, i16* %10, align 2
  %142 = sext i16 %141 to i32
  %143 = and i32 %142, 65280
  %144 = or i32 %140, %143
  %145 = trunc i32 %144 to i16
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @INTERRUPT, align 4
  %148 = add i32 %146, %147
  %149 = call i32 @outw(i16 signext %145, i32 %148)
  %150 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %151 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %150, i32 0, i32 0
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %135, %112, %51, %32
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local signext i16 @inw(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outw(i16 signext, i32) #1

declare dso_local i32 @smc_hardware_send_packet(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
