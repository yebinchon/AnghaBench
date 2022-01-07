; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_dev.c_islpci_free_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_dev.c_islpci_free_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32**, i64*, i32, %struct.islpci_membuf*, i32*, i64, i64, i32*, i32* }
%struct.islpci_membuf = type { i32*, i64, i64 }

@HOST_MEM_BLOCK = common dso_local global i32 0, align 4
@ISL38XX_CB_MGMT_QSIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ISL38XX_CB_RX_QSIZE = common dso_local global i32 0, align 4
@MAX_FRAGMENT_SIZE_RX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @islpci_free_memory(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.islpci_membuf*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 9
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 9
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @iounmap(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 9
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HOST_MEM_BLOCK, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @pci_free_consistent(i32 %24, i32 %25, i32* %28, i64 %31)
  br label %33

33:                                               ; preds = %21, %14
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 8
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %80, %33
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ISL38XX_CB_MGMT_QSIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  %49 = load %struct.islpci_membuf*, %struct.islpci_membuf** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %49, i64 %51
  store %struct.islpci_membuf* %52, %struct.islpci_membuf** %4, align 8
  %53 = load %struct.islpci_membuf*, %struct.islpci_membuf** %4, align 8
  %54 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %46
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.islpci_membuf*, %struct.islpci_membuf** %4, align 8
  %62 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.islpci_membuf*, %struct.islpci_membuf** %4, align 8
  %65 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %68 = call i32 @pci_unmap_single(i32 %60, i64 %63, i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %57, %46
  %70 = load %struct.islpci_membuf*, %struct.islpci_membuf** %4, align 8
  %71 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.islpci_membuf*, %struct.islpci_membuf** %4, align 8
  %73 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  %76 = load %struct.islpci_membuf*, %struct.islpci_membuf** %4, align 8
  %77 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.islpci_membuf*, %struct.islpci_membuf** %4, align 8
  %79 = getelementptr inbounds %struct.islpci_membuf, %struct.islpci_membuf* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %42

83:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %143, %83
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @ISL38XX_CB_RX_QSIZE, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %146

88:                                               ; preds = %84
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %88
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MAX_FRAGMENT_SIZE_RX, align 8
  %109 = add nsw i64 %108, 2
  %110 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %111 = call i32 @pci_unmap_single(i32 %100, i64 %107, i64 %109, i32 %110)
  br label %112

112:                                              ; preds = %97, %88
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %112
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @dev_kfree_skb(i32* %134)
  br label %136

136:                                              ; preds = %127, %112
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  store i32* null, i32** %142, align 8
  br label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %84

146:                                              ; preds = %84
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = call i32 @prism54_acl_clean(i32* %148)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %151 = call i32 @prism54_wpa_bss_ie_clean(%struct.TYPE_5__* %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %153 = call i32 @mgt_clean(%struct.TYPE_5__* %152)
  ret i32 0
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i64) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @prism54_acl_clean(i32*) #1

declare dso_local i32 @prism54_wpa_bss_ie_clean(%struct.TYPE_5__*) #1

declare dso_local i32 @mgt_clean(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
