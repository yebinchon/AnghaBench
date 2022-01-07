; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_build_inline_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_build_inline_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_tx_desc = type { %struct.mlx4_wqe_inline_seg }
%struct.mlx4_wqe_inline_seg = type { i8* }
%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i32*, i64 }

@MLX4_INLINE_ALIGN = common dso_local global i32 0, align 4
@CTRL_SIZE = common dso_local global i32 0, align 4
@MIN_PKT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_tx_desc*, %struct.sk_buff*, %struct.skb_shared_info*, i8*)* @build_inline_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_inline_wqe(%struct.mlx4_en_tx_desc* %0, %struct.sk_buff* %1, %struct.skb_shared_info* %2, i8* %3) #0 {
  %5 = alloca %struct.mlx4_en_tx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.skb_shared_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlx4_wqe_inline_seg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_en_tx_desc* %0, %struct.mlx4_en_tx_desc** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.skb_shared_info* %2, %struct.skb_shared_info** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_tx_desc, %struct.mlx4_en_tx_desc* %12, i32 0, i32 0
  store %struct.mlx4_wqe_inline_seg* %13, %struct.mlx4_wqe_inline_seg** %9, align 8
  %14 = load i32, i32* @MLX4_INLINE_ALIGN, align 4
  %15 = load i32, i32* @CTRL_SIZE, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @skb_headlen(%struct.sk_buff* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MIN_PKT_LEN, align 4
  %32 = icmp sge i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 -2147483648, %39
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %43 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %64

44:                                               ; preds = %27
  %45 = load i32, i32* @MIN_PKT_LEN, align 4
  %46 = or i32 -2147483648, %45
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %49 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %51 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %50, i64 1
  %52 = bitcast %struct.mlx4_wqe_inline_seg* %51 to i8*
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %52, i64 %56
  %58 = load i32, i32* @MIN_PKT_LEN, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  %63 = call i32 @memset(i8* %57, i32 0, i32 %62)
  br label %64

64:                                               ; preds = %44, %36
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %67 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %66, i64 1
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %65, %struct.mlx4_wqe_inline_seg* %67, i32 %68)
  %70 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %71 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %64
  %75 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %76 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %75, i64 1
  %77 = bitcast %struct.mlx4_wqe_inline_seg* %76 to i8*
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr i8, i8* %77, i64 %79
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %83 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = call i32 @skb_frag_size(i32* %85)
  %87 = call i32 @memcpy(i8* %80, i8* %81, i32 %86)
  br label %88

88:                                               ; preds = %74, %64
  br label %198

89:                                               ; preds = %4
  %90 = load i32, i32* %10, align 4
  %91 = or i32 -2147483648, %90
  %92 = call i8* @cpu_to_be32(i32 %91)
  %93 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %94 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ule i32 %95, %96
  br i1 %97, label %98, label %143

98:                                               ; preds = %89
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %101 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %100, i64 1
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %99, %struct.mlx4_wqe_inline_seg* %101, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %98
  %108 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %109 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %108, i64 1
  %110 = bitcast %struct.mlx4_wqe_inline_seg* %109 to i8*
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr i8, i8* %110, i64 %112
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sub i32 %115, %116
  %118 = call i32 @memcpy(i8* %113, i8* %114, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sub i32 %119, %120
  %122 = load i8*, i8** %8, align 8
  %123 = zext i32 %121 to i64
  %124 = getelementptr i8, i8* %122, i64 %123
  store i8* %124, i8** %8, align 8
  br label %125

125:                                              ; preds = %107, %98
  %126 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %127 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %126, i64 1
  %128 = bitcast %struct.mlx4_wqe_inline_seg* %127 to i8*
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to %struct.mlx4_wqe_inline_seg*
  store %struct.mlx4_wqe_inline_seg* %132, %struct.mlx4_wqe_inline_seg** %9, align 8
  %133 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %134 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %133, i64 1
  %135 = bitcast %struct.mlx4_wqe_inline_seg* %134 to i8*
  %136 = load i8*, i8** %8, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i32 @memcpy(i8* %135, i8* %136, i32 %141)
  br label %187

143:                                              ; preds = %89
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %146 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %145, i64 1
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %144, %struct.mlx4_wqe_inline_seg* %146, i32 %147)
  %149 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %150 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %149, i64 1
  %151 = bitcast %struct.mlx4_wqe_inline_seg* %150 to i8*
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr i8, i8* %151, i64 %153
  %155 = bitcast i8* %154 to %struct.mlx4_wqe_inline_seg*
  store %struct.mlx4_wqe_inline_seg* %155, %struct.mlx4_wqe_inline_seg** %9, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %159 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %158, i64 1
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sub i32 %160, %161
  %163 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %156, i32 %157, %struct.mlx4_wqe_inline_seg* %159, i32 %162)
  %164 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %165 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %143
  %169 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %170 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %169, i64 1
  %171 = bitcast %struct.mlx4_wqe_inline_seg* %170 to i8*
  %172 = load i32, i32* %11, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr i8, i8* %171, i64 %173
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = sub i64 0, %176
  %178 = getelementptr i8, i8* %174, i64 %177
  %179 = load i8*, i8** %8, align 8
  %180 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %181 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = call i32 @skb_frag_size(i32* %183)
  %185 = call i32 @memcpy(i8* %178, i8* %179, i32 %184)
  br label %186

186:                                              ; preds = %168, %143
  br label %187

187:                                              ; preds = %186, %125
  %188 = call i32 (...) @dma_wmb()
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %10, align 4
  %193 = sub nsw i32 %191, %192
  %194 = or i32 -2147483648, %193
  %195 = call i8* @cpu_to_be32(i32 %194)
  %196 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %9, align 8
  %197 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %187, %88
  ret void
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, %struct.mlx4_wqe_inline_seg*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, %struct.mlx4_wqe_inline_seg*, i32) #1

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
