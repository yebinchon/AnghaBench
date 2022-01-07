; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_doirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_doirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32** }
%struct.TYPE_4__ = type { i32* }

@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@MAX_KCQ_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_doirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_doirq(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %5 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %5, i32 0, i32 1
  %7 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  store %struct.cnic_local* %7, %struct.cnic_local** %3, align 8
  %8 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 0
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_KCQ_IDX, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %22 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @prefetch(i32* %24)
  %26 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %27 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @KCQ_PG(i32 %30)
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @KCQ_IDX(i32 %34)
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @prefetch(i32* %36)
  %38 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %39 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %38, i32 0, i32 0
  %40 = call i32 @tasklet_schedule(i32* %39)
  br label %41

41:                                               ; preds = %14, %1
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i64 @KCQ_PG(i32) #1

declare dso_local i64 @KCQ_IDX(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
