; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_get_ordinal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_get_ordinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ordinal = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid argument\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Access ordinals before initialization\0A\00", align 1
@IPW_ORD_TABLE_ID_MASK = common dso_local global i32 0, align 4
@IPW_ORD_TABLE_VALUE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ordinal value (%i) longer then max (%i)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"ordinal buffer length too small, need %zd\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Reading TABLE0[%i] from offset 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ordinal value too long\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"addr = 0x%08x, total_len = %i, field_info = 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Invalid ordinal!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32, i8*, i32*)* @ipw_get_ordinal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_get_ordinal(%struct.ipw_priv* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %18 = icmp ne %struct.ipw_priv* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22, %19, %4
  %26 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %202

29:                                               ; preds = %22
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %36 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %41 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %34, %29
  %45 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %202

48:                                               ; preds = %39
  %49 = load i32, i32* @IPW_ORD_TABLE_ID_MASK, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %197 [
    i32 130, label %52
    i32 129, label %99
    i32 128, label %133
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @IPW_ORD_TABLE_VALUE_MASK, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %58 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %64 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %202

69:                                               ; preds = %52
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %72, 4
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 4)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %202

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %81 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %83, 2
  %85 = add nsw i32 %82, %84
  %86 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32 %85)
  %87 = load i32*, i32** %9, align 8
  store i32 4, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 2
  store i32 %89, i32* %7, align 4
  %90 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %91 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %92 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %93, %94
  %96 = call i32 @ipw_read32(%struct.ipw_priv* %90, i32 %95)
  %97 = load i8*, i8** %8, align 8
  %98 = bitcast i8* %97 to i32*
  store i32 %96, i32* %98, align 4
  br label %201

99:                                               ; preds = %48
  %100 = load i32, i32* @IPW_ORD_TABLE_VALUE_MASK, align 4
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %105 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %202

112:                                              ; preds = %99
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 %115, 4
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 4)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %202

121:                                              ; preds = %112
  %122 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %123 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %124 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %7, align 4
  %127 = shl i32 %126, 2
  %128 = add nsw i32 %125, %127
  %129 = call i32 @ipw_read_reg32(%struct.ipw_priv* %122, i32 %128)
  %130 = load i8*, i8** %8, align 8
  %131 = bitcast i8* %130 to i32*
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %9, align 8
  store i32 4, i32* %132, align 4
  br label %201

133:                                              ; preds = %48
  %134 = load i32, i32* @IPW_ORD_TABLE_VALUE_MASK, align 4
  %135 = load i32, i32* %7, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %139 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %202

146:                                              ; preds = %133
  %147 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %148 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %149 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %7, align 4
  %152 = shl i32 %151, 3
  %153 = add nsw i32 %150, %152
  %154 = call i32 @ipw_read_reg32(%struct.ipw_priv* %147, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %156 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %157 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = shl i32 %159, 3
  %161 = add nsw i32 %158, %160
  %162 = sext i32 %161 to i64
  %163 = add i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = call i32 @ipw_read_reg32(%struct.ipw_priv* %155, i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %12, align 4
  %167 = getelementptr inbounds i32, i32* %11, i64 1
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %13, align 4
  %171 = mul nsw i32 %169, %170
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %172, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %146
  %177 = load i32, i32* %14, align 4
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %202

181:                                              ; preds = %146
  %182 = load i32, i32* %14, align 4
  %183 = load i32*, i32** %9, align 8
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %181
  store i32 0, i32* %5, align 4
  br label %202

187:                                              ; preds = %181
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %188, i32 %189, i32 %190)
  %192 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load i8*, i8** %8, align 8
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @ipw_read_indirect(%struct.ipw_priv* %192, i32 %193, i8* %194, i32 %195)
  br label %201

197:                                              ; preds = %48
  %198 = call i32 (i8*, ...) @IPW_DEBUG_ORD(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %5, align 4
  br label %202

201:                                              ; preds = %187, %121, %78
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %201, %197, %186, %176, %142, %117, %108, %74, %61, %44, %25
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @IPW_DEBUG_ORD(i8*, ...) #1

declare dso_local i32 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_read_reg32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_read_indirect(%struct.ipw_priv*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
