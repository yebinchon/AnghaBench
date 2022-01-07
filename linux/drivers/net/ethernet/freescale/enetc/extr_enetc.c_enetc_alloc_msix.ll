; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_alloc_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_alloc_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_ndev_priv = type { i32, i32, %struct.enetc_int_vector**, %struct.enetc_bdr**, i32, i32, i32, %struct.enetc_bdr**, i32, %struct.TYPE_2__* }
%struct.enetc_int_vector = type { i32, i32, %struct.enetc_bdr, %struct.enetc_bdr*, i32 }
%struct.enetc_bdr = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ENETC_BDR_INT_BASE_IDX = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@enetc_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@ENETC_MAX_BDR_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_alloc_msix(%struct.enetc_ndev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enetc_ndev_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.enetc_int_vector*, align 8
  %12 = alloca %struct.enetc_bdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.enetc_ndev_priv* %0, %struct.enetc_ndev_priv** %3, align 8
  %15 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %16 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %15, i32 0, i32 9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %4, align 8
  %20 = load i32, i32* @ENETC_BDR_INT_BASE_IDX, align 4
  %21 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %22 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %29 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %207

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %207

41:                                               ; preds = %34
  %42 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %43 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %46 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %44, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 16, %50
  %52 = add i64 40, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %176, %41
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %57 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %179

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.enetc_int_vector* @kzalloc(i32 %61, i32 %62)
  store %struct.enetc_int_vector* %63, %struct.enetc_int_vector** %11, align 8
  %64 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %11, align 8
  %65 = icmp ne %struct.enetc_int_vector* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %180

69:                                               ; preds = %60
  %70 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %11, align 8
  %71 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %72 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %71, i32 0, i32 2
  %73 = load %struct.enetc_int_vector**, %struct.enetc_int_vector*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.enetc_int_vector*, %struct.enetc_int_vector** %73, i64 %75
  store %struct.enetc_int_vector* %70, %struct.enetc_int_vector** %76, align 8
  %77 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %78 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %11, align 8
  %81 = getelementptr inbounds %struct.enetc_int_vector, %struct.enetc_int_vector* %80, i32 0, i32 1
  %82 = load i32, i32* @enetc_poll, align 4
  %83 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %84 = call i32 @netif_napi_add(i32 %79, i32* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %11, align 8
  %87 = getelementptr inbounds %struct.enetc_int_vector, %struct.enetc_int_vector* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %145, %69
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %148

92:                                               ; preds = %88
  %93 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %94 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ENETC_MAX_BDR_INT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32, i32* %13, align 4
  %100 = mul nsw i32 2, %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %14, align 4
  br label %109

103:                                              ; preds = %92
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %6, align 4
  %107 = mul nsw i32 %105, %106
  %108 = add nsw i32 %104, %107
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %11, align 8
  %112 = getelementptr inbounds %struct.enetc_int_vector, %struct.enetc_int_vector* %111, i32 0, i32 4
  %113 = call i32 @__set_bit(i32 %110, i32* %112)
  %114 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %11, align 8
  %115 = getelementptr inbounds %struct.enetc_int_vector, %struct.enetc_int_vector* %114, i32 0, i32 3
  %116 = load %struct.enetc_bdr*, %struct.enetc_bdr** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %116, i64 %118
  store %struct.enetc_bdr* %119, %struct.enetc_bdr** %12, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %122 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %124 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %127 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %129 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %132 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %134 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %137 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %139 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %140 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %139, i32 0, i32 7
  %141 = load %struct.enetc_bdr**, %struct.enetc_bdr*** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.enetc_bdr*, %struct.enetc_bdr** %141, i64 %143
  store %struct.enetc_bdr* %138, %struct.enetc_bdr** %144, align 8
  br label %145

145:                                              ; preds = %109
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %88

148:                                              ; preds = %88
  %149 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %11, align 8
  %150 = getelementptr inbounds %struct.enetc_int_vector, %struct.enetc_int_vector* %149, i32 0, i32 2
  store %struct.enetc_bdr* %150, %struct.enetc_bdr** %12, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %153 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %155 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %158 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %160 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %163 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %165 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %168 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.enetc_bdr*, %struct.enetc_bdr** %12, align 8
  %170 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %171 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %170, i32 0, i32 3
  %172 = load %struct.enetc_bdr**, %struct.enetc_bdr*** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.enetc_bdr*, %struct.enetc_bdr** %172, i64 %174
  store %struct.enetc_bdr* %169, %struct.enetc_bdr** %175, align 8
  br label %176

176:                                              ; preds = %148
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %54

179:                                              ; preds = %54
  store i32 0, i32* %2, align 4
  br label %207

180:                                              ; preds = %66
  br label %181

181:                                              ; preds = %185, %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %7, align 4
  %184 = icmp ne i32 %182, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %181
  %186 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %187 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %186, i32 0, i32 2
  %188 = load %struct.enetc_int_vector**, %struct.enetc_int_vector*** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.enetc_int_vector*, %struct.enetc_int_vector** %188, i64 %190
  %192 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %191, align 8
  %193 = getelementptr inbounds %struct.enetc_int_vector, %struct.enetc_int_vector* %192, i32 0, i32 1
  %194 = call i32 @netif_napi_del(i32* %193)
  %195 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %196 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %195, i32 0, i32 2
  %197 = load %struct.enetc_int_vector**, %struct.enetc_int_vector*** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.enetc_int_vector*, %struct.enetc_int_vector** %197, i64 %199
  %201 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %200, align 8
  %202 = call i32 @kfree(%struct.enetc_int_vector* %201)
  br label %181

203:                                              ; preds = %181
  %204 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %205 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %204)
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %203, %179, %38, %32
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local %struct.enetc_int_vector* @kzalloc(i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @kfree(%struct.enetc_int_vector*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
