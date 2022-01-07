; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vpe_ctx = type { i64, i64, i32 }

@.str = private unnamed_addr constant [66 x i8] c"Conversion setup failed, check source and destination parameters\0A\00", align 1
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @vpe_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vpe_ctx*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %8 = call %struct.vpe_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.vpe_ctx* %8, %struct.vpe_ctx** %6, align 8
  %9 = load %struct.vpe_ctx*, %struct.vpe_ctx** %6, align 8
  %10 = call i64 @check_srcdst_sizes(%struct.vpe_ctx* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.vpe_ctx*, %struct.vpe_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @vpe_err(i32 %15, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vpe_ctx*, %struct.vpe_ctx** %6, align 8
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %19 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %20 = call i32 @vpe_return_all_buffers(%struct.vpe_ctx* %17, %struct.vb2_queue* %18, i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.vpe_ctx*, %struct.vpe_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.vpe_ctx*, %struct.vpe_ctx** %6, align 8
  %30 = call i32 @config_edi_input_mode(%struct.vpe_ctx* %29, i32 0)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.vpe_ctx*, %struct.vpe_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.vpe_ctx*, %struct.vpe_ctx** %6, align 8
  %38 = call i32 @set_srcdst_params(%struct.vpe_ctx* %37)
  br label %39

39:                                               ; preds = %36, %31
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.vpe_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @check_srcdst_sizes(%struct.vpe_ctx*) #1

declare dso_local i32 @vpe_err(i32, i8*) #1

declare dso_local i32 @vpe_return_all_buffers(%struct.vpe_ctx*, %struct.vb2_queue*, i32) #1

declare dso_local i32 @config_edi_input_mode(%struct.vpe_ctx*, i32) #1

declare dso_local i32 @set_srcdst_params(%struct.vpe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
