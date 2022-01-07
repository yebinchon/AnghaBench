; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_prepare_qp_to_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_prepare_qp_to_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.mlx5dr_qp* }
%struct.mlx5dr_qp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dr_qp_rts_attr = type { i32, i32, i32 }
%struct.dr_qp_rtr_attr = type { i32, i32, i32, i32, i32, i32, i32 }

@IB_MTU_1024 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*)* @dr_prepare_qp_to_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_prepare_qp_to_rts(%struct.mlx5dr_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.mlx5dr_qp*, align 8
  %5 = alloca %struct.dr_qp_rts_attr, align 4
  %6 = alloca %struct.dr_qp_rtr_attr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  %11 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %14, align 8
  store %struct.mlx5dr_qp* %15, %struct.mlx5dr_qp** %4, align 8
  %16 = bitcast %struct.dr_qp_rts_attr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = bitcast %struct.dr_qp_rtr_attr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 28, i1 false)
  %18 = load i32, i32* @IB_MTU_1024, align 4
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %19 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dr_modify_qp_rst2init(i32 %21, %struct.mlx5dr_qp* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %2, align 4
  br label %83

29:                                               ; preds = %1
  %30 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.dr_qp_rtr_attr, %struct.dr_qp_rtr_attr* %6, i32 0, i32 6
  %36 = call i32 @mlx5dr_cmd_query_gid(i32 %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %2, align 4
  br label %83

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.dr_qp_rtr_attr, %struct.dr_qp_rtr_attr* %6, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.dr_qp_rtr_attr, %struct.dr_qp_rtr_attr* %6, i32 0, i32 5
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.dr_qp_rtr_attr, %struct.dr_qp_rtr_attr* %6, i32 0, i32 1
  store i32 12, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds %struct.dr_qp_rtr_attr, %struct.dr_qp_rtr_attr* %6, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds %struct.dr_qp_rtr_attr, %struct.dr_qp_rtr_attr* %6, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.dr_qp_rtr_attr, %struct.dr_qp_rtr_attr* %6, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %61 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %4, align 8
  %64 = call i32 @dr_cmd_modify_qp_init2rtr(i32 %62, %struct.mlx5dr_qp* %63, %struct.dr_qp_rtr_attr* %6)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %41
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %2, align 4
  br label %83

69:                                               ; preds = %41
  %70 = getelementptr inbounds %struct.dr_qp_rts_attr, %struct.dr_qp_rts_attr* %5, i32 0, i32 0
  store i32 14, i32* %70, align 4
  %71 = getelementptr inbounds %struct.dr_qp_rts_attr, %struct.dr_qp_rts_attr* %5, i32 0, i32 1
  store i32 7, i32* %71, align 4
  %72 = getelementptr inbounds %struct.dr_qp_rts_attr, %struct.dr_qp_rts_attr* %5, i32 0, i32 2
  store i32 7, i32* %72, align 4
  %73 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %74 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %4, align 8
  %77 = call i32 @dr_cmd_modify_qp_rtr2rts(i32 %75, %struct.mlx5dr_qp* %76, %struct.dr_qp_rts_attr* %5)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %80, %67, %39, %27
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dr_modify_qp_rst2init(i32, %struct.mlx5dr_qp*, i32) #2

declare dso_local i32 @mlx5dr_cmd_query_gid(i32, i32, i32, i32*) #2

declare dso_local i32 @dr_cmd_modify_qp_init2rtr(i32, %struct.mlx5dr_qp*, %struct.dr_qp_rtr_attr*) #2

declare dso_local i32 @dr_cmd_modify_qp_rtr2rts(i32, %struct.mlx5dr_qp*, %struct.dr_qp_rts_attr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
