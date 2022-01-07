; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_postsend_icm_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_postsend_icm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { %struct.mlx5dr_send_ring*, %struct.TYPE_5__ }
%struct.mlx5dr_send_ring = type { i32, i32, i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.postsend_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, %struct.postsend_info*)* @dr_postsend_icm_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_postsend_icm_data(%struct.mlx5dr_domain* %0, %struct.postsend_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca %struct.postsend_info*, align 8
  %6 = alloca %struct.mlx5dr_send_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %4, align 8
  store %struct.postsend_info* %1, %struct.postsend_info** %5, align 8
  %9 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %9, i32 0, i32 0
  %11 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %10, align 8
  store %struct.mlx5dr_send_ring* %11, %struct.mlx5dr_send_ring** %6, align 8
  %12 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %13 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %6, align 8
  %14 = call i32 @dr_handle_pending_wc(%struct.mlx5dr_domain* %12, %struct.mlx5dr_send_ring* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %92

19:                                               ; preds = %2
  %20 = load %struct.postsend_info*, %struct.postsend_info** %5, align 8
  %21 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %23, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %19
  %30 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %33, i32 0, i32 0
  %35 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %34, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %32, %38
  %40 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %7, align 8
  %45 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.postsend_info*, %struct.postsend_info** %5, align 8
  %51 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.postsend_info*, %struct.postsend_info** %5, align 8
  %56 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i64 %49, i8* %54, i32 %58)
  %60 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %6, align 8
  %61 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %60, i32 0, i32 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %64, %65
  %67 = load %struct.postsend_info*, %struct.postsend_info** %5, align 8
  %68 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %6, align 8
  %71 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %70, i32 0, i32 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.postsend_info*, %struct.postsend_info** %5, align 8
  %77 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  br label %79

79:                                               ; preds = %29, %19
  %80 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %6, align 8
  %81 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %6, align 8
  %85 = load %struct.postsend_info*, %struct.postsend_info** %5, align 8
  %86 = call i32 @dr_fill_data_segs(%struct.mlx5dr_send_ring* %84, %struct.postsend_info* %85)
  %87 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %6, align 8
  %88 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.postsend_info*, %struct.postsend_info** %5, align 8
  %91 = call i32 @dr_post_send(i32 %89, %struct.postsend_info* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %79, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dr_handle_pending_wc(%struct.mlx5dr_domain*, %struct.mlx5dr_send_ring*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @dr_fill_data_segs(%struct.mlx5dr_send_ring*, %struct.postsend_info*) #1

declare dso_local i32 @dr_post_send(i32, %struct.postsend_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
