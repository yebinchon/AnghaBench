; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__*, %struct.qed_spq* }
%struct.TYPE_4__ = type { i64 }
%struct.qed_spq = type { i32, i32 }
%struct.qed_spq_entry = type { i64, %struct.TYPE_6__, i32, %struct.qed_spq_entry*, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Got a NULL pointer\0A\00", align 1
@QED_MSG_SPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Recovery is in progress. Skip spq post [cmd %02x protocol %02x]\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_spq_post(%struct.qed_hwfn* %0, %struct.qed_spq_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_spq_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_spq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_spq_entry*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_spq_entry* %1, %struct.qed_spq_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = icmp ne %struct.qed_hwfn* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 1
  %18 = load %struct.qed_spq*, %struct.qed_spq** %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi %struct.qed_spq* [ %18, %15 ], [ null, %19 ]
  store %struct.qed_spq* %21, %struct.qed_spq** %9, align 8
  store i32 1, i32* %10, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %23 = icmp ne %struct.qed_hwfn* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %158

27:                                               ; preds = %20
  %28 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %29 = icmp ne %struct.qed_spq_entry* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %32 = call i32 @DP_NOTICE(%struct.qed_hwfn* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %158

35:                                               ; preds = %27
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %37 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %44 = load i32, i32* @QED_MSG_SPQ, align 4
  %45 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %46 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %51 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %43, i32 %44, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @qed_spq_recov_set_ret_code(%struct.qed_spq_entry* %56, i32* %57)
  store i32 0, i32* %4, align 4
  br label %158

59:                                               ; preds = %35
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %61 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %62 = call i32 @qed_spq_fill_entry(%struct.qed_hwfn* %60, %struct.qed_spq_entry* %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.qed_spq*, %struct.qed_spq** %9, align 8
  %64 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %63, i32 0, i32 0
  %65 = call i32 @spin_lock_bh(i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %146

69:                                               ; preds = %59
  %70 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %71 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @QED_SPQ_MODE_EBLOCK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %77 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %78 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %79 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @qed_spq_add_entry(%struct.qed_hwfn* %76, %struct.qed_spq_entry* %77, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %146

85:                                               ; preds = %69
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %87 = call i32 @qed_spq_pend_post(%struct.qed_hwfn* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  br label %146

91:                                               ; preds = %85
  %92 = load %struct.qed_spq*, %struct.qed_spq** %9, align 8
  %93 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_bh(i32* %93)
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %91
  %98 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %99 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %102 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.qed_spq*, %struct.qed_spq** %9, align 8
  %105 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %104, i32 0, i32 1
  %106 = icmp eq i32* %103, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @qed_spq_block(%struct.qed_hwfn* %98, %struct.qed_spq_entry* %99, i32* %100, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %110 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.qed_spq*, %struct.qed_spq** %9, align 8
  %113 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %112, i32 0, i32 1
  %114 = icmp eq i32* %111, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %97
  %116 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %117 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %116, i32 0, i32 3
  %118 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %117, align 8
  store %struct.qed_spq_entry* %118, %struct.qed_spq_entry** %12, align 8
  %119 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %120 = call i32 @kfree(%struct.qed_spq_entry* %119)
  %121 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  store %struct.qed_spq_entry* %121, %struct.qed_spq_entry** %6, align 8
  br label %122

122:                                              ; preds = %115, %97
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %132

126:                                              ; preds = %122
  %127 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %128 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %129 = call i32 @qed_spq_return_entry(%struct.qed_hwfn* %127, %struct.qed_spq_entry* %128)
  br label %130

130:                                              ; preds = %126, %91
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %4, align 4
  br label %158

132:                                              ; preds = %125
  %133 = load %struct.qed_spq*, %struct.qed_spq** %9, align 8
  %134 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %133, i32 0, i32 0
  %135 = call i32 @spin_lock_bh(i32* %134)
  %136 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %137 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %136, i32 0, i32 2
  %138 = call i32 @list_del(i32* %137)
  %139 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %140 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %141 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @qed_spq_comp_bmap_update(%struct.qed_hwfn* %139, i32 %144)
  br label %146

146:                                              ; preds = %132, %90, %84, %68
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %151 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %6, align 8
  %152 = call i32 @__qed_spq_return_entry(%struct.qed_hwfn* %150, %struct.qed_spq_entry* %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = load %struct.qed_spq*, %struct.qed_spq** %9, align 8
  %155 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %154, i32 0, i32 0
  %156 = call i32 @spin_unlock_bh(i32* %155)
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %153, %130, %42, %30, %24
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_spq_recov_set_ret_code(%struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @qed_spq_fill_entry(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @qed_spq_add_entry(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32) #1

declare dso_local i32 @qed_spq_pend_post(%struct.qed_hwfn*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @qed_spq_block(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.qed_spq_entry*) #1

declare dso_local i32 @qed_spq_return_entry(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @qed_spq_comp_bmap_update(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @__qed_spq_return_entry(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
