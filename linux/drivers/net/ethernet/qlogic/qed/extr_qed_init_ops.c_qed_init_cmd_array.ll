; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32*, %struct.qed_dev* }
%struct.qed_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.qed_ptt = type { i32 }
%struct.init_write_op = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.init_array_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@INIT_WRITE_OP_ADDRESS = common dso_local global i32 0, align 4
@INIT_ARRAY_RAW_HDR_TYPE = common dso_local global i32 0, align 4
@INIT_ARRAY_ZIPPED_HDR_ZIPPED_SIZE = common dso_local global i32 0, align 4
@MAX_ZIPPED_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to unzip dmae data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INIT_ARRAY_PATTERN_HDR_REPETITIONS = common dso_local global i32 0, align 4
@INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE = common dso_local global i32 0, align 4
@INIT_ARRAY_STANDARD_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.init_write_op*, i32, i32)* @qed_init_cmd_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_cmd_array(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.init_write_op* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.init_write_op*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.qed_dev*, align 8
  %19 = alloca %union.init_array_hdr*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store %struct.init_write_op* %2, %struct.init_write_op** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %26 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %31 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @INIT_WRITE_OP_ADDRESS, align 4
  %36 = call i32 @GET_FIELD(i32 %34, i32 %35)
  %37 = shl i32 %36, 2
  store i32 %37, i32* %13, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 1
  %40 = load %struct.qed_dev*, %struct.qed_dev** %39, align 8
  store %struct.qed_dev* %40, %struct.qed_dev** %18, align 8
  store i32 0, i32* %21, align 4
  %41 = load %struct.qed_dev*, %struct.qed_dev** %18, align 8
  %42 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = bitcast i32* %49 to %union.init_array_hdr*
  store %union.init_array_hdr* %50, %union.init_array_hdr** %19, align 8
  %51 = load %union.init_array_hdr*, %union.init_array_hdr** %19, align 8
  %52 = bitcast %union.init_array_hdr* %51 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @INIT_ARRAY_RAW_HDR_TYPE, align 4
  %58 = call i32 @GET_FIELD(i32 %56, i32 %57)
  switch i32 %58, label %150 [
    i32 128, label %59
    i32 130, label %102
    i32 129, label %136
  ]

59:                                               ; preds = %5
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @INIT_ARRAY_ZIPPED_HDR_ZIPPED_SIZE, align 4
  %64 = call i32 @GET_FIELD(i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* @MAX_ZIPPED_SIZE, align 4
  %66 = mul nsw i32 %65, 4
  store i32 %66, i32* %17, align 4
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %68 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @memset(i32* %69, i32 0, i32 %70)
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %20, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %80 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @qed_unzip_data(%struct.qed_hwfn* %72, i32 %73, i32* %77, i32 %78, i32* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %59
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %87 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %91 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @qed_init_array_dmae(%struct.qed_hwfn* %86, %struct.qed_ptt* %87, i32 %88, i32 0, i32 %89, i32* %92, i32 %93, i32 %94)
  store i32 %95, i32* %21, align 4
  br label %101

96:                                               ; preds = %59
  %97 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %98 = call i32 @DP_NOTICE(%struct.qed_hwfn* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %21, align 4
  br label %101

101:                                              ; preds = %96, %85
  br label %150

102:                                              ; preds = %5
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @INIT_ARRAY_PATTERN_HDR_REPETITIONS, align 4
  %105 = call i32 @GET_FIELD(i32 %103, i32 %104)
  store i32 %105, i32* %23, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE, align 4
  %108 = call i32 @GET_FIELD(i32 %106, i32 %107)
  store i32 %108, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %109

109:                                              ; preds = %128, %102
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* %23, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %109
  %114 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %115 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %22, align 4
  %120 = load i32*, i32** %20, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @qed_init_array_dmae(%struct.qed_hwfn* %114, %struct.qed_ptt* %115, i32 %116, i32 %118, i32 %119, i32* %120, i32 %121, i32 %122)
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %135

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %24, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %22, align 4
  %132 = shl i32 %131, 2
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %13, align 4
  br label %109

135:                                              ; preds = %126, %109
  br label %150

136:                                              ; preds = %5
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @INIT_ARRAY_STANDARD_HDR_SIZE, align 4
  %139 = call i32 @GET_FIELD(i32 %137, i32 %138)
  store i32 %139, i32* %22, align 4
  %140 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %141 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* %22, align 4
  %146 = load i32*, i32** %20, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @qed_init_array_dmae(%struct.qed_hwfn* %140, %struct.qed_ptt* %141, i32 %142, i32 %144, i32 %145, i32* %146, i32 %147, i32 %148)
  store i32 %149, i32* %21, align 4
  br label %150

150:                                              ; preds = %5, %136, %135, %101
  %151 = load i32, i32* %21, align 4
  ret i32 %151
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qed_unzip_data(%struct.qed_hwfn*, i32, i32*, i32, i32*) #1

declare dso_local i32 @qed_init_array_dmae(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
