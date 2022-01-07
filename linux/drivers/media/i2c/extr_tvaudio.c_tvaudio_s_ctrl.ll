; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.CHIPSTATE = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.CHIPDESC* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.CHIPDESC = type { i32 (i32)*, i32, i32 (i32)*, i32, i32 (i32)*, i32, i32, i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @tvaudio_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.CHIPSTATE*, align 8
  %6 = alloca %struct.CHIPDESC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %11)
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %4, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev* %13)
  store %struct.CHIPSTATE* %14, %struct.CHIPSTATE** %5, align 8
  %15 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %16 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %15, i32 0, i32 4
  %17 = load %struct.CHIPDESC*, %struct.CHIPDESC** %16, align 8
  store %struct.CHIPDESC* %17, %struct.CHIPDESC** %6, align 8
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %129 [
    i32 130, label %21
    i32 128, label %61
    i32 131, label %103
    i32 129, label %116
  ]

21:                                               ; preds = %1
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %26 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %28 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %33 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %34 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %37 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %40 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @chip_write_masked(%struct.CHIPSTATE* %32, i32 %35, i32 %38, i32 %41)
  br label %60

43:                                               ; preds = %21
  %44 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %45 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %46 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %49 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %52 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %57 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @chip_write_masked(%struct.CHIPSTATE* %44, i32 %47, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %43, %31
  store i32 0, i32* %2, align 4
  br label %132

61:                                               ; preds = %1
  %62 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %63 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  %67 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %68 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub i32 65536, %72
  %74 = call i32 @min(i32 %73, i32 32768)
  %75 = load i32, i32* %7, align 4
  %76 = mul i32 %74, %75
  %77 = udiv i32 %76, 32768
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @min(i32 %78, i32 32768)
  %80 = load i32, i32* %7, align 4
  %81 = mul i32 %79, %80
  %82 = udiv i32 %81, 32768
  store i32 %82, i32* %10, align 4
  %83 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %84 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %85 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %88 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %87, i32 0, i32 4
  %89 = load i32 (i32)*, i32 (i32)** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 %89(i32 %90)
  %92 = call i32 @chip_write(%struct.CHIPSTATE* %83, i32 %86, i32 %91)
  %93 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %94 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %95 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %98 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %97, i32 0, i32 4
  %99 = load i32 (i32)*, i32 (i32)** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 %99(i32 %100)
  %102 = call i32 @chip_write(%struct.CHIPSTATE* %93, i32 %96, i32 %101)
  store i32 0, i32* %2, align 4
  br label %132

103:                                              ; preds = %1
  %104 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %105 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %106 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %109 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %108, i32 0, i32 2
  %110 = load i32 (i32)*, i32 (i32)** %109, align 8
  %111 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %112 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 %110(i32 %113)
  %115 = call i32 @chip_write(%struct.CHIPSTATE* %104, i32 %107, i32 %114)
  store i32 0, i32* %2, align 4
  br label %132

116:                                              ; preds = %1
  %117 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %118 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %119 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %122 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %121, i32 0, i32 0
  %123 = load i32 (i32)*, i32 (i32)** %122, align 8
  %124 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %125 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 %123(i32 %126)
  %128 = call i32 @chip_write(%struct.CHIPSTATE* %117, i32 %120, i32 %127)
  store i32 0, i32* %2, align 4
  br label %132

129:                                              ; preds = %1
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %129, %116, %103, %61, %60
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @chip_write_masked(%struct.CHIPSTATE*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
