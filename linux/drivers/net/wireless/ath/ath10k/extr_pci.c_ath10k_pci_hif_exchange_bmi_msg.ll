; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_hif_exchange_bmi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_hif_exchange_bmi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { %struct.ath10k_pci_pipe* }
%struct.ath10k_pci_pipe = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { i32 }
%struct.bmi_xfer = type { i32, i64 }

@BMI_CE_NUM_TO_TARG = common dso_local global i64 0, align 8
@BMI_CE_NUM_TO_HOST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_pci_hif_exchange_bmi_msg(%struct.ath10k* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ath10k_pci*, align 8
  %13 = alloca %struct.ath10k_pci_pipe*, align 8
  %14 = alloca %struct.ath10k_pci_pipe*, align 8
  %15 = alloca %struct.ath10k_ce_pipe*, align 8
  %16 = alloca %struct.ath10k_ce_pipe*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.bmi_xfer, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %27 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %28 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %27)
  store %struct.ath10k_pci* %28, %struct.ath10k_pci** %12, align 8
  %29 = load %struct.ath10k_pci*, %struct.ath10k_pci** %12, align 8
  %30 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %29, i32 0, i32 0
  %31 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %30, align 8
  %32 = load i64, i64* @BMI_CE_NUM_TO_TARG, align 8
  %33 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %31, i64 %32
  store %struct.ath10k_pci_pipe* %33, %struct.ath10k_pci_pipe** %13, align 8
  %34 = load %struct.ath10k_pci*, %struct.ath10k_pci** %12, align 8
  %35 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %34, i32 0, i32 0
  %36 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %35, align 8
  %37 = load i64, i64* @BMI_CE_NUM_TO_HOST, align 8
  %38 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %36, i64 %37
  store %struct.ath10k_pci_pipe* %38, %struct.ath10k_pci_pipe** %14, align 8
  %39 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %13, align 8
  %40 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %39, i32 0, i32 0
  %41 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %40, align 8
  store %struct.ath10k_ce_pipe* %41, %struct.ath10k_ce_pipe** %15, align 8
  %42 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %14, align 8
  %43 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %42, i32 0, i32 0
  %44 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %43, align 8
  store %struct.ath10k_ce_pipe* %44, %struct.ath10k_ce_pipe** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %45 = bitcast %struct.bmi_xfer* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %45, i8 0, i64 16, i1 false)
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %46 = call i32 (...) @might_sleep()
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %5
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %204

55:                                               ; preds = %49, %5
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %204

68:                                               ; preds = %61, %58, %55
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kmemdup(i8* %69, i32 %70, i32 %71)
  store i8* %72, i8** %20, align 8
  %73 = load i8*, i8** %20, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %204

78:                                               ; preds = %68
  %79 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %80 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %20, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @DMA_TO_DEVICE, align 4
  %85 = call i32 @dma_map_single(i32 %81, i8* %82, i32 %83, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %87 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @dma_mapping_error(i32 %88, i32 %89)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %22, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %22, align 4
  br label %198

96:                                               ; preds = %78
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %137

99:                                               ; preds = %96
  %100 = load i32*, i32** %11, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %137

102:                                              ; preds = %99
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @kzalloc(i32 %104, i32 %105)
  store i8* %106, i8** %21, align 8
  %107 = load i8*, i8** %21, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %22, align 4
  br label %172

112:                                              ; preds = %102
  %113 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %114 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %21, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %120 = call i32 @dma_map_single(i32 %115, i8* %116, i32 %118, i32 %119)
  store i32 %120, i32* %18, align 4
  %121 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %122 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @dma_mapping_error(i32 %123, i32 %124)
  store i32 %125, i32* %22, align 4
  %126 = load i32, i32* %22, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %22, align 4
  br label %172

131:                                              ; preds = %112
  %132 = getelementptr inbounds %struct.bmi_xfer, %struct.bmi_xfer* %19, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = getelementptr inbounds %struct.bmi_xfer, %struct.bmi_xfer* %19, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %16, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @ath10k_ce_rx_post_buf(%struct.ath10k_ce_pipe* %134, %struct.bmi_xfer* %19, i32 %135)
  br label %137

137:                                              ; preds = %131, %99, %96
  %138 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %15, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @ath10k_ce_send(%struct.ath10k_ce_pipe* %138, %struct.bmi_xfer* %19, i32 %139, i32 %140, i32 -1, i32 0)
  store i32 %141, i32* %22, align 4
  %142 = load i32, i32* %22, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %157

145:                                              ; preds = %137
  %146 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %147 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %15, align 8
  %148 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %16, align 8
  %149 = call i32 @ath10k_pci_bmi_wait(%struct.ath10k* %146, %struct.ath10k_ce_pipe* %147, %struct.ath10k_ce_pipe* %148, %struct.bmi_xfer* %19)
  store i32 %149, i32* %22, align 4
  %150 = load i32, i32* %22, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %15, align 8
  %154 = call i32 @ath10k_ce_cancel_send_next(%struct.ath10k_ce_pipe* %153, i32* null, i32* %23, i32* %24, i32* %25)
  br label %156

155:                                              ; preds = %145
  store i32 0, i32* %22, align 4
  br label %156

156:                                              ; preds = %155, %152
  br label %157

157:                                              ; preds = %156, %144
  %158 = load i8*, i8** %10, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %16, align 8
  %162 = call i32 @ath10k_ce_revoke_recv_next(%struct.ath10k_ce_pipe* %161, i32* null, i32* %26)
  %163 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %164 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %170 = call i32 @dma_unmap_single(i32 %165, i32 %166, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %160, %157
  br label %172

172:                                              ; preds = %171, %128, %109
  %173 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %174 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @DMA_TO_DEVICE, align 4
  %179 = call i32 @dma_unmap_single(i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %22, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %172
  %183 = load i32*, i32** %11, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = load i32*, i32** %11, align 8
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.bmi_xfer, %struct.bmi_xfer* %19, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @min(i32 %187, i64 %189)
  %191 = load i32*, i32** %11, align 8
  store i32 %190, i32* %191, align 4
  %192 = load i8*, i8** %10, align 8
  %193 = load i8*, i8** %21, align 8
  %194 = getelementptr inbounds %struct.bmi_xfer, %struct.bmi_xfer* %19, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @memcpy(i8* %192, i8* %193, i64 %195)
  br label %197

197:                                              ; preds = %185, %182, %172
  br label %198

198:                                              ; preds = %197, %93
  %199 = load i8*, i8** %20, align 8
  %200 = call i32 @kfree(i8* %199)
  %201 = load i8*, i8** %21, align 8
  %202 = call i32 @kfree(i8* %201)
  %203 = load i32, i32* %22, align 4
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %198, %75, %65, %52
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @might_sleep(...) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_ce_rx_post_buf(%struct.ath10k_ce_pipe*, %struct.bmi_xfer*, i32) #1

declare dso_local i32 @ath10k_ce_send(%struct.ath10k_ce_pipe*, %struct.bmi_xfer*, i32, i32, i32, i32) #1

declare dso_local i32 @ath10k_pci_bmi_wait(%struct.ath10k*, %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe*, %struct.bmi_xfer*) #1

declare dso_local i32 @ath10k_ce_cancel_send_next(%struct.ath10k_ce_pipe*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ath10k_ce_revoke_recv_next(%struct.ath10k_ce_pipe*, i32*, i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
