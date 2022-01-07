; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_sw_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_sw_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, %struct.mlx5e_channel_stats*, %struct.TYPE_2__ }
%struct.mlx5e_channel_stats = type { %struct.mlx5e_sq_stats*, %struct.mlx5e_ch_stats, %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats, %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats }
%struct.mlx5e_sq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_ch_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_xdpsq_stats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.mlx5e_sw_stats }
%struct.mlx5e_sw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_grp_sw_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_grp_sw_update_stats(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_sw_stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_channel_stats*, align 8
  %6 = alloca %struct.mlx5e_xdpsq_stats*, align 8
  %7 = alloca %struct.mlx5e_xdpsq_stats*, align 8
  %8 = alloca %struct.mlx5e_xdpsq_stats*, align 8
  %9 = alloca %struct.mlx5e_rq_stats*, align 8
  %10 = alloca %struct.mlx5e_rq_stats*, align 8
  %11 = alloca %struct.mlx5e_ch_stats*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5e_sq_stats*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.mlx5e_sw_stats* %16, %struct.mlx5e_sw_stats** %3, align 8
  %17 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %18 = call i32 @memset(%struct.mlx5e_sw_stats* %17, i32 0, i32 408)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %889, %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %892

25:                                               ; preds = %19
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 2
  %28 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %28, i64 %30
  store %struct.mlx5e_channel_stats* %31, %struct.mlx5e_channel_stats** %5, align 8
  %32 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %32, i32 0, i32 6
  store %struct.mlx5e_xdpsq_stats* %33, %struct.mlx5e_xdpsq_stats** %6, align 8
  %34 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %34, i32 0, i32 5
  store %struct.mlx5e_xdpsq_stats* %35, %struct.mlx5e_xdpsq_stats** %7, align 8
  %36 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %36, i32 0, i32 4
  store %struct.mlx5e_xdpsq_stats* %37, %struct.mlx5e_xdpsq_stats** %8, align 8
  %38 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %38, i32 0, i32 3
  store %struct.mlx5e_rq_stats* %39, %struct.mlx5e_rq_stats** %9, align 8
  %40 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %40, i32 0, i32 2
  store %struct.mlx5e_rq_stats* %41, %struct.mlx5e_rq_stats** %10, align 8
  %42 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %42, i32 0, i32 1
  store %struct.mlx5e_ch_stats* %43, %struct.mlx5e_ch_stats** %11, align 8
  %44 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %44, i32 0, i32 18
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %47, i32 0, i32 101
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %54 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %53, i32 0, i32 17
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %56, i32 0, i32 100
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %63 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %62, i32 0, i32 28
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %66 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %65, i32 0, i32 99
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %72 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %71, i32 0, i32 27
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %75 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %74, i32 0, i32 98
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %81 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %80, i32 0, i32 12
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %84 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %83, i32 0, i32 97
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %90 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %89, i32 0, i32 11
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %93 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %92, i32 0, i32 96
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %99 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %98, i32 0, i32 13
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %102 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %101, i32 0, i32 95
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %108 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %107, i32 0, i32 16
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %111 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %110, i32 0, i32 94
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %117 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %116, i32 0, i32 26
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %120 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %119, i32 0, i32 93
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %126 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %125, i32 0, i32 25
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %129 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %128, i32 0, i32 92
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %135 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %134, i32 0, i32 15
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %138 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %137, i32 0, i32 91
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %144 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %143, i32 0, i32 14
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %147 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %146, i32 0, i32 90
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 4
  %152 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %153 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %152, i32 0, i32 10
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %156 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %155, i32 0, i32 89
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %162 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %161, i32 0, i32 9
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %165 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %164, i32 0, i32 88
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %163
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 4
  %170 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %7, align 8
  %171 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %174 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %173, i32 0, i32 87
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %172
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 4
  %179 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %7, align 8
  %180 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %183 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %182, i32 0, i32 86
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %181
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  %188 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %7, align 8
  %189 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %192 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %191, i32 0, i32 85
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 4
  %197 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %7, align 8
  %198 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %201 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %200, i32 0, i32 84
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %199
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %201, align 4
  %206 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %7, align 8
  %207 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %210 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %209, i32 0, i32 83
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %208
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 4
  %215 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %7, align 8
  %216 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %219 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %218, i32 0, i32 82
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %221, %217
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %219, align 4
  %224 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %7, align 8
  %225 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %228 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %227, i32 0, i32 81
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %226
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %228, align 4
  %233 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %234 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %233, i32 0, i32 8
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %237 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %236, i32 0, i32 80
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, %235
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %237, align 4
  %242 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %243 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %246 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %245, i32 0, i32 79
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %244
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %246, align 4
  %251 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %252 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %251, i32 0, i32 6
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %255 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %254, i32 0, i32 78
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %253
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %255, align 4
  %260 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %261 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %264 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %263, i32 0, i32 77
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %266, %262
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %264, align 4
  %269 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %270 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %273 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %272, i32 0, i32 76
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, %271
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %273, align 4
  %278 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %279 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %282 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %281, i32 0, i32 75
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %284, %280
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %282, align 4
  %287 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %288 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %291 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %290, i32 0, i32 74
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %289
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %291, align 4
  %296 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %297 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %296, i32 0, i32 24
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %300 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %299, i32 0, i32 73
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %298
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  %305 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %306 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %305, i32 0, i32 23
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %309 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %308, i32 0, i32 72
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %307
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %309, align 4
  %314 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %315 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %314, i32 0, i32 22
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %318 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %317, i32 0, i32 71
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %320, %316
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %318, align 4
  %323 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %324 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %323, i32 0, i32 21
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %327 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %326, i32 0, i32 70
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, %325
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %327, align 4
  %332 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %333 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %332, i32 0, i32 20
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %336 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %335, i32 0, i32 69
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %338, %334
  %340 = trunc i64 %339 to i32
  store i32 %340, i32* %336, align 4
  %341 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %342 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %345 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %344, i32 0, i32 68
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = add nsw i64 %347, %343
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %345, align 4
  %350 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %351 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %354 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %353, i32 0, i32 67
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %356, %352
  %358 = trunc i64 %357 to i32
  store i32 %358, i32* %354, align 4
  %359 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %360 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %359, i32 0, i32 19
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %363 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %362, i32 0, i32 66
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %365, %361
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %363, align 4
  %368 = load %struct.mlx5e_ch_stats*, %struct.mlx5e_ch_stats** %11, align 8
  %369 = getelementptr inbounds %struct.mlx5e_ch_stats, %struct.mlx5e_ch_stats* %368, i32 0, i32 5
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %372 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %371, i32 0, i32 65
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = add nsw i64 %374, %370
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %372, align 4
  %377 = load %struct.mlx5e_ch_stats*, %struct.mlx5e_ch_stats** %11, align 8
  %378 = getelementptr inbounds %struct.mlx5e_ch_stats, %struct.mlx5e_ch_stats* %377, i32 0, i32 4
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %381 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %380, i32 0, i32 64
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %383, %379
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %381, align 4
  %386 = load %struct.mlx5e_ch_stats*, %struct.mlx5e_ch_stats** %11, align 8
  %387 = getelementptr inbounds %struct.mlx5e_ch_stats, %struct.mlx5e_ch_stats* %386, i32 0, i32 3
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %390 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %389, i32 0, i32 63
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = add nsw i64 %392, %388
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %390, align 4
  %395 = load %struct.mlx5e_ch_stats*, %struct.mlx5e_ch_stats** %11, align 8
  %396 = getelementptr inbounds %struct.mlx5e_ch_stats, %struct.mlx5e_ch_stats* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %399 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %398, i32 0, i32 62
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = add nsw i64 %401, %397
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %399, align 4
  %404 = load %struct.mlx5e_ch_stats*, %struct.mlx5e_ch_stats** %11, align 8
  %405 = getelementptr inbounds %struct.mlx5e_ch_stats, %struct.mlx5e_ch_stats* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %408 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %407, i32 0, i32 61
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %410, %406
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %408, align 4
  %413 = load %struct.mlx5e_ch_stats*, %struct.mlx5e_ch_stats** %11, align 8
  %414 = getelementptr inbounds %struct.mlx5e_ch_stats, %struct.mlx5e_ch_stats* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %417 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %416, i32 0, i32 60
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  %420 = add nsw i64 %419, %415
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %417, align 4
  %422 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %6, align 8
  %423 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %422, i32 0, i32 5
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %426 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %425, i32 0, i32 59
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = add nsw i64 %428, %424
  %430 = trunc i64 %429 to i32
  store i32 %430, i32* %426, align 4
  %431 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %6, align 8
  %432 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %431, i32 0, i32 4
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %435 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %434, i32 0, i32 58
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  %438 = add nsw i64 %437, %433
  %439 = trunc i64 %438 to i32
  store i32 %439, i32* %435, align 4
  %440 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %6, align 8
  %441 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %440, i32 0, i32 3
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %444 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %443, i32 0, i32 57
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = add nsw i64 %446, %442
  %448 = trunc i64 %447 to i32
  store i32 %448, i32* %444, align 4
  %449 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %6, align 8
  %450 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %449, i32 0, i32 6
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %453 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %452, i32 0, i32 56
  %454 = load i32, i32* %453, align 4
  %455 = sext i32 %454 to i64
  %456 = add nsw i64 %455, %451
  %457 = trunc i64 %456 to i32
  store i32 %457, i32* %453, align 4
  %458 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %6, align 8
  %459 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %458, i32 0, i32 2
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %462 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %461, i32 0, i32 55
  %463 = load i32, i32* %462, align 4
  %464 = sext i32 %463 to i64
  %465 = add nsw i64 %464, %460
  %466 = trunc i64 %465 to i32
  store i32 %466, i32* %462, align 4
  %467 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %6, align 8
  %468 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %471 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %470, i32 0, i32 54
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  %474 = add nsw i64 %473, %469
  %475 = trunc i64 %474 to i32
  store i32 %475, i32* %471, align 4
  %476 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %6, align 8
  %477 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %480 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %479, i32 0, i32 53
  %481 = load i32, i32* %480, align 4
  %482 = sext i32 %481 to i64
  %483 = add nsw i64 %482, %478
  %484 = trunc i64 %483 to i32
  store i32 %484, i32* %480, align 4
  %485 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %486 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %485, i32 0, i32 18
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %489 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %488, i32 0, i32 52
  %490 = load i32, i32* %489, align 4
  %491 = sext i32 %490 to i64
  %492 = add nsw i64 %491, %487
  %493 = trunc i64 %492 to i32
  store i32 %493, i32* %489, align 4
  %494 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %495 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %494, i32 0, i32 17
  %496 = load i64, i64* %495, align 8
  %497 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %498 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %497, i32 0, i32 51
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = add nsw i64 %500, %496
  %502 = trunc i64 %501 to i32
  store i32 %502, i32* %498, align 4
  %503 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %504 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %503, i32 0, i32 16
  %505 = load i64, i64* %504, align 8
  %506 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %507 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %506, i32 0, i32 50
  %508 = load i32, i32* %507, align 4
  %509 = sext i32 %508 to i64
  %510 = add nsw i64 %509, %505
  %511 = trunc i64 %510 to i32
  store i32 %511, i32* %507, align 4
  %512 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %513 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %512, i32 0, i32 15
  %514 = load i64, i64* %513, align 8
  %515 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %516 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %515, i32 0, i32 49
  %517 = load i32, i32* %516, align 4
  %518 = sext i32 %517 to i64
  %519 = add nsw i64 %518, %514
  %520 = trunc i64 %519 to i32
  store i32 %520, i32* %516, align 4
  %521 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %522 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %521, i32 0, i32 14
  %523 = load i64, i64* %522, align 8
  %524 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %525 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %524, i32 0, i32 48
  %526 = load i32, i32* %525, align 4
  %527 = sext i32 %526 to i64
  %528 = add nsw i64 %527, %523
  %529 = trunc i64 %528 to i32
  store i32 %529, i32* %525, align 4
  %530 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %531 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %530, i32 0, i32 13
  %532 = load i64, i64* %531, align 8
  %533 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %534 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %533, i32 0, i32 47
  %535 = load i32, i32* %534, align 4
  %536 = sext i32 %535 to i64
  %537 = add nsw i64 %536, %532
  %538 = trunc i64 %537 to i32
  store i32 %538, i32* %534, align 4
  %539 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %540 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %539, i32 0, i32 12
  %541 = load i64, i64* %540, align 8
  %542 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %543 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %542, i32 0, i32 46
  %544 = load i32, i32* %543, align 4
  %545 = sext i32 %544 to i64
  %546 = add nsw i64 %545, %541
  %547 = trunc i64 %546 to i32
  store i32 %547, i32* %543, align 4
  %548 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %549 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %548, i32 0, i32 11
  %550 = load i64, i64* %549, align 8
  %551 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %552 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %551, i32 0, i32 45
  %553 = load i32, i32* %552, align 4
  %554 = sext i32 %553 to i64
  %555 = add nsw i64 %554, %550
  %556 = trunc i64 %555 to i32
  store i32 %556, i32* %552, align 4
  %557 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %558 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %557, i32 0, i32 10
  %559 = load i64, i64* %558, align 8
  %560 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %561 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %560, i32 0, i32 44
  %562 = load i32, i32* %561, align 4
  %563 = sext i32 %562 to i64
  %564 = add nsw i64 %563, %559
  %565 = trunc i64 %564 to i32
  store i32 %565, i32* %561, align 4
  %566 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %567 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %566, i32 0, i32 9
  %568 = load i64, i64* %567, align 8
  %569 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %570 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %569, i32 0, i32 43
  %571 = load i32, i32* %570, align 4
  %572 = sext i32 %571 to i64
  %573 = add nsw i64 %572, %568
  %574 = trunc i64 %573 to i32
  store i32 %574, i32* %570, align 4
  %575 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %576 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %575, i32 0, i32 8
  %577 = load i64, i64* %576, align 8
  %578 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %579 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %578, i32 0, i32 42
  %580 = load i32, i32* %579, align 4
  %581 = sext i32 %580 to i64
  %582 = add nsw i64 %581, %577
  %583 = trunc i64 %582 to i32
  store i32 %583, i32* %579, align 4
  %584 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %585 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %584, i32 0, i32 7
  %586 = load i64, i64* %585, align 8
  %587 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %588 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %587, i32 0, i32 41
  %589 = load i32, i32* %588, align 4
  %590 = sext i32 %589 to i64
  %591 = add nsw i64 %590, %586
  %592 = trunc i64 %591 to i32
  store i32 %592, i32* %588, align 4
  %593 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %594 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %593, i32 0, i32 6
  %595 = load i64, i64* %594, align 8
  %596 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %597 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %596, i32 0, i32 40
  %598 = load i32, i32* %597, align 4
  %599 = sext i32 %598 to i64
  %600 = add nsw i64 %599, %595
  %601 = trunc i64 %600 to i32
  store i32 %601, i32* %597, align 4
  %602 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %603 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %602, i32 0, i32 5
  %604 = load i64, i64* %603, align 8
  %605 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %606 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %605, i32 0, i32 39
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  %609 = add nsw i64 %608, %604
  %610 = trunc i64 %609 to i32
  store i32 %610, i32* %606, align 4
  %611 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %612 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %611, i32 0, i32 4
  %613 = load i64, i64* %612, align 8
  %614 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %615 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %614, i32 0, i32 38
  %616 = load i32, i32* %615, align 4
  %617 = sext i32 %616 to i64
  %618 = add nsw i64 %617, %613
  %619 = trunc i64 %618 to i32
  store i32 %619, i32* %615, align 4
  %620 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %621 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %620, i32 0, i32 3
  %622 = load i64, i64* %621, align 8
  %623 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %624 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %623, i32 0, i32 37
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  %627 = add nsw i64 %626, %622
  %628 = trunc i64 %627 to i32
  store i32 %628, i32* %624, align 4
  %629 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %630 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %629, i32 0, i32 2
  %631 = load i64, i64* %630, align 8
  %632 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %633 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %632, i32 0, i32 36
  %634 = load i32, i32* %633, align 4
  %635 = sext i32 %634 to i64
  %636 = add nsw i64 %635, %631
  %637 = trunc i64 %636 to i32
  store i32 %637, i32* %633, align 4
  %638 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %639 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %638, i32 0, i32 1
  %640 = load i64, i64* %639, align 8
  %641 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %642 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %641, i32 0, i32 35
  %643 = load i32, i32* %642, align 4
  %644 = sext i32 %643 to i64
  %645 = add nsw i64 %644, %640
  %646 = trunc i64 %645 to i32
  store i32 %646, i32* %642, align 4
  %647 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %9, align 8
  %648 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %647, i32 0, i32 0
  %649 = load i64, i64* %648, align 8
  %650 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %651 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %650, i32 0, i32 34
  %652 = load i32, i32* %651, align 4
  %653 = sext i32 %652 to i64
  %654 = add nsw i64 %653, %649
  %655 = trunc i64 %654 to i32
  store i32 %655, i32* %651, align 4
  %656 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %8, align 8
  %657 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %656, i32 0, i32 5
  %658 = load i64, i64* %657, align 8
  %659 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %660 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %659, i32 0, i32 33
  %661 = load i32, i32* %660, align 4
  %662 = sext i32 %661 to i64
  %663 = add nsw i64 %662, %658
  %664 = trunc i64 %663 to i32
  store i32 %664, i32* %660, align 4
  %665 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %8, align 8
  %666 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %665, i32 0, i32 4
  %667 = load i64, i64* %666, align 8
  %668 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %669 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %668, i32 0, i32 32
  %670 = load i32, i32* %669, align 4
  %671 = sext i32 %670 to i64
  %672 = add nsw i64 %671, %667
  %673 = trunc i64 %672 to i32
  store i32 %673, i32* %669, align 4
  %674 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %8, align 8
  %675 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %674, i32 0, i32 3
  %676 = load i64, i64* %675, align 8
  %677 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %678 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %677, i32 0, i32 31
  %679 = load i32, i32* %678, align 4
  %680 = sext i32 %679 to i64
  %681 = add nsw i64 %680, %676
  %682 = trunc i64 %681 to i32
  store i32 %682, i32* %678, align 4
  %683 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %8, align 8
  %684 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %683, i32 0, i32 2
  %685 = load i64, i64* %684, align 8
  %686 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %687 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %686, i32 0, i32 30
  %688 = load i32, i32* %687, align 4
  %689 = sext i32 %688 to i64
  %690 = add nsw i64 %689, %685
  %691 = trunc i64 %690 to i32
  store i32 %691, i32* %687, align 4
  %692 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %8, align 8
  %693 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %692, i32 0, i32 1
  %694 = load i64, i64* %693, align 8
  %695 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %696 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %695, i32 0, i32 29
  %697 = load i32, i32* %696, align 4
  %698 = sext i32 %697 to i64
  %699 = add nsw i64 %698, %694
  %700 = trunc i64 %699 to i32
  store i32 %700, i32* %696, align 4
  %701 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %8, align 8
  %702 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %701, i32 0, i32 0
  %703 = load i64, i64* %702, align 8
  %704 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %705 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %704, i32 0, i32 28
  %706 = load i32, i32* %705, align 4
  %707 = sext i32 %706 to i64
  %708 = add nsw i64 %707, %703
  %709 = trunc i64 %708 to i32
  store i32 %709, i32* %705, align 4
  store i32 0, i32* %12, align 4
  br label %710

710:                                              ; preds = %885, %25
  %711 = load i32, i32* %12, align 4
  %712 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %713 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %712, i32 0, i32 1
  %714 = load i32, i32* %713, align 4
  %715 = icmp slt i32 %711, %714
  br i1 %715, label %716, label %888

716:                                              ; preds = %710
  %717 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %5, align 8
  %718 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %717, i32 0, i32 0
  %719 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %718, align 8
  %720 = load i32, i32* %12, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %719, i64 %721
  store %struct.mlx5e_sq_stats* %722, %struct.mlx5e_sq_stats** %13, align 8
  %723 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %724 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %723, i32 0, i32 27
  %725 = load i64, i64* %724, align 8
  %726 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %727 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %726, i32 0, i32 27
  %728 = load i32, i32* %727, align 4
  %729 = sext i32 %728 to i64
  %730 = add nsw i64 %729, %725
  %731 = trunc i64 %730 to i32
  store i32 %731, i32* %727, align 4
  %732 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %733 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %732, i32 0, i32 26
  %734 = load i64, i64* %733, align 8
  %735 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %736 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %735, i32 0, i32 26
  %737 = load i32, i32* %736, align 4
  %738 = sext i32 %737 to i64
  %739 = add nsw i64 %738, %734
  %740 = trunc i64 %739 to i32
  store i32 %740, i32* %736, align 4
  %741 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %742 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %741, i32 0, i32 25
  %743 = load i64, i64* %742, align 8
  %744 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %745 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %744, i32 0, i32 25
  %746 = load i32, i32* %745, align 4
  %747 = sext i32 %746 to i64
  %748 = add nsw i64 %747, %743
  %749 = trunc i64 %748 to i32
  store i32 %749, i32* %745, align 4
  %750 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %751 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %750, i32 0, i32 24
  %752 = load i64, i64* %751, align 8
  %753 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %754 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %753, i32 0, i32 24
  %755 = load i32, i32* %754, align 4
  %756 = sext i32 %755 to i64
  %757 = add nsw i64 %756, %752
  %758 = trunc i64 %757 to i32
  store i32 %758, i32* %754, align 4
  %759 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %760 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %759, i32 0, i32 23
  %761 = load i64, i64* %760, align 8
  %762 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %763 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %762, i32 0, i32 23
  %764 = load i32, i32* %763, align 4
  %765 = sext i32 %764 to i64
  %766 = add nsw i64 %765, %761
  %767 = trunc i64 %766 to i32
  store i32 %767, i32* %763, align 4
  %768 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %769 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %768, i32 0, i32 22
  %770 = load i64, i64* %769, align 8
  %771 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %772 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %771, i32 0, i32 22
  %773 = load i32, i32* %772, align 4
  %774 = sext i32 %773 to i64
  %775 = add nsw i64 %774, %770
  %776 = trunc i64 %775 to i32
  store i32 %776, i32* %772, align 4
  %777 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %778 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %777, i32 0, i32 21
  %779 = load i64, i64* %778, align 8
  %780 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %781 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %780, i32 0, i32 21
  %782 = load i32, i32* %781, align 4
  %783 = sext i32 %782 to i64
  %784 = add nsw i64 %783, %779
  %785 = trunc i64 %784 to i32
  store i32 %785, i32* %781, align 4
  %786 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %787 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %786, i32 0, i32 20
  %788 = load i64, i64* %787, align 8
  %789 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %790 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %789, i32 0, i32 20
  %791 = load i32, i32* %790, align 4
  %792 = sext i32 %791 to i64
  %793 = add nsw i64 %792, %788
  %794 = trunc i64 %793 to i32
  store i32 %794, i32* %790, align 4
  %795 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %796 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %795, i32 0, i32 19
  %797 = load i64, i64* %796, align 8
  %798 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %799 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %798, i32 0, i32 19
  %800 = load i32, i32* %799, align 4
  %801 = sext i32 %800 to i64
  %802 = add nsw i64 %801, %797
  %803 = trunc i64 %802 to i32
  store i32 %803, i32* %799, align 4
  %804 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %805 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %804, i32 0, i32 18
  %806 = load i64, i64* %805, align 8
  %807 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %808 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %807, i32 0, i32 18
  %809 = load i32, i32* %808, align 4
  %810 = sext i32 %809 to i64
  %811 = add nsw i64 %810, %806
  %812 = trunc i64 %811 to i32
  store i32 %812, i32* %808, align 4
  %813 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %814 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %813, i32 0, i32 17
  %815 = load i64, i64* %814, align 8
  %816 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %817 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %816, i32 0, i32 17
  %818 = load i32, i32* %817, align 4
  %819 = sext i32 %818 to i64
  %820 = add nsw i64 %819, %815
  %821 = trunc i64 %820 to i32
  store i32 %821, i32* %817, align 4
  %822 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %823 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %822, i32 0, i32 16
  %824 = load i64, i64* %823, align 8
  %825 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %826 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %825, i32 0, i32 16
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  %829 = add nsw i64 %828, %824
  %830 = trunc i64 %829 to i32
  store i32 %830, i32* %826, align 4
  %831 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %832 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %831, i32 0, i32 15
  %833 = load i64, i64* %832, align 8
  %834 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %835 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %834, i32 0, i32 15
  %836 = load i32, i32* %835, align 4
  %837 = sext i32 %836 to i64
  %838 = add nsw i64 %837, %833
  %839 = trunc i64 %838 to i32
  store i32 %839, i32* %835, align 4
  %840 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %841 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %840, i32 0, i32 14
  %842 = load i64, i64* %841, align 8
  %843 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %844 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %843, i32 0, i32 14
  %845 = load i32, i32* %844, align 4
  %846 = sext i32 %845 to i64
  %847 = add nsw i64 %846, %842
  %848 = trunc i64 %847 to i32
  store i32 %848, i32* %844, align 4
  %849 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %850 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %849, i32 0, i32 13
  %851 = load i64, i64* %850, align 8
  %852 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %853 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %852, i32 0, i32 13
  %854 = load i32, i32* %853, align 4
  %855 = sext i32 %854 to i64
  %856 = add nsw i64 %855, %851
  %857 = trunc i64 %856 to i32
  store i32 %857, i32* %853, align 4
  %858 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %859 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %858, i32 0, i32 12
  %860 = load i64, i64* %859, align 8
  %861 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %862 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %861, i32 0, i32 12
  %863 = load i32, i32* %862, align 4
  %864 = sext i32 %863 to i64
  %865 = add nsw i64 %864, %860
  %866 = trunc i64 %865 to i32
  store i32 %866, i32* %862, align 4
  %867 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %868 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %867, i32 0, i32 11
  %869 = load i64, i64* %868, align 8
  %870 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %871 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %870, i32 0, i32 11
  %872 = load i32, i32* %871, align 4
  %873 = sext i32 %872 to i64
  %874 = add nsw i64 %873, %869
  %875 = trunc i64 %874 to i32
  store i32 %875, i32* %871, align 4
  %876 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %877 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %876, i32 0, i32 0
  %878 = load i64, i64* %877, align 8
  %879 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %880 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %879, i32 0, i32 0
  %881 = load i32, i32* %880, align 4
  %882 = sext i32 %881 to i64
  %883 = add nsw i64 %882, %878
  %884 = trunc i64 %883 to i32
  store i32 %884, i32* %880, align 4
  br label %885

885:                                              ; preds = %716
  %886 = load i32, i32* %12, align 4
  %887 = add nsw i32 %886, 1
  store i32 %887, i32* %12, align 4
  br label %710

888:                                              ; preds = %710
  br label %889

889:                                              ; preds = %888
  %890 = load i32, i32* %4, align 4
  %891 = add nsw i32 %890, 1
  store i32 %891, i32* %4, align 4
  br label %19

892:                                              ; preds = %19
  ret void
}

declare dso_local i32 @memset(%struct.mlx5e_sw_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
