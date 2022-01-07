; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_spq_entry = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32 }
%struct.qed_sp_init_data = type { i32, i32, i32, %struct.TYPE_8__* }

@ENOMEM = common dso_local global i32 0, align 4
@QED_SPQ_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unknown SPQE completion mode %d\0A\00", align 1
@QED_MSG_SPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Initialized: CID %08x cmd %02x protocol %02x data_addr %lu comp_mode [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"MODE_EBLOCK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"MODE_BLOCK\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MODE_CB\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_sp_init_request(%struct.qed_hwfn* %0, %struct.qed_spq_entry** %1, i8* %2, i8* %3, %struct.qed_sp_init_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_spq_entry**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.qed_sp_init_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_spq_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_spq_entry** %1, %struct.qed_spq_entry*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.qed_sp_init_data* %4, %struct.qed_sp_init_data** %11, align 8
  %15 = load %struct.qed_sp_init_data*, %struct.qed_sp_init_data** %11, align 8
  %16 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 16
  %19 = load %struct.qed_sp_init_data*, %struct.qed_sp_init_data** %11, align 8
  %20 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  store i32 %22, i32* %12, align 4
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %13, align 8
  %23 = load %struct.qed_spq_entry**, %struct.qed_spq_entry*** %8, align 8
  %24 = icmp ne %struct.qed_spq_entry** %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %137

28:                                               ; preds = %5
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %30 = load %struct.qed_spq_entry**, %struct.qed_spq_entry*** %8, align 8
  %31 = call i32 @qed_spq_get_entry(%struct.qed_hwfn* %29, %struct.qed_spq_entry** %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %6, align 4
  br label %137

36:                                               ; preds = %28
  %37 = load %struct.qed_spq_entry**, %struct.qed_spq_entry*** %8, align 8
  %38 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %37, align 8
  store %struct.qed_spq_entry* %38, %struct.qed_spq_entry** %13, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %42 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %47 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i8* %45, i8** %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %52 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  %55 = load i32, i32* @QED_SPQ_PRIORITY_NORMAL, align 4
  %56 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %57 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.qed_sp_init_data*, %struct.qed_sp_init_data** %11, align 8
  %59 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %62 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %64 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %67 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %108 [
    i32 128, label %69
    i32 130, label %75
    i32 129, label %90
  ]

69:                                               ; preds = %36
  %70 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %71 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %70, i32 0, i32 3
  %72 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %73 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %74, align 8
  br label %114

75:                                               ; preds = %36
  %76 = load %struct.qed_sp_init_data*, %struct.qed_sp_init_data** %11, align 8
  %77 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %131

81:                                               ; preds = %75
  %82 = load %struct.qed_sp_init_data*, %struct.qed_sp_init_data** %11, align 8
  %83 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %88 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %89, align 8
  br label %114

90:                                               ; preds = %36
  %91 = load %struct.qed_sp_init_data*, %struct.qed_sp_init_data** %11, align 8
  %92 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %91, i32 0, i32 3
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %97 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %107

99:                                               ; preds = %90
  %100 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %101 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %100, i32 0, i32 2
  %102 = load %struct.qed_sp_init_data*, %struct.qed_sp_init_data** %11, align 8
  %103 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = bitcast %struct.TYPE_8__* %101 to i8*
  %106 = bitcast %struct.TYPE_8__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  br label %107

107:                                              ; preds = %99, %95
  br label %114

108:                                              ; preds = %36
  %109 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %110 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %111 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @DP_NOTICE(%struct.qed_hwfn* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %131

114:                                              ; preds = %107, %81, %69
  %115 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %116 = load i32, i32* @QED_MSG_SPQ, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %121 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %120, i32 0, i32 1
  %122 = ptrtoint i32* %121 to i64
  %123 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %124 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @D_TRINE(i32 %125, i32 128, i32 130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %127 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %115, i32 %116, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %117, i8* %118, i8* %119, i64 %122, i32 %126)
  %128 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %129 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %128, i32 0, i32 1
  %130 = call i32 @memset(i32* %129, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %137

131:                                              ; preds = %108, %80
  %132 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %133 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %134 = call i32 @qed_sp_destroy_request(%struct.qed_hwfn* %132, %struct.qed_spq_entry* %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %131, %114, %34, %25
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @qed_spq_get_entry(%struct.qed_hwfn*, %struct.qed_spq_entry**) #1

declare dso_local i32 @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @D_TRINE(i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qed_sp_destroy_request(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
