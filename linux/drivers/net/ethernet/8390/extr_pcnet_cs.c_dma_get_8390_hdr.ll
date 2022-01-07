; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_dma_get_8390_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_dma_get_8390_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.e8390_pkt_hdr = type { i32 }

@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [63 x i8] c"DMAing conflict in dma_block_input.[DMAstat:%1x][irqlock:%1x]\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.e8390_pkt_hdr*, i32)* @dma_get_8390_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_get_8390_hdr(%struct.net_device* %0, %struct.e8390_pkt_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e8390_pkt_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.e8390_pkt_hdr* %1, %struct.e8390_pkt_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %17 = call i32 @netdev_err(%struct.net_device* %14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %80

18:                                               ; preds = %3
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %21 = load i32, i32* @E8390_NODMA, align 4
  %22 = load i32, i32* @E8390_PAGE0, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @E8390_START, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @PCNET_CMD, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb_p(i32 %25, i64 %29)
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @EN0_RCNTLO, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb_p(i32 4, i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @EN0_RCNTHI, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb_p(i32 0, i64 %39)
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* @EN0_RSARLO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb_p(i32 0, i64 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @EN0_RSARHI, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb_p(i32 %46, i64 %50)
  %52 = load i32, i32* @E8390_RREAD, align 4
  %53 = load i32, i32* @E8390_START, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* @PCNET_CMD, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb_p(i32 %54, i64 %58)
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* @PCNET_DATAPORT, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %65 = call i32 @insw(i64 %63, %struct.e8390_pkt_hdr* %64, i32 2)
  %66 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %67 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %71 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @ENISR_RDC, align 4
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @EN0_ISR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outb_p(i32 %72, i64 %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %79 = and i32 %78, -2
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  br label %80

80:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @insw(i64, %struct.e8390_pkt_hdr*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
