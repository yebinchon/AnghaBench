; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_configure_rpf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_configure_rpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { i32*, i64, %struct.fdp1_q_data, %struct.fdp1_dev* }
%struct.fdp1_q_data = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fdp1_dev = type { i32 }
%struct.fdp1_job = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32* }

@FD1_RPF_SIZE_H_SHIFT = common dso_local global i32 0, align 4
@FD1_RPF_SIZE_V_SHIFT = common dso_local global i32 0, align 4
@FD1_RPF_PSTRIDE_Y_SHIFT = common dso_local global i32 0, align 4
@FD1_RPF_PSTRIDE_C_SHIFT = common dso_local global i32 0, align 4
@FD1_RPF_FORMAT_RSPYCS = common dso_local global i32 0, align 4
@FD1_RPF_FORMAT_RSPUVS = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@FD1_RPF_FORMAT_CF = common dso_local global i32 0, align 4
@FD1_RPF_FORMAT_CIPM = common dso_local global i32 0, align 4
@FD1_RPF_FORMAT = common dso_local global i32 0, align 4
@FD1_RPF_SWAP = common dso_local global i32 0, align 4
@FD1_RPF_SIZE = common dso_local global i32 0, align 4
@FD1_RPF_PSTRIDE = common dso_local global i32 0, align 4
@FD1_RPF_SMSK_ADDR = common dso_local global i32 0, align 4
@FD1_RPF0_ADDR_Y = common dso_local global i32 0, align 4
@FD1_RPF1_ADDR_Y = common dso_local global i32 0, align 4
@FD1_RPF1_ADDR_C0 = common dso_local global i32 0, align 4
@FD1_RPF1_ADDR_C1 = common dso_local global i32 0, align 4
@FD1_RPF2_ADDR_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_ctx*, %struct.fdp1_job*)* @fdp1_configure_rpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_configure_rpf(%struct.fdp1_ctx* %0, %struct.fdp1_job* %1) #0 {
  %3 = alloca %struct.fdp1_ctx*, align 8
  %4 = alloca %struct.fdp1_job*, align 8
  %5 = alloca %struct.fdp1_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fdp1_q_data*, align 8
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %3, align 8
  store %struct.fdp1_job* %1, %struct.fdp1_job** %4, align 8
  %11 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %11, i32 0, i32 3
  %13 = load %struct.fdp1_dev*, %struct.fdp1_dev** %12, align 8
  store %struct.fdp1_dev* %13, %struct.fdp1_dev** %5, align 8
  %14 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %14, i32 0, i32 2
  store %struct.fdp1_q_data* %15, %struct.fdp1_q_data** %10, align 8
  %16 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %10, align 8
  %17 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FD1_RPF_SIZE_H_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %10, align 8
  %23 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FD1_RPF_SIZE_V_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %21, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %10, align 8
  %29 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FD1_RPF_PSTRIDE_Y_SHIFT, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %10, align 8
  %34 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %10, align 8
  %40 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FD1_RPF_PSTRIDE_C_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %38, %2
  %47 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %10, align 8
  %48 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %47, i32 0, i32 3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  %52 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %10, align 8
  %53 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %52, i32 0, i32 3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i32, i32* @FD1_RPF_FORMAT_RSPYCS, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %46
  %63 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %10, align 8
  %64 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %63, i32 0, i32 3
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @FD1_RPF_FORMAT_RSPUVS, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %75 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = load i32, i32* @FD1_RPF_FORMAT_CF, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  br label %96

90:                                               ; preds = %73
  %91 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %90, %81
  %97 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @FD1_RPF_FORMAT_CIPM, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @FD1_RPF_FORMAT, align 4
  %109 = call i32 @fdp1_write(%struct.fdp1_dev* %106, i32 %107, i32 %108)
  %110 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %111 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %10, align 8
  %112 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %111, i32 0, i32 3
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @FD1_RPF_SWAP, align 4
  %117 = call i32 @fdp1_write(%struct.fdp1_dev* %110, i32 %115, i32 %116)
  %118 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @FD1_RPF_SIZE, align 4
  %121 = call i32 @fdp1_write(%struct.fdp1_dev* %118, i32 %119, i32 %120)
  %122 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @FD1_RPF_PSTRIDE, align 4
  %125 = call i32 @fdp1_write(%struct.fdp1_dev* %122, i32 %123, i32 %124)
  %126 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @FD1_RPF_SMSK_ADDR, align 4
  %129 = call i32 @fdp1_write(%struct.fdp1_dev* %126, i32 %127, i32 %128)
  %130 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %131 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %130, i32 0, i32 2
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = icmp ne %struct.TYPE_8__* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %105
  %135 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %136 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %137 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %136, i32 0, i32 2
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FD1_RPF0_ADDR_Y, align 4
  %144 = call i32 @fdp1_write(%struct.fdp1_dev* %135, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %134, %105
  %146 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %147 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %148 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @FD1_RPF1_ADDR_Y, align 4
  %155 = call i32 @fdp1_write(%struct.fdp1_dev* %146, i32 %153, i32 %154)
  %156 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %157 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %158 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @FD1_RPF1_ADDR_C0, align 4
  %165 = call i32 @fdp1_write(%struct.fdp1_dev* %156, i32 %163, i32 %164)
  %166 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %167 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %168 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %167, i32 0, i32 1
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @FD1_RPF1_ADDR_C1, align 4
  %175 = call i32 @fdp1_write(%struct.fdp1_dev* %166, i32 %173, i32 %174)
  %176 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %177 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = icmp ne %struct.TYPE_10__* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %145
  %181 = load %struct.fdp1_dev*, %struct.fdp1_dev** %5, align 8
  %182 = load %struct.fdp1_job*, %struct.fdp1_job** %4, align 8
  %183 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %182, i32 0, i32 0
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @FD1_RPF2_ADDR_Y, align 4
  %190 = call i32 @fdp1_write(%struct.fdp1_dev* %181, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %180, %145
  ret void
}

declare dso_local i32 @fdp1_write(%struct.fdp1_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
