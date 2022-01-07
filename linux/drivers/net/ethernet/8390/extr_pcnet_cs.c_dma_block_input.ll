; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_dma_block_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_dma_block_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i8* }
%struct.ei_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"[bi=%d]\0A\00", align 1
@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"DMAing conflict in dma_block_input.[DMAstat:%1x][irqlock:%1x]\0A\00", align 1
@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@PCNET_CMD = common dso_local global i64 0, align 8
@EN0_RCNTLO = common dso_local global i64 0, align 8
@EN0_RCNTHI = common dso_local global i64 0, align 8
@EN0_RSARLO = common dso_local global i64 0, align 8
@EN0_RSARHI = common dso_local global i64 0, align 8
@E8390_RREAD = common dso_local global i32 0, align 4
@PCNET_DATAPORT = common dso_local global i64 0, align 8
@ENISR_RDC = common dso_local global i32 0, align 4
@EN0_ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, %struct.sk_buff*, i32)* @dma_block_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_block_input(%struct.net_device* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.ei_device* @netdev_priv(%struct.net_device* %20)
  store %struct.ei_device* %21, %struct.ei_device** %12, align 8
  %22 = load %struct.ei_device*, %struct.ei_device** %12, align 8
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
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %40 = call i32 @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  br label %123

41:                                               ; preds = %33
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %44 = load i32, i32* @E8390_NODMA, align 4
  %45 = load i32, i32* @E8390_PAGE0, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @E8390_START, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* @PCNET_CMD, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb_p(i32 %48, i64 %52)
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 255
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* @EN0_RCNTLO, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outb_p(i32 %55, i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* @EN0_RCNTHI, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb_p(i32 %62, i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 255
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* @EN0_RSARLO, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb_p(i32 %69, i64 %73)
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* @EN0_RSARHI, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb_p(i32 %76, i64 %80)
  %82 = load i32, i32* @E8390_RREAD, align 4
  %83 = load i32, i32* @E8390_START, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* @PCNET_CMD, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @outb_p(i32 %84, i64 %88)
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* @PCNET_DATAPORT, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %6, align 4
  %96 = ashr i32 %95, 1
  %97 = call i32 @insw(i64 %93, i8* %94, i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %41
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* @PCNET_DATAPORT, align 8
  %105 = add nsw i64 %103, %104
  %106 = call signext i8 @inb(i64 %105)
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  store i8 %106, i8* %111, align 1
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %101, %41
  %115 = load i32, i32* @ENISR_RDC, align 4
  %116 = load i32, i32* %9, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* @EN0_ISR, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outb_p(i32 %115, i64 %119)
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %122 = and i32 %121, -2
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  br label %123

123:                                              ; preds = %114, %36
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_rx_status(%struct.ei_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @insw(i64, i8*, i32) #1

declare dso_local signext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
