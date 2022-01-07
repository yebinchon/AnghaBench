; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_return_all_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_return_all_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { %struct.TYPE_4__*, %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vb2_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*, %struct.vb2_queue*, i32)* @vpe_return_all_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpe_return_all_buffers(%struct.vpe_ctx* %0, %struct.vb2_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.vpe_ctx*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %4, align 8
  store %struct.vb2_queue* %1, %struct.vb2_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %31, %3
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %19)
  store %struct.vb2_v4l2_buffer* %20, %struct.vb2_v4l2_buffer** %7, align 8
  br label %27

21:                                               ; preds = %9
  %22 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %25)
  store %struct.vb2_v4l2_buffer* %26, %struct.vb2_v4l2_buffer** %7, align 8
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %29 = icmp ne %struct.vb2_v4l2_buffer* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %47

31:                                               ; preds = %27
  %32 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %38, i32 %39)
  %41 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %9

47:                                               ; preds = %30
  %48 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %49 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %159

53:                                               ; preds = %47
  %54 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %60, i32 0, i32 2
  %62 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %61, align 8
  %63 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %62, i64 2
  %64 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %63, align 8
  %65 = icmp ne %struct.vb2_v4l2_buffer* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %53
  %67 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %67, i32 0, i32 2
  %69 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %68, align 8
  %70 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %69, i64 2
  %71 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %53
  %75 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %75, i32 0, i32 2
  %77 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %76, align 8
  %78 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %77, i64 1
  %79 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %78, align 8
  %80 = icmp ne %struct.vb2_v4l2_buffer* %79, null
  br i1 %80, label %81, label %101

81:                                               ; preds = %74
  %82 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %82, i32 0, i32 2
  %84 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %83, align 8
  %85 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %84, i64 1
  %86 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %85, align 8
  %87 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %87, i32 0, i32 2
  %89 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %88, align 8
  %90 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %89, i64 2
  %91 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %90, align 8
  %92 = icmp ne %struct.vb2_v4l2_buffer* %86, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %81
  %94 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %94, i32 0, i32 2
  %96 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %95, align 8
  %97 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %96, i64 1
  %98 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %98, i32 %99)
  br label %101

101:                                              ; preds = %93, %81, %74
  %102 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %103 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %102, i32 0, i32 2
  %104 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %103, align 8
  %105 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %104, i64 0
  %106 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %105, align 8
  %107 = icmp ne %struct.vb2_v4l2_buffer* %106, null
  br i1 %107, label %108, label %140

108:                                              ; preds = %101
  %109 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %110 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %109, i32 0, i32 2
  %111 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %110, align 8
  %112 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %111, i64 0
  %113 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %112, align 8
  %114 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %115 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %114, i32 0, i32 2
  %116 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %115, align 8
  %117 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %116, i64 1
  %118 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %117, align 8
  %119 = icmp ne %struct.vb2_v4l2_buffer* %113, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %108
  %121 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %122 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %121, i32 0, i32 2
  %123 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %122, align 8
  %124 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %123, i64 0
  %125 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %124, align 8
  %126 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %127 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %126, i32 0, i32 2
  %128 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %127, align 8
  %129 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %128, i64 2
  %130 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %129, align 8
  %131 = icmp ne %struct.vb2_v4l2_buffer* %125, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %120
  %133 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %134 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %133, i32 0, i32 2
  %135 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %134, align 8
  %136 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %135, i64 0
  %137 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %137, i32 %138)
  br label %140

140:                                              ; preds = %132, %120, %108, %101
  %141 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %142 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %141, i32 0, i32 2
  %143 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %142, align 8
  %144 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %143, i64 2
  store %struct.vb2_v4l2_buffer* null, %struct.vb2_v4l2_buffer** %144, align 8
  %145 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %146 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %145, i32 0, i32 2
  %147 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %146, align 8
  %148 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %147, i64 1
  store %struct.vb2_v4l2_buffer* null, %struct.vb2_v4l2_buffer** %148, align 8
  %149 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %150 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %149, i32 0, i32 2
  %151 = load %struct.vb2_v4l2_buffer**, %struct.vb2_v4l2_buffer*** %150, align 8
  %152 = getelementptr inbounds %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %151, i64 0
  store %struct.vb2_v4l2_buffer* null, %struct.vb2_v4l2_buffer** %152, align 8
  %153 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %154 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  br label %185

159:                                              ; preds = %47
  %160 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %161 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %160, i32 0, i32 1
  %162 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %161, align 8
  %163 = icmp ne %struct.vb2_v4l2_buffer* %162, null
  br i1 %163, label %164, label %184

164:                                              ; preds = %159
  %165 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %166 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %8, align 8
  %170 = call i32 @spin_lock_irqsave(i32* %168, i64 %169)
  %171 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %172 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %171, i32 0, i32 1
  %173 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %173, i32 %174)
  %176 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %177 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %176, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* null, %struct.vb2_v4l2_buffer** %177, align 8
  %178 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %179 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %8, align 8
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i64 %182)
  br label %184

184:                                              ; preds = %164, %159
  br label %185

185:                                              ; preds = %184, %140
  ret void
}

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
