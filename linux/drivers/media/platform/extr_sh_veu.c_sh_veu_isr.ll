; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_veu_dev = type { i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VEU_EVTR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@VEU_EIER = common dso_local global i32 0, align 4
@VEU_STR = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_veu_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sh_veu_dev*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sh_veu_dev*
  store %struct.sh_veu_dev* %11, %struct.sh_veu_dev** %6, align 8
  %12 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %6, align 8
  %13 = load i32, i32* @VEU_EVTR, align 4
  %14 = call i32 @sh_veu_reg_read(%struct.sh_veu_dev* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %92

20:                                               ; preds = %2
  %21 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %6, align 8
  %22 = load i32, i32* @VEU_EIER, align 4
  %23 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %21, i32 %22, i32 0)
  %24 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %6, align 8
  %25 = load i32, i32* @VEU_STR, align 4
  %26 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %24, i32 %25, i32 0)
  %27 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %6, align 8
  %28 = load i32, i32* @VEU_EVTR, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, -2
  %31 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %27, i32 %28, i32 %30)
  %32 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %6, align 8
  %33 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %34)
  store %struct.vb2_v4l2_buffer* %35, %struct.vb2_v4l2_buffer** %7, align 8
  %36 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %6, align 8
  %37 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %38)
  store %struct.vb2_v4l2_buffer* %39, %struct.vb2_v4l2_buffer** %8, align 8
  %40 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %41 = icmp ne %struct.vb2_v4l2_buffer* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %20
  %43 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %44 = icmp ne %struct.vb2_v4l2_buffer* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42, %20
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  br label %92

47:                                               ; preds = %42
  %48 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %49 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %53 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %62 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %71 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %74 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %6, align 8
  %76 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %75, i32 0, i32 1
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %79 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %80 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %78, i32 %79)
  %81 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %82 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %83 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %81, i32 %82)
  %84 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %6, align 8
  %85 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %6, align 8
  %88 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %47, %45, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @sh_veu_reg_read(%struct.sh_veu_dev*, i32) #1

declare dso_local i32 @sh_veu_reg_write(%struct.sh_veu_dev*, i32, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
