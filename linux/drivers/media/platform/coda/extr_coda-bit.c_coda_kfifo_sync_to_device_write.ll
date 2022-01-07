; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_kfifo_sync_to_device_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_kfifo_sync_to_device_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, %struct.TYPE_4__, %struct.coda_dev*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.coda_dev = type { i32 }
%struct.TYPE_3__ = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_kfifo_sync_to_device_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_kfifo_sync_to_device_write(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca %struct.__kfifo*, align 8
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %6 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.__kfifo* %8, %struct.__kfifo** %3, align 8
  %9 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %9, i32 0, i32 2
  %11 = load %struct.coda_dev*, %struct.coda_dev** %10, align 8
  store %struct.coda_dev* %11, %struct.coda_dev** %4, align 8
  %12 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %17 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %20 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %15, %23
  store i64 %24, i64* %5, align 8
  %25 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CODA_REG_BIT_WR_PTR(i32 %29)
  %31 = call i32 @coda_write(%struct.coda_dev* %25, i64 %26, i32 %30)
  ret void
}

declare dso_local i32 @coda_write(%struct.coda_dev*, i64, i32) #1

declare dso_local i32 @CODA_REG_BIT_WR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
