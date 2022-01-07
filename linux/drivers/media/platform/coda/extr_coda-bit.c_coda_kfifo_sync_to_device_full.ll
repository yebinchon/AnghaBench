; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_kfifo_sync_to_device_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_kfifo_sync_to_device_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, %struct.TYPE_3__, %struct.coda_dev*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.coda_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_kfifo_sync_to_device_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_kfifo_sync_to_device_full(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca %struct.__kfifo*, align 8
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %7 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.__kfifo* %9, %struct.__kfifo** %3, align 8
  %10 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %10, i32 0, i32 2
  %12 = load %struct.coda_dev*, %struct.coda_dev** %11, align 8
  store %struct.coda_dev* %12, %struct.coda_dev** %4, align 8
  %13 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %18 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %21 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %16, %24
  store i64 %25, i64* %5, align 8
  %26 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @CODA_REG_BIT_RD_PTR(i32 %30)
  %32 = call i32 @coda_write(%struct.coda_dev* %26, i64 %27, i32 %31)
  %33 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %38 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %41 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %36, %44
  store i64 %45, i64* %6, align 8
  %46 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @CODA_REG_BIT_WR_PTR(i32 %50)
  %52 = call i32 @coda_write(%struct.coda_dev* %46, i64 %47, i32 %51)
  ret void
}

declare dso_local i32 @coda_write(%struct.coda_dev*, i64, i32) #1

declare dso_local i32 @CODA_REG_BIT_RD_PTR(i32) #1

declare dso_local i32 @CODA_REG_BIT_WR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
