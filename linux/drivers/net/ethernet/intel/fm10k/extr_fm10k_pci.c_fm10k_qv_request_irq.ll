; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_qv_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_qv_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, %struct.fm10k_q_vector**, i32*, %struct.msix_entry*, %struct.fm10k_hw, %struct.net_device* }
%struct.fm10k_q_vector = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.msix_entry = type { i32, i32 }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i8* }

@NON_Q_VECTORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s-TxRx-%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-rx-%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-tx-%u\00", align 1
@fm10k_mac_pf = common dso_local global i64 0, align 8
@fm10k_msix_clean_rings = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"request_irq failed for MSIX interrupt Error: %d\0A\00", align 1
@FM10K_ITR_ENABLE = common dso_local global i32 0, align 4
@FM10K_ITR_MASK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_qv_request_irq(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca %struct.msix_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fm10k_q_vector*, align 8
  %12 = alloca %struct.fm10k_q_vector*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 5
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %17 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %16, i32 0, i32 4
  store %struct.fm10k_hw* %17, %struct.fm10k_hw** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 3
  %20 = load %struct.msix_entry*, %struct.msix_entry** %19, align 8
  %21 = load i64, i64* @NON_Q_VECTORS, align 8
  %22 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %20, i64 %21
  store %struct.msix_entry* %22, %struct.msix_entry** %6, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %154, %1
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %26 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %157

29:                                               ; preds = %23
  %30 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %31 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %30, i32 0, i32 1
  %32 = load %struct.fm10k_q_vector**, %struct.fm10k_q_vector*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %32, i64 %34
  %36 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %35, align 8
  store %struct.fm10k_q_vector* %36, %struct.fm10k_q_vector** %11, align 8
  %37 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %38 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %29
  %43 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %44 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %50 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = call i32 @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55)
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %95

60:                                               ; preds = %42, %29
  %61 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %62 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %68 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = call i32 @snprintf(i32 %69, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %72, i32 %73)
  br label %94

76:                                               ; preds = %60
  %77 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %78 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %84 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = call i32 @snprintf(i32 %85, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %88, i32 %89)
  br label %93

92:                                               ; preds = %76
  br label %154

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %66
  br label %95

95:                                               ; preds = %94, %48
  %96 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %97 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @fm10k_mac_pf, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %104 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %107 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @FM10K_ITR(i32 %108)
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  br label %120

111:                                              ; preds = %95
  %112 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %113 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %116 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @FM10K_VFITR(i32 %117)
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  br label %120

120:                                              ; preds = %111, %102
  %121 = phi i32* [ %110, %102 ], [ %119, %111 ]
  %122 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %123 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %122, i32 0, i32 0
  store i32* %121, i32** %123, align 8
  %124 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %125 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %128 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %131 = call i32 @request_irq(i32 %126, i32* @fm10k_msix_clean_rings, i32 0, i32 %129, %struct.fm10k_q_vector* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %120
  %135 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %136 = load i32, i32* @probe, align 4
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @netif_err(%struct.fm10k_intfc* %135, i32 %136, %struct.net_device* %137, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  br label %158

140:                                              ; preds = %120
  %141 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %142 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %145 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %144, i32 0, i32 3
  %146 = call i32 @irq_set_affinity_hint(i32 %143, i32* %145)
  %147 = load i32, i32* @FM10K_ITR_ENABLE, align 4
  %148 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %11, align 8
  %149 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @writel(i32 %147, i32* %150)
  %152 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %153 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %152, i32 1
  store %struct.msix_entry* %153, %struct.msix_entry** %6, align 8
  br label %154

154:                                              ; preds = %140, %92
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %23

157:                                              ; preds = %23
  store i32 0, i32* %2, align 4
  br label %203

158:                                              ; preds = %134
  br label %159

159:                                              ; preds = %186, %185, %158
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %201

162:                                              ; preds = %159
  %163 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %164 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %163, i32 -1
  store %struct.msix_entry* %164, %struct.msix_entry** %6, align 8
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %9, align 4
  %167 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %168 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %167, i32 0, i32 1
  %169 = load %struct.fm10k_q_vector**, %struct.fm10k_q_vector*** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %169, i64 %171
  %173 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %172, align 8
  store %struct.fm10k_q_vector* %173, %struct.fm10k_q_vector** %12, align 8
  %174 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %12, align 8
  %175 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %162
  %180 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %12, align 8
  %181 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %179
  br label %159

186:                                              ; preds = %179, %162
  %187 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %188 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @irq_set_affinity_hint(i32 %189, i32* null)
  %191 = load i32, i32* @FM10K_ITR_MASK_SET, align 4
  %192 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %12, align 8
  %193 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @writel(i32 %191, i32* %194)
  %196 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %197 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %12, align 8
  %200 = call i32 @free_irq(i32 %198, %struct.fm10k_q_vector* %199)
  br label %159

201:                                              ; preds = %159
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %201, %157
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @FM10K_ITR(i32) #1

declare dso_local i64 @FM10K_VFITR(i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.fm10k_q_vector*) #1

declare dso_local i32 @netif_err(%struct.fm10k_intfc*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.fm10k_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
