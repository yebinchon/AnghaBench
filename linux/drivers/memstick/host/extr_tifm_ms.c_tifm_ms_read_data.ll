; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_ms = type { i32, i32, %struct.tifm_dev* }
%struct.tifm_dev = type { i64 }

@TIFM_MS_STAT_EMP = common dso_local global i32 0, align 4
@SOCK_MS_STATUS = common dso_local global i64 0, align 8
@SOCK_MS_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tifm_ms*, i8*, i32)* @tifm_ms_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_ms_read_data(%struct.tifm_ms* %0, i8* %1, i32 %2) #0 {
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
  br label %13

13:                                               ; preds = %23, %3
  %14 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %15 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i1 [ false, %13 ], [ %20, %18 ]
  br i1 %22, label %23, label %44

23:                                               ; preds = %21
  %24 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %25 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 %28, i8* %33, align 1
  %34 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %35 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %41 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  br label %13

44:                                               ; preds = %21
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %139

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i32, i32* @TIFM_MS_STAT_EMP, align 4
  %52 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %53 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOCK_MS_STATUS, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  %58 = and i32 %51, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %81

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = icmp ult i32 %62, 4
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %81

65:                                               ; preds = %61
  %66 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %67 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SOCK_MS_DATA, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @__raw_readl(i64 %70)
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = bitcast i8* %75 to i32*
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub i32 %77, 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, 4
  store i32 %80, i32* %9, align 4
  br label %50

81:                                               ; preds = %64, %50
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %137

84:                                               ; preds = %81
  %85 = load i32, i32* @TIFM_MS_STAT_EMP, align 4
  %86 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %87 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SOCK_MS_STATUS, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @readl(i64 %90)
  %92 = and i32 %85, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %137, label %94

94:                                               ; preds = %84
  %95 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  %96 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SOCK_MS_DATA, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  %101 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %102 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %104 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %103, i32 0, i32 0
  store i32 4, i32* %104, align 8
  br label %105

105:                                              ; preds = %131, %94
  %106 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %107 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %105
  %111 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %112 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 255
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 %115, i8* %120, align 1
  %121 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %122 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 8
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add i32 %125, -1
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %110
  br label %136

130:                                              ; preds = %110
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.tifm_ms*, %struct.tifm_ms** %5, align 8
  %133 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %133, align 8
  br label %105

136:                                              ; preds = %129, %105
  br label %137

137:                                              ; preds = %136, %84, %81
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %47
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
