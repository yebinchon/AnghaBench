; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_io_rw_ext_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_io_rw_ext_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, i32, i32, i32, i32*, i32)* @sdio_io_rw_ext_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_io_rw_ext_helper(%struct.sdio_func* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdio_func*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %20 = icmp ne %struct.sdio_func* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %6
  %22 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %23 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 7
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %150

29:                                               ; preds = %21
  %30 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %31 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %109

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %40 = call i32 @sdio_max_byte_size(%struct.sdio_func* %39)
  %41 = icmp ugt i32 %38, %40
  br i1 %41, label %42, label %109

42:                                               ; preds = %37
  %43 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %44 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @min(i32 %49, i32 511)
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %107, %42
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %54 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp uge i32 %52, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %51
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %60 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = udiv i32 %58, %61
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %66, %57
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %71 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul i32 %69, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %75 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %79 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %86 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mmc_io_rw_extended(%struct.TYPE_6__* %76, i32 %77, i32 %80, i32 %81, i32 %82, i32* %83, i32 %84, i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %68
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %7, align 4
  br label %150

93:                                               ; preds = %68
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sub i32 %95, %94
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %12, align 8
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %103, %93
  br label %51

108:                                              ; preds = %51
  br label %109

109:                                              ; preds = %108, %37, %29
  br label %110

110:                                              ; preds = %148, %109
  %111 = load i32, i32* %14, align 4
  %112 = icmp ugt i32 %111, 0
  br i1 %112, label %113, label %149

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %116 = call i32 @sdio_max_byte_size(%struct.sdio_func* %115)
  %117 = call i32 @min(i32 %114, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %119 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %123 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @mmc_io_rw_extended(%struct.TYPE_6__* %120, i32 %121, i32 %124, i32 %125, i32 %126, i32* %127, i32 0, i32 %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %113
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %7, align 4
  br label %150

134:                                              ; preds = %113
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %14, align 4
  %137 = sub i32 %136, %135
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = zext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %12, align 8
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %10, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %144, %134
  br label %110

149:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %149, %132, %91, %26
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @sdio_max_byte_size(%struct.sdio_func*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mmc_io_rw_extended(%struct.TYPE_6__*, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
