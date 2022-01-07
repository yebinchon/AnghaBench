; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.pci_dev* }
%struct.TYPE_8__ = type { i32, %struct.pci_dev* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.pci_dev = type { i32 }

@MWIFIEX_NUM_MSIX_VECTORS = common dso_local global i32 0, align 4
@mwifiex_pcie_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MWIFIEX_PCIE_MSIX\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"request_irq fail: %d\0A\00", align 1
@MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"MSIx enabled!\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"msi_enable = %d\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"MRVL_PCIE\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"request_irq failed: ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_request_irq(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcie_service_card*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 0
  %11 = load %struct.pcie_service_card*, %struct.pcie_service_card** %10, align 8
  store %struct.pcie_service_card* %11, %struct.pcie_service_card** %7, align 8
  %12 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %13 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %12, i32 0, i32 6
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %135

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MWIFIEX_NUM_MSIX_VECTORS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %30 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %29, i32 0, i32 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 4
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %41 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %42 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %41, i32 0, i32 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* @MWIFIEX_NUM_MSIX_VECTORS, align 4
  %45 = call i32 @pci_enable_msix_exact(%struct.pci_dev* %40, %struct.TYPE_9__* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %134, label %48

48:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %90, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MWIFIEX_NUM_MSIX_VECTORS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %55 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %56 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %55, i32 0, i32 3
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store %struct.pci_dev* %54, %struct.pci_dev** %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %64 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %63, i32 0, i32 3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 8
  %70 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %71 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %70, i32 0, i32 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @mwifiex_pcie_interrupt, align 4
  %79 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %80 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %79, i32 0, i32 3
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = call i32 @request_irq(i32 %77, i32 %78, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %53
  br label %93

89:                                               ; preds = %53
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %49

93:                                               ; preds = %88, %49
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %93
  %97 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %98 = load i32, i32* @INFO, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %97, i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %121, %96
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %107 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %106, i32 0, i32 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %115 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %114, i32 0, i32 3
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = call i32 @free_irq(i32 %113, %struct.TYPE_8__* %119)
  br label %121

121:                                              ; preds = %105
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %101

124:                                              ; preds = %101
  %125 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %126 = call i32 @pci_disable_msix(%struct.pci_dev* %125)
  br label %133

127:                                              ; preds = %93
  %128 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %129 = load i32, i32* @MSG, align 4
  %130 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %128, i32 %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %131 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %132 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  store i32 0, i32* %2, align 4
  br label %173

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %39
  br label %135

135:                                              ; preds = %134, %1
  %136 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %137 = call i64 @pci_enable_msi(%struct.pci_dev* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %141 = call i32 @pci_disable_msi(%struct.pci_dev* %140)
  br label %145

142:                                              ; preds = %135
  %143 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %144 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %147 = load i32, i32* @INFO, align 4
  %148 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %149 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %146, i32 %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %153 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %154 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  store %struct.pci_dev* %152, %struct.pci_dev** %155, align 8
  %156 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %157 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i32 -1, i32* %158, align 8
  %159 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @mwifiex_pcie_interrupt, align 4
  %163 = load i32, i32* @IRQF_SHARED, align 4
  %164 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %165 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %164, i32 0, i32 2
  %166 = call i32 @request_irq(i32 %161, i32 %162, i32 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_8__* %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %145
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %170)
  store i32 -1, i32* %2, align 4
  br label %173

172:                                              ; preds = %145
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %169, %127
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @pci_enable_msix_exact(%struct.pci_dev*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i64 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
