; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_init_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_init_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, i32, i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vfpf_init_tlv }
%struct.vfpf_init_tlv = type { i32, i64, i32, i32 }

@VFPF_INIT_FLG_STATS_COALESCE = common dso_local global i32 0, align 4
@VF_CFG_STATS_COALESCE = common dso_local global i32 0, align 4
@VF_CFG_EXT_BULLETIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_init_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_init_vf(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca %struct.vfpf_init_tlv*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %9 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.vfpf_init_tlv* %13, %struct.vfpf_init_tlv** %7, align 8
  %14 = load %struct.vfpf_init_tlv*, %struct.vfpf_init_tlv** %7, align 8
  %15 = getelementptr inbounds %struct.vfpf_init_tlv, %struct.vfpf_init_tlv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vfpf_init_tlv*, %struct.vfpf_init_tlv** %7, align 8
  %20 = getelementptr inbounds %struct.vfpf_init_tlv, %struct.vfpf_init_tlv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %26 = load %struct.vfpf_init_tlv*, %struct.vfpf_init_tlv** %7, align 8
  %27 = getelementptr inbounds %struct.vfpf_init_tlv, %struct.vfpf_init_tlv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @bnx2x_vf_init(%struct.bnx2x* %24, %struct.bnx2x_virtf* %25, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.vfpf_init_tlv*, %struct.vfpf_init_tlv** %7, align 8
  %32 = getelementptr inbounds %struct.vfpf_init_tlv, %struct.vfpf_init_tlv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VFPF_INIT_FLG_STATS_COALESCE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load i32, i32* @VF_CFG_STATS_COALESCE, align 4
  %39 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %40 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %3
  %44 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %45 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VF_CFG_EXT_BULLETIN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %52 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %53 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bnx2x_iov_link_update_vf(%struct.bnx2x* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %58 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %57, %struct.bnx2x_virtf* %58, i32 %59)
  ret void
}

declare dso_local i32 @bnx2x_vf_init(%struct.bnx2x*, %struct.bnx2x_virtf*, i32*) #1

declare dso_local i32 @bnx2x_iov_link_update_vf(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
