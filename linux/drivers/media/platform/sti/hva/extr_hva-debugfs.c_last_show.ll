; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_last_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_last_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.hva_dev* }
%struct.hva_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hva_ctx }
%struct.hva_ctx = type { i32 }

@HVA_FLAG_STREAMINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"[last encoding]\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"[no information recorded about last encoding]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @last_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @last_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hva_dev*, align 8
  %6 = alloca %struct.hva_ctx*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.hva_dev*, %struct.hva_dev** %8, align 8
  store %struct.hva_dev* %9, %struct.hva_dev** %5, align 8
  %10 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.hva_ctx* %12, %struct.hva_ctx** %6, align 8
  %13 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HVA_FLAG_STREAMINFO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %23 = call i32 @hva_dbg_perf_compute(%struct.hva_ctx* %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %26 = call i32 @format_ctx(%struct.seq_file* %24, %struct.hva_ctx* %25)
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %19
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @hva_dbg_perf_compute(%struct.hva_ctx*) #1

declare dso_local i32 @format_ctx(%struct.seq_file*, %struct.hva_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
