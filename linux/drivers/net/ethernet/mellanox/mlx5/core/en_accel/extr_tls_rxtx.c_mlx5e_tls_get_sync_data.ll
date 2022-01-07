; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_get_sync_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_get_sync_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tls_offload_context_tx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sync_info = type { i32, i32*, i8*, i32 }
%struct.tls_record_info = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_tls_offload_context_tx*, i8*, %struct.sync_info*)* @mlx5e_tls_get_sync_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tls_get_sync_data(%struct.mlx5e_tls_offload_context_tx* %0, i8* %1, %struct.sync_info* %2) #0 {
  %4 = alloca %struct.mlx5e_tls_offload_context_tx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sync_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tls_record_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.mlx5e_tls_offload_context_tx* %0, %struct.mlx5e_tls_offload_context_tx** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sync_info* %2, %struct.sync_info** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %20, i32 0, i32 0
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.sync_info*, %struct.sync_info** %6, align 8
  %24 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %23, i32 0, i32 3
  %25 = call %struct.tls_record_info* @tls_get_record(%struct.TYPE_2__* %21, i8* %22, i32* %24)
  store %struct.tls_record_info* %25, %struct.tls_record_info** %10, align 8
  %26 = load %struct.tls_record_info*, %struct.tls_record_info** %10, align 8
  %27 = icmp ne %struct.tls_record_info* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %112

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.tls_record_info*, %struct.tls_record_info** %10, align 8
  %36 = call i8* @tls_record_start_seq(%struct.tls_record_info* %35)
  %37 = ptrtoint i8* %34 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.sync_info*, %struct.sync_info** %6, align 8
  %43 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ult i8* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %33
  %50 = load %struct.tls_record_info*, %struct.tls_record_info** %10, align 8
  %51 = call i64 @tls_record_is_start_marker(%struct.tls_record_info* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %111

54:                                               ; preds = %49
  br label %112

55:                                               ; preds = %33
  %56 = load i8*, i8** %12, align 8
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %104, %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %107

61:                                               ; preds = %58
  %62 = load %struct.tls_record_info*, %struct.tls_record_info** %10, align 8
  %63 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sync_info*, %struct.sync_info** %6, align 8
  %70 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.sync_info*, %struct.sync_info** %6, align 8
  %76 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @__skb_frag_ref(i32* %80)
  %82 = load %struct.sync_info*, %struct.sync_info** %6, align 8
  %83 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i64 @skb_frag_size(i32* %87)
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %61
  %96 = load %struct.sync_info*, %struct.sync_info** %6, align 8
  %97 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @skb_frag_size_add(i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %95, %61
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %58

107:                                              ; preds = %58
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.sync_info*, %struct.sync_info** %6, align 8
  %110 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %53
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %54, %32
  %113 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %4, align 8
  %114 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tls_record_info* @tls_get_record(%struct.TYPE_2__*, i8*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @tls_record_start_seq(%struct.tls_record_info*) #1

declare dso_local i64 @tls_record_is_start_marker(%struct.tls_record_info*) #1

declare dso_local i32 @__skb_frag_ref(i32*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_size_add(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
