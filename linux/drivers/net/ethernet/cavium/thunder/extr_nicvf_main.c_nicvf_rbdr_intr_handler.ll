; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_rbdr_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_rbdr_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NICVF_INTR_RBDR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nicvf_rbdr_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_rbdr_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.nicvf*
  store %struct.nicvf* %8, %struct.nicvf** %5, align 8
  %9 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %10 = call i32 @nicvf_dump_intr_status(%struct.nicvf* %9)
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %14 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %12, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %21 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @nicvf_is_intr_enabled(%struct.nicvf* %20, i32 %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %28 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @nicvf_disable_intr(%struct.nicvf* %27, i32 %28, i64 %29)
  %31 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %32 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %31, i32 0, i32 0
  %33 = call i32 @tasklet_hi_schedule(i32* %32)
  %34 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %35 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @nicvf_clear_intr(%struct.nicvf* %34, i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %26, %25
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %11

41:                                               ; preds = %11
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local i32 @nicvf_dump_intr_status(%struct.nicvf*) #1

declare dso_local i32 @nicvf_is_intr_enabled(%struct.nicvf*, i32, i64) #1

declare dso_local i32 @nicvf_disable_intr(%struct.nicvf*, i32, i64) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @nicvf_clear_intr(%struct.nicvf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
