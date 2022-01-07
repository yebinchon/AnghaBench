; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cctrl_tbl_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cctrl_tbl_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32* }

@cctrl_tbl_show.dec_fac = internal constant [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0.5625\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0.625\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0.6875\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0.75\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0.8125\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"0.875\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0.9375\00", align 1
@NCCTRL_WIN = common dso_local global i32 0, align 4
@NMTUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"%2d: %4u %4u %4u %4u %4u %4u %4u %4u\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"%8u %4u %4u %4u %4u %4u %4u %4u %5u %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cctrl_tbl_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cctrl_tbl_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.adapter*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @NCCTRL_WIN, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %8, align 8
  %14 = load i32, i32* @NMTUS, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = mul nuw i64 4, %10
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32** @kmalloc_array(i32 %14, i32 %17, i32 %18)
  %20 = bitcast i32** %19 to i32*
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %178

26:                                               ; preds = %2
  %27 = load %struct.adapter*, %struct.adapter** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = bitcast i32* %28 to i32**
  %30 = call i32 @t4_read_cong_tbl(%struct.adapter* %27, i32** %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %171, %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NCCTRL_WIN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %174

35:                                               ; preds = %31
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = mul nsw i64 0, %10
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = mul nsw i64 1, %10
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = mul nsw i64 2, %10
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = mul nsw i64 3, %10
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = mul nsw i64 4, %10
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = mul nsw i64 5, %10
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = mul nsw i64 6, %10
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = mul nsw i64 7, %10
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %37, i32 %44, i32 %51, i32 %58, i32 %65, i32 %72, i32 %79, i32 %86, i32 %93)
  %95 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = mul nsw i64 8, %10
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = mul nsw i64 9, %10
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = mul nsw i64 10, %10
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = mul nsw i64 11, %10
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = mul nsw i64 12, %10
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %7, align 8
  %132 = mul nsw i64 13, %10
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = mul nsw i64 14, %10
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = mul nsw i64 15, %10
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.adapter*, %struct.adapter** %8, align 8
  %153 = getelementptr inbounds %struct.adapter, %struct.adapter* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.adapter*, %struct.adapter** %8, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds [8 x i8*], [8 x i8*]* @cctrl_tbl_show.dec_fac, i64 0, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %102, i32 %109, i32 %116, i32 %123, i32 %130, i32 %137, i32 %144, i32 %151, i32 %159, i8* %169)
  br label %171

171:                                              ; preds = %35
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %31

174:                                              ; preds = %31
  %175 = load i32*, i32** %7, align 8
  %176 = bitcast i32* %175 to i32**
  %177 = call i32 @kfree(i32** %176)
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %174, %23
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @t4_read_cong_tbl(%struct.adapter*, i32**) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
