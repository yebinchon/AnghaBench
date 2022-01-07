; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_check_bounce_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_check_bounce_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.TYPE_2__, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @tmio_mmc_check_bounce_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_check_bounce_buffer(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 1
  %10 = icmp eq %struct.TYPE_2__* %7, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @tmio_mmc_kmap_atomic(i32 %14, i64* %3)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %18 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %21 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i8* %16, i32 %19, i32 %23)
  %25 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %26 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @tmio_mmc_kunmap_atomic(i32 %27, i64* %3, i8* %28)
  br label %30

30:                                               ; preds = %11, %1
  ret void
}

declare dso_local i8* @tmio_mmc_kmap_atomic(i32, i64*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @tmio_mmc_kunmap_atomic(i32, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
