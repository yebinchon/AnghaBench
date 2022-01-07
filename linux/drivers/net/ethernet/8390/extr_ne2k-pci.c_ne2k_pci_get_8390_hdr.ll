; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ne2k-pci.c_ne2k_pci_get_8390_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ne2k-pci.c_ne2k_pci_get_8390_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.net_device = type { i64 }
%struct.e8390_pkt_hdr = type { i32 }

@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [68 x i8] c"DMAing conflict in ne2k_pci_get_8390_hdr [DMAstat:%d][irqlock:%d].\0A\00", align 1
@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@NE_CMD = common dso_local global i64 0, align 8
@EN0_RCNTLO = common dso_local global i64 0, align 8
@EN0_RCNTHI = common dso_local global i64 0, align 8
@EN0_RSARLO = common dso_local global i64 0, align 8
@EN0_RSARHI = common dso_local global i64 0, align 8
@E8390_RREAD = common dso_local global i32 0, align 4
@ONLY_16BIT_IO = common dso_local global i32 0, align 4
@NE_BASE = common dso_local global i64 0, align 8
@NE_DATAPORT = common dso_local global i64 0, align 8
@ENISR_RDC = common dso_local global i32 0, align 4
@EN0_ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.e8390_pkt_hdr*, i32)* @ne2k_pci_get_8390_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ne2k_pci_get_8390_hdr(%struct.net_device* %0, %struct.e8390_pkt_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e8390_pkt_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.e8390_pkt_hdr* %1, %struct.e8390_pkt_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 2), align 4
  %17 = call i32 @netdev_err(%struct.net_device* %14, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %83

18:                                               ; preds = %3
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %21 = load i32, i32* @E8390_NODMA, align 4
  %22 = load i32, i32* @E8390_PAGE0, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @E8390_START, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @NE_CMD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %25, i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @EN0_RCNTLO, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i32 4, i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @EN0_RCNTHI, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 0, i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @EN0_RSARLO, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 0, i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @EN0_RSARHI, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb(i32 %42, i64 %45)
  %47 = load i32, i32* @E8390_RREAD, align 4
  %48 = load i32, i32* @E8390_START, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @NE_CMD, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i32 %49, i64 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %55 = load i32, i32* @ONLY_16BIT_IO, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %18
  %59 = load i64, i64* @NE_BASE, align 8
  %60 = load i64, i64* @NE_DATAPORT, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %63 = call i32 @insw(i64 %61, %struct.e8390_pkt_hdr* %62, i32 2)
  br label %75

64:                                               ; preds = %18
  %65 = load i64, i64* @NE_BASE, align 8
  %66 = load i64, i64* @NE_DATAPORT, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @inl(i64 %67)
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %71 = bitcast %struct.e8390_pkt_hdr* %70 to i32*
  store i32 %69, i32* %71, align 4
  %72 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %73 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %72, i32 0, i32 0
  %74 = call i32 @le16_to_cpus(i32* %73)
  br label %75

75:                                               ; preds = %64, %58
  %76 = load i32, i32* @ENISR_RDC, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @EN0_ISR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb(i32 %76, i64 %79)
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %82 = and i32 %81, -2
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  br label %83

83:                                               ; preds = %75, %13
  ret void
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @insw(i64, %struct.e8390_pkt_hdr*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
