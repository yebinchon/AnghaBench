; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.net_device = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.frad_local = type { i32, %struct.net_device** }
%struct.buf_entry = type { i32, i32 }

@ARPHRD_DLCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Non DLCI device, type %i, tried to send on FRAD module\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown firmware type 0x%04X\0A\00", align 1
@SDLA_INFORMATION_WRITE = common dso_local global i32 0, align 4
@sdla_lock = common dso_local global i32 0, align 4
@SDLA_ADDR_MASK = common dso_local global i32 0, align 4
@CONFIG_DLCI_MAX = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @sdla_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_transmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.frad_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  %12 = alloca %struct.buf_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.frad_local* @netdev_priv(%struct.net_device* %13)
  store %struct.frad_local* %14, %struct.frad_local** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @netif_stop_queue(%struct.net_device* %15)
  store i32 1, i32* %8, align 4
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %37 [
    i32 135, label %20
  ]

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ARPHRD_DLCI, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @netdev_warn(%struct.net_device* %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %28, %20
  br label %43

37:                                               ; preds = %2
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @netdev_warn(%struct.net_device* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %37, %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %140

46:                                               ; preds = %43
  %47 = load %struct.frad_local*, %struct.frad_local** %5, align 8
  %48 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %119 [
    i32 130, label %50
    i32 129, label %50
    i32 128, label %67
  ]

50:                                               ; preds = %46, %46
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i32, i32* @SDLA_INFORMATION_WRITE, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i16*
  %59 = load i16, i16* %58, align 2
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sdla_cmd(%struct.net_device* %51, i32 %52, i16 signext %59, i32 0, i32* %62, i32 %65, i32* null, i16* null)
  store i32 %66, i32* %6, align 4
  br label %119

67:                                               ; preds = %46
  store i16 4, i16* %10, align 2
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = load i32, i32* @SDLA_INFORMATION_WRITE, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i16*
  %76 = load i16, i16* %75, align 2
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sdla_cmd(%struct.net_device* %68, i32 %69, i16 signext %76, i32 0, i32* null, i32 %79, i32* %7, i16* %10)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 131
  br i1 %82, label %83, label %118

83:                                               ; preds = %67
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @spin_lock_irqsave(i32* @sdla_lock, i64 %84)
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @SDLA_WINDOW(%struct.net_device* %86, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SDLA_ADDR_MASK, align 4
  %95 = and i32 %93, %94
  %96 = add nsw i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = bitcast i8* %98 to %struct.buf_entry*
  store %struct.buf_entry* %99, %struct.buf_entry** %12, align 8
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = load %struct.buf_entry*, %struct.buf_entry** %12, align 8
  %102 = getelementptr inbounds %struct.buf_entry, %struct.buf_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @__sdla_write(%struct.net_device* %100, i32 %103, i32* %106, i32 %109)
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @SDLA_WINDOW(%struct.net_device* %111, i32 %112)
  %114 = load %struct.buf_entry*, %struct.buf_entry** %12, align 8
  %115 = getelementptr inbounds %struct.buf_entry, %struct.buf_entry* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* @sdla_lock, i64 %116)
  br label %118

118:                                              ; preds = %83, %67
  br label %119

119:                                              ; preds = %46, %118, %50
  %120 = load i32, i32* %6, align 4
  switch i32 %120, label %133 [
    i32 131, label %121
    i32 133, label %127
    i32 134, label %127
    i32 132, label %127
  ]

121:                                              ; preds = %119
  %122 = load %struct.net_device*, %struct.net_device** %4, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %139

127:                                              ; preds = %119, %119, %119
  %128 = load %struct.net_device*, %struct.net_device** %4, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %139

133:                                              ; preds = %119
  %134 = load %struct.net_device*, %struct.net_device** %4, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %127, %121
  br label %140

140:                                              ; preds = %139, %43
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = call i32 @netif_wake_queue(%struct.net_device* %141)
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %166, %140
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %143
  %148 = load %struct.frad_local*, %struct.frad_local** %5, align 8
  %149 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %148, i32 0, i32 1
  %150 = load %struct.net_device**, %struct.net_device*** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.net_device*, %struct.net_device** %150, i64 %152
  %154 = load %struct.net_device*, %struct.net_device** %153, align 8
  %155 = icmp ne %struct.net_device* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %147
  %157 = load %struct.frad_local*, %struct.frad_local** %5, align 8
  %158 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %157, i32 0, i32 1
  %159 = load %struct.net_device**, %struct.net_device*** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.net_device*, %struct.net_device** %159, i64 %161
  %163 = load %struct.net_device*, %struct.net_device** %162, align 8
  %164 = call i32 @netif_wake_queue(%struct.net_device* %163)
  br label %165

165:                                              ; preds = %156, %147
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %143

169:                                              ; preds = %143
  %170 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %171 = call i32 @dev_kfree_skb(%struct.sk_buff* %170)
  %172 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %172
}

declare dso_local %struct.frad_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @sdla_cmd(%struct.net_device*, i32, i16 signext, i32, i32*, i32, i32*, i16*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SDLA_WINDOW(%struct.net_device*, i32) #1

declare dso_local i32 @__sdla_write(%struct.net_device*, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
