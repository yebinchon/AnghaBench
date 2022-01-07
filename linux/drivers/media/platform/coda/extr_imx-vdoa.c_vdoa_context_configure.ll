; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_context_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_context_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdoa_ctx = type { %struct.vdoa_q_data* }
%struct.vdoa_q_data = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_M2M_SRC = common dso_local global i64 0, align 8
@V4L2_M2M_DST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdoa_context_configure(%struct.vdoa_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vdoa_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vdoa_q_data*, align 8
  %11 = alloca %struct.vdoa_q_data*, align 8
  store %struct.vdoa_ctx* %0, %struct.vdoa_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %12, 16
  br i1 %13, label %31, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ugt i32 %15, 8192
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = urem i32 %18, 16
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = icmp ult i32 %22, 16
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %25, 4096
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = urem i32 %28, 16
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24, %21, %17, %14, %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %119

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 128
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 129
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %119

43:                                               ; preds = %37, %34
  %44 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %6, align 8
  %45 = icmp ne %struct.vdoa_ctx* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %119

47:                                               ; preds = %43
  %48 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %48, i32 0, i32 0
  %50 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %49, align 8
  %51 = load i64, i64* @V4L2_M2M_SRC, align 8
  %52 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %50, i64 %51
  store %struct.vdoa_q_data* %52, %struct.vdoa_q_data** %10, align 8
  %53 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %53, i32 0, i32 0
  %55 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %54, align 8
  %56 = load i64, i64* @V4L2_M2M_DST, align 8
  %57 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %55, i64 %56
  store %struct.vdoa_q_data* %57, %struct.vdoa_q_data** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %10, align 8
  %60 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %10, align 8
  %63 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %10, align 8
  %66 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %10, align 8
  %68 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul i32 %69, %70
  %72 = call i32 @round_up(i32 %71, i32 4096)
  %73 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %10, align 8
  %74 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = mul i32 %75, %76
  %78 = udiv i32 %77, 2
  %79 = add i32 %72, %78
  %80 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %10, align 8
  %81 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %11, align 8
  %84 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %11, align 8
  %87 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %11, align 8
  %90 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  switch i32 %91, label %105 [
    i32 128, label %92
    i32 129, label %104
  ]

92:                                               ; preds = %47
  %93 = load i32, i32* %7, align 4
  %94 = mul i32 %93, 2
  %95 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %11, align 8
  %96 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %11, align 8
  %98 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = mul i32 %99, %100
  %102 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %11, align 8
  %103 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  br label %118

104:                                              ; preds = %47
  br label %105

105:                                              ; preds = %47, %104
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %11, align 8
  %108 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %11, align 8
  %110 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %8, align 4
  %113 = mul i32 %111, %112
  %114 = mul i32 %113, 3
  %115 = udiv i32 %114, 2
  %116 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %11, align 8
  %117 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %105, %92
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %46, %40, %31
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
