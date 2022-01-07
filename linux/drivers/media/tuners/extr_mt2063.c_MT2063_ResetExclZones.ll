; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_ResetExclZones.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_ResetExclZones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MT2063_AvoidSpursData_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MT2063_AvoidSpursData_t*)* @MT2063_ResetExclZones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MT2063_ResetExclZones(%struct.MT2063_AvoidSpursData_t* %0) #0 {
  %2 = alloca %struct.MT2063_AvoidSpursData_t*, align 8
  %3 = alloca i32, align 4
  store %struct.MT2063_AvoidSpursData_t* %0, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %4 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %6 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %5, i32 0, i32 10
  store i64 0, i64* %6, align 8
  %7 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %8 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %7, i32 0, i32 9
  store i32* null, i32** %8, align 8
  %9 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %10 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %9, i32 0, i32 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %12 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %15 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %18 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 2
  %21 = sub nsw i32 %16, %20
  %22 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %23 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %27 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %25, %28
  %30 = mul nsw i32 %13, %29
  %31 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %32 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %50, %1
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %38 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %41 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %42, 2
  %44 = add nsw i32 %39, %43
  %45 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %46 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  %49 = icmp slt i32 %36, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %35
  %51 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %54 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  %57 = load i32, i32* %3, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %51, i32 %56, i32 %58)
  %60 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %65 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %63, %66
  %68 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %60, i32 %62, i32 %67)
  %69 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %70 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %35

74:                                               ; preds = %35
  %75 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %76 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %79 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %82 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 2
  %85 = sub nsw i32 %80, %84
  %86 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %87 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %91 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sdiv i32 %89, %92
  %94 = mul nsw i32 %77, %93
  %95 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %96 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %114, %74
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %102 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %105 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sdiv i32 %106, 2
  %108 = add nsw i32 %103, %107
  %109 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %110 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %108, %111
  %113 = icmp slt i32 %100, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %99
  %115 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %118 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %116, %119
  %121 = load i32, i32* %3, align 4
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %115, i32 %120, i32 %122)
  %124 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %129 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %127, %130
  %132 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %124, i32 %126, i32 %131)
  %133 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %134 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %3, align 4
  br label %99

138:                                              ; preds = %99
  %139 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %140 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @MT2063_EXCLUDE_US_DECT_FREQUENCIES(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %195

144:                                              ; preds = %138
  %145 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %146 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %147 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 1920836000, %148
  %150 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %151 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 1922236000, %152
  %154 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %145, i32 %149, i32 %153)
  %155 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %156 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %157 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 1922564000, %158
  %160 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %161 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 1923964000, %162
  %164 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %155, i32 %159, i32 %163)
  %165 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %166 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %167 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 1924292000, %168
  %170 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %171 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 1925692000, %172
  %174 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %165, i32 %169, i32 %173)
  %175 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %176 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %177 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 1926020000, %178
  %180 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %181 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 1927420000, %182
  %184 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %175, i32 %179, i32 %183)
  %185 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %186 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %187 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 1927748000, %188
  %190 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %191 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 1929148000, %192
  %194 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %185, i32 %189, i32 %193)
  br label %195

195:                                              ; preds = %144, %138
  %196 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %197 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @MT2063_EXCLUDE_EURO_DECT_FREQUENCIES(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %302

201:                                              ; preds = %195
  %202 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %203 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %204 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 1896644000, %205
  %207 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %208 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 1898044000, %209
  %211 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %202, i32 %206, i32 %210)
  %212 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %213 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %214 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 1894916000, %215
  %217 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %218 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 1896316000, %219
  %221 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %212, i32 %216, i32 %220)
  %222 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %223 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %224 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 1893188000, %225
  %227 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %228 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 1894588000, %229
  %231 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %222, i32 %226, i32 %230)
  %232 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %233 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %234 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 1891460000, %235
  %237 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %238 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 1892860000, %239
  %241 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %232, i32 %236, i32 %240)
  %242 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %243 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %244 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 1889732000, %245
  %247 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %248 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 1891132000, %249
  %251 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %242, i32 %246, i32 %250)
  %252 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %253 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %254 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 1888004000, %255
  %257 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %258 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 1889404000, %259
  %261 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %252, i32 %256, i32 %260)
  %262 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %263 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %264 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 1886276000, %265
  %267 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %268 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 1887676000, %269
  %271 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %262, i32 %266, i32 %270)
  %272 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %273 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %274 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 1884548000, %275
  %277 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %278 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 1885948000, %279
  %281 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %272, i32 %276, i32 %280)
  %282 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %283 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %284 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 1882820000, %285
  %287 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %288 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 1884220000, %289
  %291 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %282, i32 %286, i32 %290)
  %292 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %293 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %294 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 1881092000, %295
  %297 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %2, align 8
  %298 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = sub nsw i32 1882492000, %299
  %301 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %292, i32 %296, i32 %300)
  br label %302

302:                                              ; preds = %201, %195
  ret void
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t*, i32, i32) #1

declare dso_local i64 @MT2063_EXCLUDE_US_DECT_FREQUENCIES(i32) #1

declare dso_local i64 @MT2063_EXCLUDE_EURO_DECT_FREQUENCIES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
