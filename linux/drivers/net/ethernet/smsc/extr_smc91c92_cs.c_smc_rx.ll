; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.smc_private = type { i32 }

@FIFO_PORTS = common dso_local global i64 0, align 8
@FP_RXEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"smc_rx() with nothing on Rx FIFO\0A\00", align 1
@PTR_READ = common dso_local global i32 0, align 4
@PTR_RCV = common dso_local global i32 0, align 4
@PTR_AUTOINC = common dso_local global i32 0, align 4
@POINTER = common dso_local global i64 0, align 8
@DATA_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Receive status %4.4x length %d.\0A\00", align 1
@RS_ERRORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Low memory, packet dropped.\0A\00", align 1
@MC_RELEASE = common dso_local global i32 0, align 4
@MMU_CMD = common dso_local global i64 0, align 8
@RS_ODDFRAME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RS_MULTICAST = common dso_local global i32 0, align 4
@RS_ALGNERR = common dso_local global i32 0, align 4
@RS_TOOSHORT = common dso_local global i32 0, align 4
@RS_TOOLONG = common dso_local global i32 0, align 4
@RS_BADCRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.smc_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* @FIFO_PORTS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inw(i64 %14)
  %16 = load i32, i32* @FP_RXEMPTY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @netdev_err(%struct.net_device* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %177

22:                                               ; preds = %1
  %23 = load i32, i32* @PTR_READ, align 4
  %24 = load i32, i32* @PTR_RCV, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PTR_AUTOINC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @POINTER, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outw(i32 %27, i64 %31)
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* @DATA_1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inw(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* @DATA_1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @inw(i64 %41)
  %43 = and i32 %42, 2047
  store i32 %43, i32* %5, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @RS_ERRORS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %129, label %52

52:                                               ; preds = %22
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call %struct.smc_private* @netdev_priv(%struct.net_device* %53)
  store %struct.smc_private* %54, %struct.smc_private** %7, align 8
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 2
  %58 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %55, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = icmp eq %struct.sk_buff* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @MC_RELEASE, align 4
  %70 = load i32, i32* %3, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* @MMU_CMD, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outw(i32 %69, i64 %73)
  br label %177

75:                                               ; preds = %52
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @RS_ODDFRAME, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 5, i32 6
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call i32 @skb_reserve(%struct.sk_buff* %84, i32 2)
  %86 = load i32, i32* %3, align 4
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* @DATA_1, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @skb_put(%struct.sk_buff* %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  %95 = ashr i32 %94, 1
  %96 = call i32 @insw(i64 %89, i32 %92, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = call i32 @eth_type_trans(%struct.sk_buff* %97, %struct.net_device* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i32 @netif_rx(%struct.sk_buff* %102)
  %104 = load i32, i32* @jiffies, align 4
  %105 = load %struct.smc_private*, %struct.smc_private** %7, align 8
  %106 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @RS_MULTICAST, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %75
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %75
  br label %170

129:                                              ; preds = %22
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @RS_ALGNERR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %129
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %129
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @RS_TOOSHORT, align 4
  %148 = load i32, i32* @RS_TOOLONG, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %146, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load %struct.net_device*, %struct.net_device** %2, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %152, %145
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @RS_BADCRC, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %163, %158
  br label %170

170:                                              ; preds = %169, %128
  %171 = load i32, i32* @MC_RELEASE, align 4
  %172 = load i32, i32* %3, align 4
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* @MMU_CMD, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @outw(i32 %171, i64 %175)
  br label %177

177:                                              ; preds = %170, %61, %19
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @insw(i64, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
