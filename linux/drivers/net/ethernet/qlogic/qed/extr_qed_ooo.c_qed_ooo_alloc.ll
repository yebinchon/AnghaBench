; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_ooo_info*, %struct.TYPE_3__ }
%struct.qed_ooo_info = type { i64, i64, %struct.qed_ooo_info*, %struct.qed_ooo_info*, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i8* }
%struct.TYPE_3__ = type { i32 }

@PROTOCOLID_ISCSI = common dso_local global i32 0, align 4
@PROTOCOLID_IWARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to allocate qed_ooo_info: unknown personality\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MAX_NUM_ISLES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed to allocate qed_ooo_info: unknown amount of connections\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_MAX_NUM_OOO_HISTORY_ENTRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_ooo_alloc(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qed_ooo_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %18 [
    i32 128, label %14
    i32 129, label %16
    i32 130, label %16
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  store i32 %15, i32* %7, align 4
  br label %23

16:                                               ; preds = %1, %1
  %17 = load i32, i32* @PROTOCOLID_IWARP, align 4
  store i32 %17, i32* %7, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %20 = call i32 @DP_NOTICE(%struct.qed_hwfn* %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %164

23:                                               ; preds = %16, %14
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @qed_cxt_get_proto_cid_count(%struct.qed_hwfn* %24, i32 %25, i32* null)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* @QED_MAX_NUM_ISLES, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %8, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn* %30, i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %37 = call i32 @DP_NOTICE(%struct.qed_hwfn* %36, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %164

40:                                               ; preds = %23
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.qed_ooo_info* @kzalloc(i32 72, i32 %41)
  store %struct.qed_ooo_info* %42, %struct.qed_ooo_info** %6, align 8
  %43 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %44 = icmp ne %struct.qed_ooo_info* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %164

48:                                               ; preds = %40
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %51 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %54 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %56 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %55, i32 0, i32 10
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %59 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %58, i32 0, i32 9
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %62 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %61, i32 0, i32 6
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @kcalloc(i64 %64, i32 4, i32 %65)
  %67 = bitcast i8* %66 to %struct.qed_ooo_info*
  %68 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %69 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %68, i32 0, i32 2
  store %struct.qed_ooo_info* %67, %struct.qed_ooo_info** %69, align 8
  %70 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %71 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %70, i32 0, i32 2
  %72 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %71, align 8
  %73 = icmp ne %struct.qed_ooo_info* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %48
  br label %159

75:                                               ; preds = %48
  store i64 0, i64* %9, align 8
  br label %76

76:                                               ; preds = %97, %75
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %82 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %81, i32 0, i32 2
  %83 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %83, i64 %84
  %86 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %85, i32 0, i32 8
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %89 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %88, i32 0, i32 2
  %90 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %90, i64 %91
  %93 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %92, i32 0, i32 7
  %94 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %95 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %94, i32 0, i32 6
  %96 = call i32 @list_add_tail(i32* %93, i32* %95)
  br label %97

97:                                               ; preds = %80
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %76

100:                                              ; preds = %76
  %101 = load i64, i64* %4, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @kcalloc(i64 %101, i32 4, i32 %102)
  %104 = bitcast i8* %103 to %struct.qed_ooo_info*
  %105 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %106 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %105, i32 0, i32 3
  store %struct.qed_ooo_info* %104, %struct.qed_ooo_info** %106, align 8
  %107 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %108 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %107, i32 0, i32 3
  %109 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %108, align 8
  %110 = icmp ne %struct.qed_ooo_info* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %100
  br label %154

112:                                              ; preds = %100
  store i64 0, i64* %9, align 8
  br label %113

113:                                              ; preds = %125, %112
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %4, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %119 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %118, i32 0, i32 3
  %120 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %120, i64 %121
  %123 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %122, i32 0, i32 5
  %124 = call i32 @INIT_LIST_HEAD(i32* %123)
  br label %125

125:                                              ; preds = %117
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %9, align 8
  br label %113

128:                                              ; preds = %113
  %129 = load i64, i64* @QED_MAX_NUM_OOO_HISTORY_ENTRIES, align 8
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @kcalloc(i64 %129, i32 4, i32 %130)
  %132 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %133 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  %135 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %136 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %128
  br label %149

141:                                              ; preds = %128
  %142 = load i64, i64* @QED_MAX_NUM_OOO_HISTORY_ENTRIES, align 8
  %143 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %144 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i64 %142, i64* %145, align 8
  %146 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %147 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %148 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %147, i32 0, i32 0
  store %struct.qed_ooo_info* %146, %struct.qed_ooo_info** %148, align 8
  store i32 0, i32* %2, align 4
  br label %164

149:                                              ; preds = %140
  %150 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %151 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %150, i32 0, i32 3
  %152 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %151, align 8
  %153 = call i32 @kfree(%struct.qed_ooo_info* %152)
  br label %154

154:                                              ; preds = %149, %111
  %155 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %156 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %155, i32 0, i32 2
  %157 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %156, align 8
  %158 = call i32 @kfree(%struct.qed_ooo_info* %157)
  br label %159

159:                                              ; preds = %154, %74
  %160 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %6, align 8
  %161 = call i32 @kfree(%struct.qed_ooo_info* %160)
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %159, %141, %45, %35, %18
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i64 @qed_cxt_get_proto_cid_count(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local i64 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn*, i32) #1

declare dso_local %struct.qed_ooo_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.qed_ooo_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
