; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_kfifo_sync_from_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_kfifo_sync_from_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_3__, i32, %struct.coda_dev*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.coda_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_kfifo_sync_from_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_kfifo_sync_from_device(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca %struct.__kfifo*, align 8
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %6 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.__kfifo* %8, %struct.__kfifo** %3, align 8
  %9 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %9, i32 0, i32 2
  %11 = load %struct.coda_dev*, %struct.coda_dev** %10, align 8
  store %struct.coda_dev* %11, %struct.coda_dev** %4, align 8
  %12 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %13 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CODA_REG_BIT_RD_PTR(i32 %15)
  %17 = call i32 @coda_read(%struct.coda_dev* %12, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %19 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %22 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %26, %30
  %32 = or i32 %25, %31
  %33 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %34 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %36 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %39 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %1
  %43 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %44 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %48 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @coda_read(%struct.coda_dev*, i32) #1

declare dso_local i32 @CODA_REG_BIT_RD_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
