; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_alloc_eq_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_alloc_eq_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_eq = type { i32, i64, i32*, i32*, i32, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WRAPPED = common dso_local global i32 0, align 4
@HINIC_AEQ = common dso_local global i64 0, align 8
@HINIC_CEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_eq*)* @alloc_eq_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_eq_pages(%struct.hinic_eq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_eq*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_eq* %0, %struct.hinic_eq** %3, align 8
  %12 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %13 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %12, i32 0, i32 6
  %14 = load %struct.hinic_hwif*, %struct.hinic_hwif** %13, align 8
  store %struct.hinic_hwif* %14, %struct.hinic_hwif** %4, align 8
  %15 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %16 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %19 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  store i64 %22, i64* %9, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(i32* %24, i64 %25, i32 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %30 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %32 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %199

38:                                               ; preds = %1
  %39 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %40 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  store i64 %43, i64* %9, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @devm_kzalloc(i32* %45, i64 %46, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %51 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %50, i32 0, i32 3
  store i32* %49, i32** %51, align 8
  %52 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %53 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %38
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %191

59:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %128, %59
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %63 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %131

66:                                               ; preds = %60
  %67 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %70 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %73 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @dma_alloc_coherent(i32* %68, i32 %71, i32* %77, i32 %78)
  %80 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %81 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %87 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %66
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %158

97:                                               ; preds = %66
  %98 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @EQ_HI_PHYS_ADDR_REG(%struct.hinic_eq* %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %102 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @upper_32_bits(i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %109, i32 %110, i32 %111)
  %113 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @EQ_LO_PHYS_ADDR_REG(%struct.hinic_eq* %113, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %117 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @lower_32_bits(i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %97
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %60

131:                                              ; preds = %60
  %132 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %133 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @WRAPPED, align 4
  %136 = call i32 @HINIC_EQ_ELEM_DESC_SET(i32 %134, i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %138 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @HINIC_AEQ, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %131
  %143 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @aeq_elements_init(%struct.hinic_eq* %143, i32 %144)
  br label %157

146:                                              ; preds = %131
  %147 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %148 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @HINIC_CEQ, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @ceq_elements_init(%struct.hinic_eq* %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %146
  br label %157

157:                                              ; preds = %156, %142
  store i32 0, i32* %2, align 4
  br label %199

158:                                              ; preds = %94
  br label %159

159:                                              ; preds = %163, %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %11, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %159
  %164 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 0
  %166 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %167 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %170 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %177 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @dma_free_coherent(i32* %165, i32 %168, i32 %175, i32 %182)
  br label %159

184:                                              ; preds = %159
  %185 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 0
  %187 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %188 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @devm_kfree(i32* %186, i32* %189)
  br label %191

191:                                              ; preds = %184, %56
  %192 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %193 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %192, i32 0, i32 0
  %194 = load %struct.hinic_eq*, %struct.hinic_eq** %3, align 8
  %195 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @devm_kfree(i32* %193, i32* %196)
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %191, %157, %35
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i8* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @EQ_HI_PHYS_ADDR_REG(%struct.hinic_eq*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @hinic_hwif_write_reg(%struct.hinic_hwif*, i32, i32) #1

declare dso_local i32 @EQ_LO_PHYS_ADDR_REG(%struct.hinic_eq*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @HINIC_EQ_ELEM_DESC_SET(i32, i32) #1

declare dso_local i32 @aeq_elements_init(%struct.hinic_eq*, i32) #1

declare dso_local i32 @ceq_elements_init(%struct.hinic_eq*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
