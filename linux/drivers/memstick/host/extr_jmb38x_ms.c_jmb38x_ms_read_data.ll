; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmb38x_ms_host = type { i32, i32*, i64 }

@STATUS_FIFO_EMPTY = common dso_local global i32 0, align 4
@STATUS = common dso_local global i64 0, align 8
@DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jmb38x_ms_host*, i8*, i32)* @jmb38x_ms_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_read_data(%struct.jmb38x_ms_host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jmb38x_ms_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jmb38x_ms_host* %0, %struct.jmb38x_ms_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %19, %3
  %10 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %11 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %44

19:                                               ; preds = %17
  %20 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %21 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %26, i8* %31, align 1
  %32 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %33 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %41 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  br label %9

44:                                               ; preds = %17
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %145

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i32, i32* @STATUS_FIFO_EMPTY, align 4
  %52 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %53 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @STATUS, align 8
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
  %66 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %67 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DATA, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @__raw_readl(i64 %70)
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = bitcast i8* %75 to i32*
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub i32 %77, 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, 4
  store i32 %80, i32* %8, align 4
  br label %50

81:                                               ; preds = %64, %50
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %143

84:                                               ; preds = %81
  %85 = load i32, i32* @STATUS_FIFO_EMPTY, align 4
  %86 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %87 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @STATUS, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @readl(i64 %90)
  %92 = and i32 %85, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %143, label %94

94:                                               ; preds = %84
  %95 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %96 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DATA, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  %101 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %102 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %100, i32* %104, align 4
  %105 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %106 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %105, i32 0, i32 0
  store i32 4, i32* %106, align 8
  br label %107

107:                                              ; preds = %137, %94
  %108 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %109 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %107
  %113 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %114 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 255
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8 %119, i8* %124, align 1
  %125 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %126 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 8
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* %7, align 4
  %132 = add i32 %131, -1
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %112
  br label %142

136:                                              ; preds = %112
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %139 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %139, align 8
  br label %107

142:                                              ; preds = %135, %107
  br label %143

143:                                              ; preds = %142, %84, %81
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %47
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
