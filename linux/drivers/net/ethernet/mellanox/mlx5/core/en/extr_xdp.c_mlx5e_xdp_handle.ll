; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_4__*, i32, i32, i32, i32, %struct.xdp_umem*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_dma_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i32, i32* }

@MLX5E_RQ_FLAG_XDP_XMIT = common dso_local global i32 0, align 4
@MLX5E_RQ_FLAG_XDP_REDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xdp_handle(%struct.mlx5e_rq* %0, %struct.mlx5e_dma_info* %1, i8* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_rq*, align 8
  %9 = alloca %struct.mlx5e_dma_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bpf_prog*, align 8
  %15 = alloca %struct.xdp_umem*, align 8
  %16 = alloca %struct.xdp_buff, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %8, align 8
  store %struct.mlx5e_dma_info* %1, %struct.mlx5e_dma_info** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.bpf_prog* @READ_ONCE(i32 %22)
  store %struct.bpf_prog* %23, %struct.bpf_prog** %14, align 8
  %24 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %24, i32 0, i32 5
  %26 = load %struct.xdp_umem*, %struct.xdp_umem** %25, align 8
  store %struct.xdp_umem* %26, %struct.xdp_umem** %15, align 8
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %28 = icmp ne %struct.bpf_prog* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %170

30:                                               ; preds = %6
  %31 = load i8*, i8** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %31, i64 %34
  %36 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = call i32 @xdp_set_data_meta_invalid(%struct.xdp_buff* %16)
  %38 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %39, i64 %42
  %44 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 3
  store i32 %53, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %30
  %56 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %57 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 4
  store i32* %57, i32** %58, align 8
  %59 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %60 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %59, %struct.xdp_buff* %16)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %65 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %19, align 4
  %72 = load %struct.xdp_umem*, %struct.xdp_umem** %15, align 8
  %73 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @xsk_umem_adjust_offset(%struct.xdp_umem* %72, i32 %74, i32 %75)
  %77 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 3
  store i32 %76, i32* %77, align 8
  br label %78

78:                                               ; preds = %63, %55
  %79 = load i32, i32* %17, align 4
  switch i32 %79, label %152 [
    i32 130, label %80
    i32 128, label %99
    i32 129, label %118
    i32 132, label %155
    i32 131, label %163
  ]

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %82 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = ptrtoint i8* %91 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = load i32*, i32** %12, align 8
  store i32 %97, i32* %98, align 4
  store i32 0, i32* %7, align 4
  br label %170

99:                                               ; preds = %78
  %100 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %101 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %104 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %9, align 8
  %105 = call i32 @mlx5e_xmit_xdp_buff(i32 %102, %struct.mlx5e_rq* %103, %struct.mlx5e_dma_info* %104, %struct.xdp_buff* %16)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @unlikely(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %156

112:                                              ; preds = %99
  %113 = load i32, i32* @MLX5E_RQ_FLAG_XDP_XMIT, align 4
  %114 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %115 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @__set_bit(i32 %113, i32 %116)
  store i32 1, i32* %7, align 4
  br label %170

118:                                              ; preds = %78
  %119 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %120 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %123 = call i32 @xdp_do_redirect(i32 %121, %struct.xdp_buff* %16, %struct.bpf_prog* %122)
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @unlikely(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %156

128:                                              ; preds = %118
  %129 = load i32, i32* @MLX5E_RQ_FLAG_XDP_XMIT, align 4
  %130 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %131 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @__set_bit(i32 %129, i32 %132)
  %134 = load i32, i32* @MLX5E_RQ_FLAG_XDP_REDIRECT, align 4
  %135 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %136 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @__set_bit(i32 %134, i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %128
  %142 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %143 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %9, align 8
  %144 = call i32 @mlx5e_page_dma_unmap(%struct.mlx5e_rq* %142, %struct.mlx5e_dma_info* %143)
  br label %145

145:                                              ; preds = %141, %128
  %146 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %147 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  store i32 1, i32* %7, align 4
  br label %170

152:                                              ; preds = %78
  %153 = load i32, i32* %17, align 4
  %154 = call i32 @bpf_warn_invalid_xdp_action(i32 %153)
  br label %155

155:                                              ; preds = %78, %152
  br label %156

156:                                              ; preds = %155, %127, %111
  %157 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %158 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @trace_xdp_exception(i32 %159, %struct.bpf_prog* %160, i32 %161)
  br label %163

163:                                              ; preds = %78, %156
  %164 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %8, align 8
  %165 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  store i32 1, i32* %7, align 4
  br label %170

170:                                              ; preds = %163, %145, %112, %80, %29
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @xdp_set_data_meta_invalid(%struct.xdp_buff*) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @xsk_umem_adjust_offset(%struct.xdp_umem*, i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @mlx5e_xmit_xdp_buff(i32, %struct.mlx5e_rq*, %struct.mlx5e_dma_info*, %struct.xdp_buff*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @xdp_do_redirect(i32, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @mlx5e_page_dma_unmap(%struct.mlx5e_rq*, %struct.mlx5e_dma_info*) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
