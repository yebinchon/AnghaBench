; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_block_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_block_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i8* }
%struct.ei_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"[bi=%d]\0A\00", align 1
@EN0_RSARLO = common dso_local global i64 0, align 8
@EN0_RSARHI = common dso_local global i64 0, align 8
@E8390_RREAD = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@AXNET_CMD = common dso_local global i64 0, align 8
@AXNET_DATAPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, %struct.sk_buff*, i32)* @block_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @block_input(%struct.net_device* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ei_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ei_device* @netdev_priv(%struct.net_device* %16)
  store %struct.ei_device* %17, %struct.ei_device** %10, align 8
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  %22 = load %struct.ei_device*, %struct.ei_device** %10, align 8
  %23 = call i64 @netif_msg_rx_status(%struct.ei_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 4
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 4
  %32 = call i32 @netdev_dbg(%struct.net_device* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %25, %4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 255
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @EN0_RSARLO, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb_p(i32 %35, i64 %39)
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* @EN0_RSARHI, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb_p(i32 %42, i64 %46)
  %48 = load i32, i32* @E8390_RREAD, align 4
  %49 = load i32, i32* @E8390_START, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @AXNET_CMD, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb_p(i32 %50, i64 %54)
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* @AXNET_DATAPORT, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 1
  %63 = call i32 @insw(i64 %59, i8* %60, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %33
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* @AXNET_DATAPORT, align 8
  %71 = add nsw i64 %69, %70
  %72 = call signext i8 @inb(i64 %71)
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 %72, i8* %77, align 1
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %67, %33
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_rx_status(%struct.ei_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @insw(i64, i8*, i32) #1

declare dso_local signext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
