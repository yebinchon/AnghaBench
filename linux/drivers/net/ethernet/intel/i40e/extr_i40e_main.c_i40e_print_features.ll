; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_print_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_print_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__**, %struct.i40e_hw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INFO_STRING_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Features: PF-id[%d]\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" VSIs: %d QP: %d\00", align 1
@I40E_FLAG_RSS_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" RSS\00", align 1
@I40E_FLAG_FD_ATR_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" FD_ATR\00", align 1
@I40E_FLAG_FD_SB_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c" FD_SB\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" NTUPLE\00", align 1
@I40E_FLAG_DCB_CAPABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c" DCB\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" VxLAN\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" Geneve\00", align 1
@I40E_FLAG_PTP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c" PTP\00", align 1
@I40E_FLAG_VEB_MODE_ENABLED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c" VEB\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" VEPA\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_print_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_print_features(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %6, i32 0, i32 5
  store %struct.i40e_hw* %7, %struct.i40e_hw** %3, align 8
  %8 = load i32, i32* @INFO_STRING_LEN, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 %8, i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %197

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @INFO_STRING_LEN, align 4
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @REMAIN(i32 %25)
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 4
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %33, align 8
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @I40E_FLAG_RSS_ENABLED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %14
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @REMAIN(i32 %56)
  %58 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %51, %14
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @I40E_FLAG_FD_ATR_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @REMAIN(i32 %73)
  %75 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %72, i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %68, %61
  %79 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %80 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %78
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @REMAIN(i32 %90)
  %92 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %89, i32 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @REMAIN(i32 %99)
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %98, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %85, %78
  %105 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %106 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @I40E_FLAG_DCB_CAPABLE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @REMAIN(i32 %116)
  %118 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %115, i32 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %111, %104
  %122 = load i8*, i8** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @REMAIN(i32 %126)
  %128 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %125, i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @REMAIN(i32 %135)
  %137 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %134, i32 %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %141 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @I40E_FLAG_PTP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %121
  %147 = load i8*, i8** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @REMAIN(i32 %151)
  %153 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %150, i32 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %146, %121
  %157 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %158 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @I40E_FLAG_VEB_MODE_ENABLED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = load i8*, i8** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @REMAIN(i32 %168)
  %170 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %167, i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %5, align 4
  br label %183

173:                                              ; preds = %156
  %174 = load i8*, i8** %4, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @REMAIN(i32 %178)
  %180 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %177, i32 %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %173, %163
  %184 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %185 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %184, i32 0, i32 3
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i8*, i8** %4, align 8
  %189 = call i32 @dev_info(i32* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %188)
  %190 = load i8*, i8** %4, align 8
  %191 = call i32 @kfree(i8* %190)
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @INFO_STRING_LEN, align 4
  %194 = icmp sgt i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @WARN_ON(i32 %195)
  br label %197

197:                                              ; preds = %183, %13
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @REMAIN(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
