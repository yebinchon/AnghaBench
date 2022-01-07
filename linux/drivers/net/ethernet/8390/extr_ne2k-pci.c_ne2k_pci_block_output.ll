; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ne2k-pci.c_ne2k_pci_block_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ne2k-pci.c_ne2k_pci_block_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@NE_BASE = common dso_local global i64 0, align 8
@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ONLY_32BIT_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"DMAing conflict in ne2k_pci_block_output.[DMAstat:%d][irqlock:%d]\0A\00", align 1
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@E8390_NODMA = common dso_local global i32 0, align 4
@NE_CMD = common dso_local global i64 0, align 8
@ENISR_RDC = common dso_local global i32 0, align 4
@EN0_ISR = common dso_local global i64 0, align 8
@EN0_RCNTLO = common dso_local global i64 0, align 8
@EN0_RCNTHI = common dso_local global i64 0, align 8
@EN0_RSARLO = common dso_local global i64 0, align 8
@EN0_RSARHI = common dso_local global i64 0, align 8
@E8390_RWRITE = common dso_local global i32 0, align 4
@ONLY_16BIT_IO = common dso_local global i32 0, align 4
@NE_DATAPORT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"timeout waiting for Tx RDC.\0A\00", align 1
@E8390_RREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i8*, i32)* @ne2k_pci_block_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ne2k_pci_block_output(%struct.net_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* @NE_BASE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %14 = load i32, i32* @ONLY_32BIT_IO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 3
  %20 = and i32 %19, 65532
  store i32 %20, i32* %6, align 4
  br label %29

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 2), align 4
  %36 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %160

37:                                               ; preds = %29
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %39 = or i32 %38, 1
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %40 = load i32, i32* @E8390_PAGE0, align 4
  %41 = load i32, i32* @E8390_START, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* @E8390_NODMA, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @NE_CMD, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %44, i64 %47)
  %49 = load i32, i32* @ENISR_RDC, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @EN0_ISR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i32 %49, i64 %52)
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 255
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @EN0_RCNTLO, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 %55, i64 %58)
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @EN0_RCNTHI, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i32 %61, i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @EN0_RSARLO, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outb(i32 0, i64 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @EN0_RSARHI, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb(i32 %70, i64 %73)
  %75 = load i32, i32* @E8390_RWRITE, align 4
  %76 = load i32, i32* @E8390_START, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @NE_CMD, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb(i32 %77, i64 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %83 = load i32, i32* @ONLY_16BIT_IO, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %37
  %87 = load i64, i64* @NE_BASE, align 8
  %88 = load i64, i64* @NE_DATAPORT, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %6, align 4
  %92 = ashr i32 %91, 1
  %93 = call i32 @outsw(i64 %89, i8* %90, i32 %92)
  br label %129

94:                                               ; preds = %37
  %95 = load i64, i64* @NE_BASE, align 8
  %96 = load i64, i64* @NE_DATAPORT, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %6, align 4
  %100 = ashr i32 %99, 2
  %101 = call i32 @outsl(i64 %97, i8* %98, i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 3
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %94
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, -4
  %108 = load i8*, i8** %7, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %7, align 8
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, 2
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %105
  %115 = load i8*, i8** %7, align 8
  %116 = bitcast i8* %115 to i32*
  store i32* %116, i32** %11, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %11, align 8
  %119 = load i32, i32* %117, align 4
  %120 = call i32 @le16_to_cpu(i32 %119)
  %121 = load i64, i64* @NE_BASE, align 8
  %122 = load i64, i64* @NE_DATAPORT, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outw(i32 %120, i64 %123)
  %125 = load i32*, i32** %11, align 8
  %126 = bitcast i32* %125 to i8*
  store i8* %126, i8** %7, align 8
  br label %127

127:                                              ; preds = %114, %105
  br label %128

128:                                              ; preds = %127, %94
  br label %129

129:                                              ; preds = %128, %86
  %130 = load i64, i64* @jiffies, align 8
  store i64 %130, i64* %10, align 8
  br label %131

131:                                              ; preds = %151, %129
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* @EN0_ISR, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @inb(i64 %134)
  %136 = load i32, i32* @ENISR_RDC, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %131
  %140 = load i64, i64* @jiffies, align 8
  %141 = load i64, i64* %10, align 8
  %142 = sub i64 %140, %141
  %143 = icmp ugt i64 %142, 2
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = call i32 @netdev_warn(%struct.net_device* %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = call i32 @ne2k_pci_reset_8390(%struct.net_device* %147)
  %149 = load %struct.net_device*, %struct.net_device** %5, align 8
  %150 = call i32 @NS8390_init(%struct.net_device* %149, i32 1)
  br label %152

151:                                              ; preds = %139
  br label %131

152:                                              ; preds = %144, %131
  %153 = load i32, i32* @ENISR_RDC, align 4
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* @EN0_ISR, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @outb(i32 %153, i64 %156)
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %159 = and i32 %158, -2
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  br label %160

160:                                              ; preds = %152, %32
  ret void
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outsw(i64, i8*, i32) #1

declare dso_local i32 @outsl(i64, i8*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @ne2k_pci_reset_8390(%struct.net_device*) #1

declare dso_local i32 @NS8390_init(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
