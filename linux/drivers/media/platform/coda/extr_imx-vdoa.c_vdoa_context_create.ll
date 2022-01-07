; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_context_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_context_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdoa_ctx = type { %struct.vdoa_data*, i32 }
%struct.vdoa_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vdoa_ctx* @vdoa_context_create(%struct.vdoa_data* %0) #0 {
  %2 = alloca %struct.vdoa_ctx*, align 8
  %3 = alloca %struct.vdoa_data*, align 8
  %4 = alloca %struct.vdoa_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.vdoa_data* %0, %struct.vdoa_data** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.vdoa_ctx* @kzalloc(i32 16, i32 %6)
  store %struct.vdoa_ctx* %7, %struct.vdoa_ctx** %4, align 8
  %8 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %9 = icmp ne %struct.vdoa_ctx* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.vdoa_ctx* null, %struct.vdoa_ctx** %2, align 8
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.vdoa_data*, %struct.vdoa_data** %3, align 8
  %13 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %20 = call i32 @kfree(%struct.vdoa_ctx* %19)
  store %struct.vdoa_ctx* null, %struct.vdoa_ctx** %2, align 8
  br label %29

21:                                               ; preds = %11
  %22 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %22, i32 0, i32 1
  %24 = call i32 @init_completion(i32* %23)
  %25 = load %struct.vdoa_data*, %struct.vdoa_data** %3, align 8
  %26 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %26, i32 0, i32 0
  store %struct.vdoa_data* %25, %struct.vdoa_data** %27, align 8
  %28 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %4, align 8
  store %struct.vdoa_ctx* %28, %struct.vdoa_ctx** %2, align 8
  br label %29

29:                                               ; preds = %21, %18, %10
  %30 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %2, align 8
  ret %struct.vdoa_ctx* %30
}

declare dso_local %struct.vdoa_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @kfree(%struct.vdoa_ctx*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
