; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_configure_wpf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_configure_wpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { i32, %struct.fdp1_q_data, %struct.fdp1_q_data, %struct.fdp1_dev* }
%struct.fdp1_q_data = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fdp1_dev = type { i32 }
%struct.fdp1_job = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@FD1_WPF_PSTRIDE_Y_SHIFT = common dso_local global i32 0, align 4
@FD1_WPF_PSTRIDE_C_SHIFT = common dso_local global i32 0, align 4
@FD1_WPF_FORMAT_WSPYCS = common dso_local global i32 0, align 4
@FD1_WPF_FORMAT_WSPUVS = common dso_local global i32 0, align 4
@FD1_WPF_FORMAT_CSC = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_709 = common dso_local global i64 0, align 8
@FD1_WPF_FORMAT_WRTM_709_16 = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i64 0, align 8
@FD1_WPF_FORMAT_WRTM_601_0 = common dso_local global i32 0, align 4
@FD1_WPF_FORMAT_WRTM_601_16 = common dso_local global i32 0, align 4
@FD1_WPF_FORMAT_PDV_SHIFT = common dso_local global i32 0, align 4
@FD1_WPF_RNDCTL_CBRM = common dso_local global i32 0, align 4
@FD1_WPF_RNDCTL_CLMD_NOCLIP = common dso_local global i32 0, align 4
@FD1_WPF_SWAP_OSWAP_SHIFT = common dso_local global i32 0, align 4
@FD1_WPF_SWAP_SSWAP_SHIFT = common dso_local global i32 0, align 4
@FD1_WPF_FORMAT = common dso_local global i32 0, align 4
@FD1_WPF_RNDCTL = common dso_local global i32 0, align 4
@FD1_WPF_SWAP = common dso_local global i32 0, align 4
@FD1_WPF_PSTRIDE = common dso_local global i32 0, align 4
@FD1_WPF_ADDR_Y = common dso_local global i32 0, align 4
@FD1_WPF_ADDR_C0 = common dso_local global i32 0, align 4
@FD1_WPF_ADDR_C1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_ctx*, %struct.fdp1_job*)* @fdp1_configure_wpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_configure_wpf(%struct.fdp1_ctx* %0, %struct.fdp1_job* %1) #0 {
  %3 = alloca %struct.fdp1_ctx*, align 8
  %4 = alloca %struct.fdp1_job*, align 8
  %5 = alloca %struct.fdp1_dev*, align 8
  %6 = alloca %struct.fdp1_q_data*, align 8
  %7 = alloca %struct.fdp1_q_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %3, align 8
  store %struct.fdp1_job* %1, %struct.fdp1_job** %4, align 8
  %12 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %12, i32 0, i32 3
  %14 = load %struct.fdp1_dev*, %struct.fdp1_dev** %13, align 8
  store %struct.fdp1_dev* %14, %struct.fdp1_dev** %5, align 8
  %15 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %15, i32 0, i32 2
  store %struct.fdp1_q_data* %16, %struct.fdp1_q_data** %6, align 8
  %17 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %17, i32 0, i32 1
  store %struct.fdp1_q_data* %18, %struct.fdp1_q_data** %7, align 8
  %19 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %20 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FD1_WPF_PSTRIDE_Y_SHIFT, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %29 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %35 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FD1_WPF_PSTRIDE_C_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %33, %2
  %46 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %47 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %52 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i32, i32* @FD1_WPF_FORMAT_WSPYCS, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %45
  %62 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %63 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @FD1_WPF_FORMAT_WSPUVS, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %74 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i64 @fdp1_fmt_is_rgb(%struct.TYPE_8__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load i32, i32* @FD1_WPF_FORMAT_CSC, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %6, align 8
  %83 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @V4L2_YCBCR_ENC_709, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32, i32* @FD1_WPF_FORMAT_WRTM_709_16, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %108

92:                                               ; preds = %78
  %93 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %6, align 8
  %94 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @V4L2_QUANTIZATION_FULL_RANGE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* @FD1_WPF_FORMAT_WRTM_601_0, align 4
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %107

103:                                              ; preds = %92
  %104 = load i32, i32* @FD1_WPF_FORMAT_WRTM_601_16, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %88
  br label %109

109:                                              ; preds = %108, %72
  %110 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %111 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @FD1_WPF_FORMAT_PDV_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* @FD1_WPF_RNDCTL_CBRM, align 4
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* @FD1_WPF_RNDCTL_CLMD_NOCLIP, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %7, align 8
  %122 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FD1_WPF_SWAP_OSWAP_SHIFT, align 4
  %127 = shl i32 %125, %126
  store i32 %127, i32* %10, align 4
  %128 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %6, align 8
  %129 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @FD1_WPF_SWAP_SSWAP_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @FD1_WPF_FORMAT, align 4
  %140 = call i32 @fdp1_write(%struct.fdp1_dev* %137, i32 %138, i32 %139)
  %141 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @FD1_WPF_RNDCTL, align 4
  %144 = call i32 @fdp1_write(%struct.fdp1_dev* %141, i32 %142, i32 %143)
  %145 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @FD1_WPF_SWAP, align 4
  %148 = call i32 @fdp1_write(%struct.fdp1_dev* %145, i32 %146, i32 %147)
  %149 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @FD1_WPF_PSTRIDE, align 4
  %152 = call i32 @fdp1_write(%struct.fdp1_dev* %149, i32 %150, i32 %151)
  %153 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %154 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %155 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @FD1_WPF_ADDR_Y, align 4
  %162 = call i32 @fdp1_write(%struct.fdp1_dev* %153, i32 %160, i32 %161)
  %163 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %164 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %165 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %164, i32 0, i32 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @FD1_WPF_ADDR_C0, align 4
  %172 = call i32 @fdp1_write(%struct.fdp1_dev* %163, i32 %170, i32 %171)
  %173 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %174 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %175 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @FD1_WPF_ADDR_C1, align 4
  %182 = call i32 @fdp1_write(%struct.fdp1_dev* %173, i32 %180, i32 %181)
  ret void
}

declare dso_local i64 @fdp1_fmt_is_rgb(%struct.TYPE_8__*) #1

declare dso_local i32 @fdp1_write(%struct.fdp1_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
