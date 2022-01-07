; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_test_cid_acquired.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_test_cid_acquired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_cxt_mngr* }
%struct.qed_cxt_mngr = type { %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map* }
%struct.qed_cid_acquired_map = type { i64, i64, i32 }

@MAX_CONN_TYPES = common dso_local global i32 0, align 4
@QED_CXT_PF_CID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid CID %d vfid %02x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"CID %d [vifd %02x] not acquired\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i64, i64, i32*, %struct.qed_cid_acquired_map**)* @qed_cxt_test_cid_acquired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_cxt_test_cid_acquired(%struct.qed_hwfn* %0, i64 %1, i64 %2, i32* %3, %struct.qed_cid_acquired_map** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.qed_cid_acquired_map**, align 8
  %12 = alloca %struct.qed_cxt_mngr*, align 8
  %13 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.qed_cid_acquired_map** %4, %struct.qed_cid_acquired_map*** %11, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %15, align 8
  store %struct.qed_cxt_mngr* %16, %struct.qed_cxt_mngr** %12, align 8
  %17 = load i32*, i32** %10, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %76, %5
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAX_CONN_TYPES, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @QED_CXT_PF_CID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %12, align 8
  %29 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %28, i32 0, i32 1
  %30 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %29, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %30, i64 %33
  %35 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %11, align 8
  store %struct.qed_cid_acquired_map* %34, %struct.qed_cid_acquired_map** %35, align 8
  br label %48

36:                                               ; preds = %23
  %37 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %12, align 8
  %38 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %37, i32 0, i32 0
  %39 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %38, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %39, i64 %42
  %44 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %44, i64 %45
  %47 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %11, align 8
  store %struct.qed_cid_acquired_map* %46, %struct.qed_cid_acquired_map** %47, align 8
  br label %48

48:                                               ; preds = %36, %27
  %49 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %11, align 8
  %50 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %49, align 8
  %51 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %76

55:                                               ; preds = %48
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %11, align 8
  %58 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %57, align 8
  %59 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %56, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %11, align 8
  %65 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %64, align 8
  %66 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %11, align 8
  %69 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %68, align 8
  %70 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %67, %71
  %73 = icmp slt i64 %63, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %80

75:                                               ; preds = %62, %55
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %18

80:                                               ; preds = %74, %18
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MAX_CONN_TYPES, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @DP_NOTICE(%struct.qed_hwfn* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %87, i64 %88)
  br label %110

90:                                               ; preds = %80
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %11, align 8
  %93 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %92, align 8
  %94 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %91, %95
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %11, align 8
  %99 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %98, align 8
  %100 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @test_bit(i64 %97, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %90
  %105 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @DP_NOTICE(%struct.qed_hwfn* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %106, i64 %107)
  br label %110

109:                                              ; preds = %90
  store i32 1, i32* %6, align 4
  br label %114

110:                                              ; preds = %104, %85
  %111 = load i32, i32* @MAX_CONN_TYPES, align 4
  %112 = load i32*, i32** %10, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %11, align 8
  store %struct.qed_cid_acquired_map* null, %struct.qed_cid_acquired_map** %113, align 8
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %109
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, i64) #1

declare dso_local i32 @test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
