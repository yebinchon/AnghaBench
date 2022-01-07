; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ne2k-pci.c_ne2k_pci_block_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ne2k-pci.c_ne2k_pci_block_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.net_device = type { i64 }
%struct.sk_buff = type { i8* }

@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [67 x i8] c"DMAing conflict in ne2k_pci_block_input [DMAstat:%d][irqlock:%d].\0A\00", align 1
@ONLY_32BIT_IO = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, %struct.sk_buff*, i32)* @ne2k_pci_block_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ne2k_pci_block_input(%struct.net_device* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 2), align 4
  %24 = call i32 @netdev_err(%struct.net_device* %21, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %155

25:                                               ; preds = %4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %27 = or i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %29 = load i32, i32* @ONLY_32BIT_IO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 3
  %35 = and i32 %34, 65532
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* @E8390_NODMA, align 4
  %38 = load i32, i32* @E8390_PAGE0, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* @E8390_START, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @NE_CMD, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 %41, i64 %44)
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 255
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @EN0_RCNTLO, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 %47, i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @EN0_RCNTHI, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %53, i64 %56)
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 255
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @EN0_RSARLO, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outb(i32 %59, i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @EN0_RSARHI, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outb(i32 %65, i64 %68)
  %70 = load i32, i32* @E8390_RREAD, align 4
  %71 = load i32, i32* @E8390_START, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @NE_CMD, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 %72, i64 %75)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %78 = load i32, i32* @ONLY_16BIT_IO, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %36
  %82 = load i64, i64* @NE_BASE, align 8
  %83 = load i64, i64* @NE_DATAPORT, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %6, align 4
  %87 = ashr i32 %86, 1
  %88 = call i32 @insw(i64 %84, i8* %85, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %81
  %93 = load i64, i64* @NE_BASE, align 8
  %94 = load i64, i64* @NE_DATAPORT, align 8
  %95 = add nsw i64 %93, %94
  %96 = call signext i8 @inb(i64 %95)
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 %96, i8* %101, align 1
  br label %102

102:                                              ; preds = %92, %81
  br label %147

103:                                              ; preds = %36
  %104 = load i64, i64* @NE_BASE, align 8
  %105 = load i64, i64* @NE_DATAPORT, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %6, align 4
  %109 = ashr i32 %108, 2
  %110 = call i32 @insl(i64 %106, i8* %107, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, 3
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %103
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, -4
  %117 = load i8*, i8** %10, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %10, align 8
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, 2
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %114
  %124 = load i8*, i8** %10, align 8
  %125 = bitcast i8* %124 to i32*
  store i32* %125, i32** %11, align 8
  %126 = load i64, i64* @NE_BASE, align 8
  %127 = load i64, i64* @NE_DATAPORT, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @inw(i64 %128)
  %130 = call i32 @cpu_to_le16(i32 %129)
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %11, align 8
  store i32 %130, i32* %131, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = bitcast i32* %133 to i8*
  store i8* %134, i8** %10, align 8
  br label %135

135:                                              ; preds = %123, %114
  %136 = load i32, i32* %6, align 4
  %137 = and i32 %136, 1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i64, i64* @NE_BASE, align 8
  %141 = load i64, i64* @NE_DATAPORT, align 8
  %142 = add nsw i64 %140, %141
  %143 = call signext i8 @inb(i64 %142)
  %144 = load i8*, i8** %10, align 8
  store i8 %143, i8* %144, align 1
  br label %145

145:                                              ; preds = %139, %135
  br label %146

146:                                              ; preds = %145, %103
  br label %147

147:                                              ; preds = %146, %102
  %148 = load i32, i32* @ENISR_RDC, align 4
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* @EN0_ISR, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @outb(i32 %148, i64 %151)
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %154 = and i32 %153, -2
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  br label %155

155:                                              ; preds = %147, %20
  ret void
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @insw(i64, i8*, i32) #1

declare dso_local signext i8 @inb(i64) #1

declare dso_local i32 @insl(i64, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
