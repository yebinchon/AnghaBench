; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.hva_ctx = type { i64, i32, %struct.TYPE_3__, i32, %struct.hva_enc* }
%struct.TYPE_3__ = type { i32 }
%struct.hva_enc = type { i32 (%struct.hva_ctx.0*)*, i32 }
%struct.hva_ctx.0 = type opaque
%struct.hva_dev = type { i32, i32** }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s %s encoder closed\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s encoder instance released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @hva_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.hva_ctx*, align 8
  %4 = alloca %struct.hva_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hva_enc*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.hva_ctx* @fh_to_ctx(i32 %9)
  store %struct.hva_ctx* %10, %struct.hva_ctx** %3, align 8
  %11 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %12 = call %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx* %11)
  store %struct.hva_dev* %12, %struct.hva_dev** %4, align 8
  %13 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %14 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %13)
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %15, i32 0, i32 4
  %17 = load %struct.hva_enc*, %struct.hva_enc** %16, align 8
  store %struct.hva_enc* %17, %struct.hva_enc** %6, align 8
  %18 = load %struct.hva_enc*, %struct.hva_enc** %6, align 8
  %19 = icmp ne %struct.hva_enc* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.hva_enc*, %struct.hva_enc** %6, align 8
  %26 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.hva_enc*, %struct.hva_enc** %6, align 8
  %30 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %29, i32 0, i32 0
  %31 = load i32 (%struct.hva_ctx.0*)*, i32 (%struct.hva_ctx.0*)** %30, align 8
  %32 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %33 = bitcast %struct.hva_ctx* %32 to %struct.hva_ctx.0*
  %34 = call i32 %31(%struct.hva_ctx.0* %33)
  %35 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %35, i32 0, i32 4
  store %struct.hva_enc* null, %struct.hva_enc** %36, align 8
  %37 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %38 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32*, i32** %39, i64 %42
  store i32* null, i32** %43, align 8
  %44 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %45 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %20, %1
  %49 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %50 = call i32 @hva_dbg_summary(%struct.hva_ctx* %49)
  %51 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @v4l2_m2m_ctx_release(i32 %54)
  %56 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %56, i32 0, i32 3
  %58 = call i32 @v4l2_ctrl_handler_free(i32* %57)
  %59 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %59, i32 0, i32 2
  %61 = call i32 @v4l2_fh_del(%struct.TYPE_3__* %60)
  %62 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %62, i32 0, i32 2
  %64 = call i32 @v4l2_fh_exit(%struct.TYPE_3__* %63)
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_info(%struct.device* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %71 = call i32 @kfree(%struct.hva_ctx* %70)
  ret i32 0
}

declare dso_local %struct.hva_ctx* @fh_to_ctx(i32) #1

declare dso_local %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx*) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @hva_dbg_summary(%struct.hva_ctx*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.hva_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
