; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_bitstream_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_bitstream_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i64, %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CODA_INST_DECODER = common dso_local global i64 0, align 8
@CODA_COMMAND_DEC_BUF_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to flush bitstream\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_bitstream_flush(%struct.coda_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  %5 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CODA_INST_DECODER, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %43

16:                                               ; preds = %10
  %17 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %18 = load i32, i32* @CODA_COMMAND_DEC_BUF_FLUSH, align 4
  %19 = call i32 @coda_command_sync(%struct.coda_ctx* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @v4l2_err(i32* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %16
  %30 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %30, i32 0, i32 2
  %32 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @kfifo_init(i32* %31, i32 %35, i32 %39)
  %41 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %42 = call i32 @coda_kfifo_sync_to_device_full(%struct.coda_ctx* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %29, %22, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @coda_command_sync(%struct.coda_ctx*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @kfifo_init(i32*, i32, i32) #1

declare dso_local i32 @coda_kfifo_sync_to_device_full(%struct.coda_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
