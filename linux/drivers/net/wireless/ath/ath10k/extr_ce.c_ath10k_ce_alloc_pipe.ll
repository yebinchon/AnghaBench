; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ce_attr = type { i64, i64, i32, i32, i32, i32 }
%struct.ath10k_ce = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { i32, i32*, %struct.TYPE_2__*, i32*, i32, i32, i32, i32, i32, %struct.ath10k* }
%struct.TYPE_2__ = type { i32* (%struct.ath10k*, i32, %struct.ce_attr*)*, i32* (%struct.ath10k*, i32, %struct.ce_attr*)* }

@TARGET_NUM_MSDU_DESC = common dso_local global i32 0, align 4
@CE_HTT_H2T_MSG_SRC_NENTRIES = common dso_local global i32 0, align 4
@TARGET_10_4_NUM_MSDU_DESC_PFC = common dso_local global i32 0, align 4
@TARGET_TLV_NUM_MSDU_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to alloc CE src ring %d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to alloc CE dest ring %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_ce_alloc_pipe(%struct.ath10k* %0, i32 %1, %struct.ce_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ce_attr*, align 8
  %8 = alloca %struct.ath10k_ce*, align 8
  %9 = alloca %struct.ath10k_ce_pipe*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ce_attr* %2, %struct.ce_attr** %7, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %11)
  store %struct.ath10k_ce* %12, %struct.ath10k_ce** %8, align 8
  %13 = load %struct.ath10k_ce*, %struct.ath10k_ce** %8, align 8
  %14 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %13, i32 0, i32 0
  %15 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %15, i64 %17
  store %struct.ath10k_ce_pipe* %18, %struct.ath10k_ce_pipe** %9, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %20 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %21 = call i32 @ath10k_ce_set_ops(%struct.ath10k* %19, %struct.ath10k_ce_pipe* %20)
  %22 = load i32, i32* @TARGET_NUM_MSDU_DESC, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* @CE_HTT_H2T_MSG_SRC_NENTRIES, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sgt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUILD_BUG_ON(i32 %27)
  %29 = load i32, i32* @TARGET_10_4_NUM_MSDU_DESC_PFC, align 4
  %30 = mul nsw i32 2, %29
  %31 = load i32, i32* @CE_HTT_H2T_MSG_SRC_NENTRIES, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp sgt i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUILD_BUG_ON(i32 %34)
  %36 = load i32, i32* @TARGET_TLV_NUM_MSDU_DESC, align 4
  %37 = mul nsw i32 2, %36
  %38 = load i32, i32* @CE_HTT_H2T_MSG_SRC_NENTRIES, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp sgt i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUILD_BUG_ON(i32 %41)
  %43 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %44 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %45 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %44, i32 0, i32 9
  store %struct.ath10k* %43, %struct.ath10k** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %48 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ath10k_ce_base_address(%struct.ath10k* %49, i32 %50)
  %52 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %53 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %55 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %58 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %60 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %63 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %65 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %3
  %69 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %70 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %73 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %3
  %75 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %76 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %81 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %84 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %87 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %85
  %91 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %92 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32* (%struct.ath10k*, i32, %struct.ce_attr*)*, i32* (%struct.ath10k*, i32, %struct.ce_attr*)** %94, align 8
  %96 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %99 = call i32* %95(%struct.ath10k* %96, i32 %97, %struct.ce_attr* %98)
  %100 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %101 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %100, i32 0, i32 3
  store i32* %99, i32** %101, align 8
  %102 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %103 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @IS_ERR(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %90
  %108 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %109 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @PTR_ERR(i32* %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @ath10k_err(%struct.ath10k* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %117 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %116, i32 0, i32 3
  store i32* null, i32** %117, align 8
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %4, align 4
  br label %156

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %119, %85
  %121 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %122 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %120
  %126 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %127 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32* (%struct.ath10k*, i32, %struct.ce_attr*)*, i32* (%struct.ath10k*, i32, %struct.ce_attr*)** %129, align 8
  %131 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %134 = call i32* %130(%struct.ath10k* %131, i32 %132, %struct.ce_attr* %133)
  %135 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %136 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %135, i32 0, i32 1
  store i32* %134, i32** %136, align 8
  %137 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %138 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = call i64 @IS_ERR(i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %125
  %143 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %144 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @PTR_ERR(i32* %145)
  store i32 %146, i32* %10, align 4
  %147 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @ath10k_err(%struct.ath10k* %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %149)
  %151 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %9, align 8
  %152 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %151, i32 0, i32 1
  store i32* null, i32** %152, align 8
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %4, align 4
  br label %156

154:                                              ; preds = %125
  br label %155

155:                                              ; preds = %154, %120
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %142, %107
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ce_set_ops(%struct.ath10k*, %struct.ath10k_ce_pipe*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ath10k_ce_base_address(%struct.ath10k*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
