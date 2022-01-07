; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_hif_tx_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_hif_tx_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_hif_sg_item = type { i32, i32, i32, i32, i32 }
%struct.ath10k_pci = type { %struct.ath10k_pci_pipe* }
%struct.ath10k_pci_pipe = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { %struct.ath10k_ce_ring* }
%struct.ath10k_ce_ring = type { i32, i32, i32 }
%struct.ath10k_ce = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@ATH10K_DBG_PCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pci tx item %d paddr %pad len %d n_items %d\0A\00", align 1
@ATH10K_DBG_PCI_DUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pci tx data: \00", align 1
@CE_SEND_FLAG_GATHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_pci_hif_tx_sg(%struct.ath10k* %0, i64 %1, %struct.ath10k_hif_sg_item* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath10k_hif_sg_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath10k_pci*, align 8
  %11 = alloca %struct.ath10k_ce*, align 8
  %12 = alloca %struct.ath10k_pci_pipe*, align 8
  %13 = alloca %struct.ath10k_ce_pipe*, align 8
  %14 = alloca %struct.ath10k_ce_ring*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ath10k_hif_sg_item* %2, %struct.ath10k_hif_sg_item** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %21 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %20)
  store %struct.ath10k_pci* %21, %struct.ath10k_pci** %10, align 8
  %22 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %23 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %22)
  store %struct.ath10k_ce* %23, %struct.ath10k_ce** %11, align 8
  %24 = load %struct.ath10k_pci*, %struct.ath10k_pci** %10, align 8
  %25 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %24, i32 0, i32 0
  %26 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %26, i64 %27
  store %struct.ath10k_pci_pipe* %28, %struct.ath10k_pci_pipe** %12, align 8
  %29 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %12, align 8
  %30 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %29, i32 0, i32 0
  %31 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %30, align 8
  store %struct.ath10k_ce_pipe* %31, %struct.ath10k_ce_pipe** %13, align 8
  %32 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %13, align 8
  %33 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %32, i32 0, i32 0
  %34 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %33, align 8
  store %struct.ath10k_ce_ring* %34, %struct.ath10k_ce_ring** %14, align 8
  store i32 0, i32* %19, align 4
  %35 = load %struct.ath10k_ce*, %struct.ath10k_ce** %11, align 8
  %36 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %14, align 8
  %39 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %14, align 8
  %42 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %16, align 4
  %44 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %14, align 8
  %45 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = sub i32 %49, 1
  %51 = call i32 @CE_RING_DELTA(i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %4
  %58 = load i32, i32* @ENOBUFS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %18, align 4
  br label %197

60:                                               ; preds = %4
  store i32 0, i32* %19, align 4
  br label %61

61:                                               ; preds = %129, %60
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %132

66:                                               ; preds = %61
  %67 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %68 = load i32, i32* @ATH10K_DBG_PCI, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %70, i64 %72
  %74 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %73, i32 0, i32 2
  %75 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %75, i64 %77
  %79 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @ath10k_dbg(%struct.ath10k* %67, i32 %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %69, i32* %74, i32 %80, i32 %81)
  %83 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %84 = load i32, i32* @ATH10K_DBG_PCI_DUMP, align 4
  %85 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %85, i64 %87
  %89 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %91, i64 %93
  %95 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ath10k_dbg_dump(%struct.ath10k* %83, i32 %84, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %96)
  %98 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %13, align 8
  %99 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %99, i64 %101
  %103 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %105, i64 %107
  %109 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %111, i64 %113
  %115 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %117, i64 %119
  %121 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CE_SEND_FLAG_GATHER, align 4
  %124 = call i32 @ath10k_ce_send_nolock(%struct.ath10k_ce_pipe* %98, i32 %104, i32 %110, i32 %116, i32 %122, i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %66
  br label %197

128:                                              ; preds = %66
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %61

132:                                              ; preds = %61
  %133 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %134 = load i32, i32* @ATH10K_DBG_PCI, align 4
  %135 = load i32, i32* %19, align 4
  %136 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %136, i64 %138
  %140 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %139, i32 0, i32 2
  %141 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %141, i64 %143
  %145 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @ath10k_dbg(%struct.ath10k* %133, i32 %134, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %135, i32* %140, i32 %146, i32 %147)
  %149 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %150 = load i32, i32* @ATH10K_DBG_PCI_DUMP, align 4
  %151 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %152 = load i32, i32* %19, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %151, i64 %153
  %155 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %157, i64 %159
  %161 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ath10k_dbg_dump(%struct.ath10k* %149, i32 %150, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %156, i32 %162)
  %164 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %13, align 8
  %165 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %165, i64 %167
  %169 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %171, i64 %173
  %175 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %177, i64 %179
  %181 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %183, i64 %185
  %187 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @ath10k_ce_send_nolock(%struct.ath10k_ce_pipe* %164, i32 %170, i32 %176, i32 %182, i32 %188, i32 0)
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %132
  br label %197

193:                                              ; preds = %132
  %194 = load %struct.ath10k_ce*, %struct.ath10k_ce** %11, align 8
  %195 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %194, i32 0, i32 0
  %196 = call i32 @spin_unlock_bh(i32* %195)
  store i32 0, i32* %5, align 4
  br label %212

197:                                              ; preds = %192, %127, %57
  br label %198

198:                                              ; preds = %204, %197
  %199 = load i32, i32* %19, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %13, align 8
  %203 = call i32 @__ath10k_ce_send_revert(%struct.ath10k_ce_pipe* %202)
  br label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %19, align 4
  br label %198

207:                                              ; preds = %198
  %208 = load %struct.ath10k_ce*, %struct.ath10k_ce** %11, align 8
  %209 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %208, i32 0, i32 0
  %210 = call i32 @spin_unlock_bh(i32* %209)
  %211 = load i32, i32* %18, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %207, %193
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CE_RING_DELTA(i32, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_ce_send_nolock(%struct.ath10k_ce_pipe*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__ath10k_ce_send_revert(%struct.ath10k_ce_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
