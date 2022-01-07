; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_vector_assign_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_vector_assign_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32, i32, i32, i32*, i32* }
%struct.nfp_net_r_vector = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, %struct.nfp_net_r_vector*, i32)* @nfp_net_vector_assign_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_vector_assign_rings(%struct.nfp_net_dp* %0, %struct.nfp_net_r_vector* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_net_dp*, align 8
  %5 = alloca %struct.nfp_net_r_vector*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %4, align 8
  store %struct.nfp_net_r_vector* %1, %struct.nfp_net_r_vector** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi i32* [ %18, %12 ], [ null, %19 ]
  %22 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %26 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %31 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  br label %37

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32* [ %35, %29 ], [ null, %36 ]
  %39 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %40 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %43 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %46 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = icmp slt i32 %41, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %37
  %51 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %52 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %55 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %53, i64 %59
  br label %62

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61, %50
  %63 = phi i32* [ %60, %50 ], [ null, %61 ]
  %64 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %65 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
