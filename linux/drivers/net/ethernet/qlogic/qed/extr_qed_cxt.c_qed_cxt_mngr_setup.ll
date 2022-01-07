; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_mngr_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_mngr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_cxt_mngr* }
%struct.qed_cxt_mngr = type { %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*, %struct.qed_conn_type_cfg* }
%struct.qed_cid_acquired_map = type { i32, i32 }
%struct.qed_conn_type_cfg = type { i32, i64 }

@MAX_CONN_TYPES = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@MAX_NUM_VFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_cxt_mngr_setup(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_cxt_mngr*, align 8
  %4 = alloca %struct.qed_cid_acquired_map*, align 8
  %5 = alloca %struct.qed_conn_type_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %10, align 8
  store %struct.qed_cxt_mngr* %11, %struct.qed_cxt_mngr** %3, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %89, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_CONN_TYPES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %12
  %17 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %18 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %17, i32 0, i32 2
  %19 = load %struct.qed_conn_type_cfg*, %struct.qed_conn_type_cfg** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qed_conn_type_cfg, %struct.qed_conn_type_cfg* %19, i64 %21
  store %struct.qed_conn_type_cfg* %22, %struct.qed_conn_type_cfg** %5, align 8
  %23 = load %struct.qed_conn_type_cfg*, %struct.qed_conn_type_cfg** %5, align 8
  %24 = getelementptr inbounds %struct.qed_conn_type_cfg, %struct.qed_conn_type_cfg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %16
  %28 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %29 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %28, i32 0, i32 1
  %30 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %30, i64 %32
  store %struct.qed_cid_acquired_map* %33, %struct.qed_cid_acquired_map** %4, align 8
  %34 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %4, align 8
  %35 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BITS_PER_BYTE, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @DIV_ROUND_UP(i32 %36, i32 %40)
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  store i64 %43, i64* %7, align 8
  %44 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %4, align 8
  %45 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @memset(i32 %46, i32 0, i64 %47)
  br label %49

49:                                               ; preds = %27, %16
  %50 = load %struct.qed_conn_type_cfg*, %struct.qed_conn_type_cfg** %5, align 8
  %51 = getelementptr inbounds %struct.qed_conn_type_cfg, %struct.qed_conn_type_cfg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %89

55:                                               ; preds = %49
  store i64 0, i64* %8, align 8
  br label %56

56:                                               ; preds = %85, %55
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @MAX_NUM_VFS, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %62 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %61, i32 0, i32 0
  %63 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %63, i64 %65
  %67 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %67, i64 %68
  store %struct.qed_cid_acquired_map* %69, %struct.qed_cid_acquired_map** %4, align 8
  %70 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %4, align 8
  %71 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BITS_PER_BYTE, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 8, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @DIV_ROUND_UP(i32 %72, i32 %76)
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  store i64 %79, i64* %7, align 8
  %80 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %4, align 8
  %81 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @memset(i32 %82, i32 0, i64 %83)
  br label %85

85:                                               ; preds = %60
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %56

88:                                               ; preds = %56
  br label %89

89:                                               ; preds = %88, %54
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %12

92:                                               ; preds = %12
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
