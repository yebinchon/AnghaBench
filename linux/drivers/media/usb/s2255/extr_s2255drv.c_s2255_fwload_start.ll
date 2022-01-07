; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_fwload_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_fwload_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@S2255_FW_NOTLOADED = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@s2255_fwchunk_complete = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2255_dev*)* @s2255_fwload_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2255_fwload_start(%struct.s2255_dev* %0) #0 {
  %2 = alloca %struct.s2255_dev*, align 8
  store %struct.s2255_dev* %0, %struct.s2255_dev** %2, align 8
  %3 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %4 = call i32 @s2255_reset_dsppower(%struct.s2255_dev* %3)
  %5 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %6 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %13 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  store i32 %11, i32* %15, align 4
  %16 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %17 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i32, i32* @S2255_FW_NOTLOADED, align 4
  %21 = call i32 @atomic_set(i32* %19, i32 %20)
  %22 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %23 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %28 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CHUNK_SIZE, align 4
  %35 = call i32 @memcpy(i32 %26, i32 %33, i32 %34)
  %36 = load i32, i32* @CHUNK_SIZE, align 4
  %37 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %38 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 8
  %41 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %42 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %47 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %50 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_sndbulkpipe(i32 %51, i32 2)
  %53 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %54 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CHUNK_SIZE, align 4
  %59 = load i32, i32* @s2255_fwchunk_complete, align 4
  %60 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %61 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @usb_fill_bulk_urb(i32 %45, i32 %48, i32 %52, i32 %57, i32 %58, i32 %59, %struct.TYPE_4__* %62)
  %64 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %65 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %64, i32 0, i32 0
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i64, i64* @HZ, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @mod_timer(i32* %65, i64 %68)
  ret void
}

declare dso_local i32 @s2255_reset_dsppower(%struct.s2255_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
