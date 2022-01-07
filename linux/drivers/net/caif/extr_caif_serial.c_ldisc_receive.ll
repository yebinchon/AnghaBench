; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_ldisc_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_ldisc_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ser_device* }
%struct.ser_device = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Bytes received before initial transmission -bytes discarded.\0A\00", align 1
@ETH_P_CAIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32*, i8*, i32)* @ldisc_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldisc_receive(%struct.tty_struct* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ser_device*, align 8
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.ser_device*, %struct.ser_device** %13, align 8
  store %struct.ser_device* %14, %struct.ser_device** %10, align 8
  %15 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %16 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %4
  %21 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %22 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %27 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %93

31:                                               ; preds = %20, %4
  %32 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %33 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp eq %struct.TYPE_6__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %39 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_6__* %40, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %9, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = icmp eq %struct.sk_buff* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %93

47:                                               ; preds = %31
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @skb_put_data(%struct.sk_buff* %48, i32* %49, i32 %50)
  %52 = load i32, i32* @ETH_P_CAIF, align 4
  %53 = call i32 @htons(i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = call i32 @skb_reset_mac_header(%struct.sk_buff* %56)
  %58 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @debugfs_rx(%struct.ser_device* %58, i32* %59, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = call i32 @netif_rx_ni(%struct.sk_buff* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %47
  %67 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %68 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %76 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %74
  store i32 %81, i32* %79, align 4
  br label %90

82:                                               ; preds = %47
  %83 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %84 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %82, %66
  %91 = load %struct.ser_device*, %struct.ser_device** %10, align 8
  %92 = call i32 @update_tty_status(%struct.ser_device* %91)
  br label %93

93:                                               ; preds = %90, %46, %25
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @debugfs_rx(%struct.ser_device*, i32*, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @update_tty_status(%struct.ser_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
