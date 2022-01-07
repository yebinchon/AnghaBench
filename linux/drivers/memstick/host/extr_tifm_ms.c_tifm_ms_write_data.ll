; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_ms = type { i32, i8, %struct.tifm_dev* }
%struct.tifm_dev = type { i64 }

@TIFM_MS_STAT_FUL = common dso_local global i32 0, align 4
@SOCK_MS_STATUS = common dso_local global i64 0, align 8
@TIFM_MS_SYS_FDIR = common dso_local global i32 0, align 4
@SOCK_MS_SYSTEM = common dso_local global i64 0, align 8
@SOCK_MS_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tifm_ms*, i8*, i32)* @tifm_ms_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_ms_write_data(%struct.tifm_ms* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tifm_ms*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tifm_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.tifm_ms* %0, %struct.tifm_ms** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %11 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %10, i32 0, i32 2
  %12 = load %struct.tifm_dev*, %struct.tifm_dev** %11, align 8
  store %struct.tifm_dev* %12, %struct.tifm_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %14 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %28, %17
  %19 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %20 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i1 [ false, %18 ], [ %25, %23 ]
  br i1 %27, label %28, label %53

28:                                               ; preds = %26
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %37 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 8
  %40 = shl i32 %35, %39
  %41 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %42 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 4
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %40
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 4
  %47 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %48 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %18

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53, %3
  %55 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %56 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %98

59:                                               ; preds = %54
  %60 = load i32, i32* @TIFM_MS_STAT_FUL, align 4
  %61 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %62 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SOCK_MS_STATUS, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  %67 = and i32 %60, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* @TIFM_MS_SYS_FDIR, align 4
  %71 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %72 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  %77 = or i32 %70, %76
  %78 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %79 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %85 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %84, i32 0, i32 1
  %86 = load i8, i8* %85, align 4
  %87 = zext i8 %86 to i32
  %88 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %89 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SOCK_MS_DATA, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  %94 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %95 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %97 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %96, i32 0, i32 1
  store i8 0, i8* %97, align 4
  br label %106

98:                                               ; preds = %59, %54
  %99 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %100 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %222

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %69
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %4, align 4
  br label %222

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %127, %111
  %113 = load i32, i32* @TIFM_MS_STAT_FUL, align 4
  %114 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %115 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SOCK_MS_STATUS, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @readl(i64 %118)
  %120 = and i32 %113, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  br i1 %122, label %123, label %158

123:                                              ; preds = %112
  %124 = load i32, i32* %7, align 4
  %125 = icmp ult i32 %124, 4
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %158

127:                                              ; preds = %123
  %128 = load i32, i32* @TIFM_MS_SYS_FDIR, align 4
  %129 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %130 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @readl(i64 %133)
  %135 = or i32 %128, %134
  %136 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %137 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %9, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = bitcast i8* %145 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %149 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SOCK_MS_DATA, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @__raw_writel(i32 %147, i64 %152)
  %154 = load i32, i32* %7, align 4
  %155 = sub i32 %154, 4
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %9, align 4
  %157 = add i32 %156, 4
  store i32 %157, i32* %9, align 4
  br label %112

158:                                              ; preds = %126, %112
  %159 = load i32, i32* %7, align 4
  switch i32 %159, label %215 [
    i32 3, label %160
    i32 2, label %179
    i32 1, label %198
  ]

160:                                              ; preds = %158
  %161 = load i8*, i8** %6, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add i32 %162, 2
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = shl i32 %167, 16
  %169 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %170 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %169, i32 0, i32 1
  %171 = load i8, i8* %170, align 4
  %172 = zext i8 %171 to i32
  %173 = or i32 %172, %168
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %170, align 4
  %175 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %176 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %158, %160
  %180 = load i8*, i8** %6, align 8
  %181 = load i32, i32* %9, align 4
  %182 = add i32 %181, 1
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = shl i32 %186, 8
  %188 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %189 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %188, i32 0, i32 1
  %190 = load i8, i8* %189, align 4
  %191 = zext i8 %190 to i32
  %192 = or i32 %191, %187
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %189, align 4
  %194 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %195 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %158, %179
  %199 = load i8*, i8** %6, align 8
  %200 = load i32, i32* %9, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %206 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %205, i32 0, i32 1
  %207 = load i8, i8* %206, align 4
  %208 = zext i8 %207 to i32
  %209 = or i32 %208, %204
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %206, align 4
  %211 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %212 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %198, %158
  %216 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %217 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = add i32 %219, %218
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %215, %109, %103
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
