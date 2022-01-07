; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdoa_ctx = type { %struct.vdoa_q_data*, i32, i32, %struct.vdoa_data* }
%struct.vdoa_q_data = type { i64, i32, i32, i32 }
%struct.vdoa_data = type { i64, %struct.vdoa_ctx* }

@V4L2_M2M_SRC = common dso_local global i64 0, align 8
@V4L2_M2M_DST = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@VDOAC_PFS = common dso_local global i32 0, align 4
@VDOAC = common dso_local global i64 0, align 8
@VDOAFP = common dso_local global i64 0, align 8
@VDOAIEBA00 = common dso_local global i64 0, align 8
@VDOASL = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV21 = common dso_local global i64 0, align 8
@VDOAIUBO = common dso_local global i64 0, align 8
@VDOAVEBA0 = common dso_local global i64 0, align 8
@VDOAVUBO = common dso_local global i64 0, align 8
@VDOAIE_EITERR = common dso_local global i32 0, align 4
@VDOAIE_EIEOT = common dso_local global i32 0, align 4
@VDOAIE = common dso_local global i64 0, align 8
@VDOASRR_START = common dso_local global i32 0, align 4
@VDOASRR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdoa_device_run(%struct.vdoa_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vdoa_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vdoa_q_data*, align 8
  %8 = alloca %struct.vdoa_q_data*, align 8
  %9 = alloca %struct.vdoa_data*, align 8
  %10 = alloca i32, align 4
  store %struct.vdoa_ctx* %0, %struct.vdoa_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %11, i32 0, i32 3
  %13 = load %struct.vdoa_data*, %struct.vdoa_data** %12, align 8
  store %struct.vdoa_data* %13, %struct.vdoa_data** %9, align 8
  %14 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %15 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %14, i32 0, i32 1
  %16 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %15, align 8
  %17 = icmp ne %struct.vdoa_ctx* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %20 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %19, i32 0, i32 1
  %21 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %20, align 8
  %22 = call i32 @vdoa_wait_for_completion(%struct.vdoa_ctx* %21)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %25 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %26 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %25, i32 0, i32 1
  store %struct.vdoa_ctx* %24, %struct.vdoa_ctx** %26, align 8
  %27 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %27, i32 0, i32 2
  %29 = call i32 @reinit_completion(i32* %28)
  %30 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %34, i32 0, i32 0
  %36 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %35, align 8
  %37 = load i64, i64* @V4L2_M2M_SRC, align 8
  %38 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %36, i64 %37
  store %struct.vdoa_q_data* %38, %struct.vdoa_q_data** %7, align 8
  %39 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %39, i32 0, i32 0
  %41 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %40, align 8
  %42 = load i64, i64* @V4L2_M2M_DST, align 8
  %43 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %41, i64 %42
  store %struct.vdoa_q_data* %43, %struct.vdoa_q_data** %8, align 8
  %44 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %8, align 8
  %45 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %23
  %50 = load i32, i32* @VDOAC_PFS, align 4
  store i32 %50, i32* %10, align 4
  br label %52

51:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %49
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %55 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @VDOAC, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %8, align 8
  %61 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 16
  %64 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %8, align 8
  %65 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %69 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VDOAFP, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %77 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VDOAIEBA00, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %7, align 8
  %83 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %84, 16
  %86 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %8, align 8
  %87 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %85, %88
  %90 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %91 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VDOASL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %8, align 8
  %97 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %52
  %102 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %8, align 8
  %103 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @V4L2_PIX_FMT_NV21, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101, %52
  %108 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %8, align 8
  %109 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %8, align 8
  %112 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  store i32 %114, i32* %10, align 4
  br label %116

115:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %107
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %119 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @VDOAIUBO, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %127 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @VDOAVEBA0, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  %132 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %7, align 8
  %133 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.vdoa_q_data*, %struct.vdoa_q_data** %7, align 8
  %136 = getelementptr inbounds %struct.vdoa_q_data, %struct.vdoa_q_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %134, %137
  %139 = call i32 @round_up(i32 %138, i32 4096)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %142 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @VDOAVUBO, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writel(i32 %140, i64 %145)
  %147 = load i32, i32* @VDOAIE_EITERR, align 4
  %148 = load i32, i32* @VDOAIE_EIEOT, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %151 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @VDOAIE, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  %156 = load i32, i32* @VDOASRR_START, align 4
  %157 = load %struct.vdoa_data*, %struct.vdoa_data** %9, align 8
  %158 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @VDOASRR, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writel(i32 %156, i64 %161)
  ret void
}

declare dso_local i32 @vdoa_wait_for_completion(%struct.vdoa_ctx*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
