; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_read_indirect_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_read_indirect_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_dumpspec_cpp_isl_id = type { i32, i32, i32 }

@NFP_IND_ME_REFL_WR_SIG_INIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp*, i64, i32, i32, i32, i32, i8*)* @nfp_read_indirect_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_read_indirect_csr(%struct.nfp_cpp* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_dumpspec_cpp_isl_id, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca %struct.nfp_cpp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %1, i64* %19, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %2, i32* %20, align 4
  %21 = bitcast %struct.nfp_dumpspec_cpp_isl_id* %9 to i8*
  %22 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @nfp_get_ind_csr_ctx_ptr_offs(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = getelementptr inbounds %struct.nfp_dumpspec_cpp_isl_id, %struct.nfp_dumpspec_cpp_isl_id* %9, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NFP_IND_ME_REFL_WR_SIG_INIT, align 4
  %28 = getelementptr inbounds %struct.nfp_dumpspec_cpp_isl_id, %struct.nfp_dumpspec_cpp_isl_id* %9, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.nfp_dumpspec_cpp_isl_id, %struct.nfp_dumpspec_cpp_isl_id* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @NFP_CPP_ISLAND_ID(i32 %26, i32 %27, i32 %29, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.nfp_cpp*, %struct.nfp_cpp** %11, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @nfp_cpp_writel(%struct.nfp_cpp* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %7
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %8, align 4
  br label %84

42:                                               ; preds = %7
  %43 = call i32 @nfp_get_numeric_cpp_id(%struct.nfp_dumpspec_cpp_isl_id* %9)
  store i32 %43, i32* %17, align 4
  %44 = load %struct.nfp_cpp*, %struct.nfp_cpp** %11, align 8
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @nfp_cpp_read(%struct.nfp_cpp* %44, i32 %45, i32 %46, i8* %47, i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load i32, i32* %18, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %18, align 4
  br label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i32 [ %57, %56 ], [ %60, %58 ]
  store i32 %62, i32* %8, align 4
  br label %84

63:                                               ; preds = %42
  %64 = load %struct.nfp_cpp*, %struct.nfp_cpp** %11, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @nfp_cpp_read(%struct.nfp_cpp* %64, i32 %65, i32 %66, i8* %67, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %18, align 4
  br label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi i32 [ %77, %76 ], [ %80, %78 ]
  store i32 %82, i32* %8, align 4
  br label %84

83:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %81, %61, %40
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nfp_get_ind_csr_ctx_ptr_offs(i32) #2

declare dso_local i32 @NFP_CPP_ISLAND_ID(i32, i32, i32, i32) #2

declare dso_local i32 @nfp_cpp_writel(%struct.nfp_cpp*, i32, i32, i32) #2

declare dso_local i32 @nfp_get_numeric_cpp_id(%struct.nfp_dumpspec_cpp_isl_id*) #2

declare dso_local i32 @nfp_cpp_read(%struct.nfp_cpp*, i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
