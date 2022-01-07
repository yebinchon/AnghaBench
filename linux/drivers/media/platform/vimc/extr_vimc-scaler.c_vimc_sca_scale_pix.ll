; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-scaler.c_vimc_sca_scale_pix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-scaler.c_vimc_sca_scale_pix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimc_sca_device = type { i32, i64, i32*, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"sca: %s: --- scale_pix sink pos %dx%d, index %d ---\0A\00", align 1
@sca_mult = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"sca: %s: scale_pix src pos %dx%d, index %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"sca: %s: sca: scale_pix src pos %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vimc_sca_device*, i32, i32, i32*)* @vimc_sca_scale_pix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vimc_sca_scale_pix(%struct.vimc_sca_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.vimc_sca_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.vimc_sca_device* %0, %struct.vimc_sca_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %16 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %20 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @VIMC_FRAME_INDEX(i32 %13, i32 %14, i32 %18, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %12, align 8
  %27 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %28 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %31 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @sca_mult, align 4
  %40 = mul i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @sca_mult, align 4
  %43 = mul i32 %41, %42
  %44 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %45 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @sca_mult, align 4
  %49 = mul i32 %47, %48
  %50 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %51 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @VIMC_FRAME_INDEX(i32 %40, i32 %43, i32 %49, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %55 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %58 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @sca_mult, align 4
  %63 = mul i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @sca_mult, align 4
  %66 = mul i32 %64, %65
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63, i32 %66, i32 %67)
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %121, %4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @sca_mult, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %124

73:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %107, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @sca_mult, align 4
  %77 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %78 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul i32 %76, %79
  %81 = icmp ult i32 %75, %80
  br i1 %81, label %82, label %113

82:                                               ; preds = %74
  %83 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %84 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %87 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %90, %91
  %93 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %92)
  %94 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %95 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32*, i32** %12, align 8
  %103 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %104 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @vimc_sca_fill_pix(i32* %101, i32* %102, i32 %105)
  br label %107

107:                                              ; preds = %82
  %108 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %109 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %74

113:                                              ; preds = %74
  %114 = load %struct.vimc_sca_device*, %struct.vimc_sca_device** %5, align 8
  %115 = getelementptr inbounds %struct.vimc_sca_device, %struct.vimc_sca_device* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %69

124:                                              ; preds = %69
  ret void
}

declare dso_local i32 @VIMC_FRAME_INDEX(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @vimc_sca_fill_pix(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
