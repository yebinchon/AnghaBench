; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_append_rpn_expression.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_append_rpn_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_mef_entry = type { %struct.mwifiex_mef_filter* }
%struct.mwifiex_mef_filter = type { i32, i32*, i32, i64, i64 }

@MWIFIEX_MEF_MAX_FILTERS = common dso_local global i32 0, align 4
@TYPE_DNUM = common dso_local global i32 0, align 4
@MWIFIEX_MEF_MAX_BYTESEQ = common dso_local global i64 0, align 8
@TYPE_BYTESEQ = common dso_local global i32 0, align 4
@STACK_NBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_mef_entry*, i32**)* @mwifiex_cmd_append_rpn_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_append_rpn_expression(%struct.mwifiex_private* %0, %struct.mwifiex_mef_entry* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_mef_entry*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.mwifiex_mef_filter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_mef_entry* %1, %struct.mwifiex_mef_entry** %6, align 8
  store i32** %2, i32*** %7, align 8
  %12 = load %struct.mwifiex_mef_entry*, %struct.mwifiex_mef_entry** %6, align 8
  %13 = getelementptr inbounds %struct.mwifiex_mef_entry, %struct.mwifiex_mef_entry* %12, i32 0, i32 0
  %14 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %13, align 8
  store %struct.mwifiex_mef_filter* %14, %struct.mwifiex_mef_filter** %8, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %112, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MWIFIEX_MEF_MAX_FILTERS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %115

21:                                               ; preds = %17
  %22 = load %struct.mwifiex_mef_entry*, %struct.mwifiex_mef_entry** %6, align 8
  %23 = getelementptr inbounds %struct.mwifiex_mef_entry, %struct.mwifiex_mef_entry* %22, i32 0, i32 0
  %24 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mwifiex_mef_filter, %struct.mwifiex_mef_filter* %24, i64 %26
  store %struct.mwifiex_mef_filter* %27, %struct.mwifiex_mef_filter** %8, align 8
  %28 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %8, align 8
  %29 = getelementptr inbounds %struct.mwifiex_mef_filter, %struct.mwifiex_mef_filter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %115

33:                                               ; preds = %21
  %34 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %8, align 8
  %35 = getelementptr inbounds %struct.mwifiex_mef_filter, %struct.mwifiex_mef_filter* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @put_unaligned_le32(i32 %37, i32* %38)
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32* %41, i32** %11, align 8
  %42 = load i32, i32* @TYPE_DNUM, align 4
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32* %45, i32** %11, align 8
  %46 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %8, align 8
  %47 = getelementptr inbounds %struct.mwifiex_mef_filter, %struct.mwifiex_mef_filter* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @MWIFIEX_MEF_MAX_BYTESEQ, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %8, align 8
  %54 = getelementptr inbounds %struct.mwifiex_mef_filter, %struct.mwifiex_mef_filter* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @memcpy(i32* %52, i32* %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %11, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32* %65, i32** %11, align 8
  %66 = load i32, i32* @TYPE_BYTESEQ, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32* %69, i32** %11, align 8
  %70 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %8, align 8
  %71 = getelementptr inbounds %struct.mwifiex_mef_filter, %struct.mwifiex_mef_filter* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @put_unaligned_le32(i32 %73, i32* %74)
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32* %77, i32** %11, align 8
  %78 = load i32, i32* @TYPE_DNUM, align 4
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32* %81, i32** %11, align 8
  %82 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %8, align 8
  %83 = getelementptr inbounds %struct.mwifiex_mef_filter, %struct.mwifiex_mef_filter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32* %87, i32** %11, align 8
  %88 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %8, align 8
  %89 = getelementptr inbounds %struct.mwifiex_mef_filter, %struct.mwifiex_mef_filter* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %33
  %93 = load %struct.mwifiex_mef_filter*, %struct.mwifiex_mef_filter** %8, align 8
  %94 = getelementptr inbounds %struct.mwifiex_mef_filter, %struct.mwifiex_mef_filter* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %11, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32* %98, i32** %11, align 8
  br label %99

99:                                               ; preds = %92, %33
  %100 = load i32*, i32** %11, align 8
  %101 = load i32**, i32*** %7, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = ptrtoint i32* %100 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  %107 = load i32, i32* @STACK_NBYTES, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp sgt i64 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %118

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %17

115:                                              ; preds = %32, %17
  %116 = load i32*, i32** %11, align 8
  %117 = load i32**, i32*** %7, align 8
  store i32* %116, i32** %117, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
