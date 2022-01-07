; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_tbs_card_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_tbs_card_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@tbs_card_init.buf = internal constant [9 x i32] [i32 224, i32 6, i32 102, i32 51, i32 101, i32 1, i32 23, i32 6, i32 222], align 16
@GP0_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx23885_dev*)* @tbs_card_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbs_card_init(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %4 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %41 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @GP0_IO, align 4
  %9 = call i32 @cx_set(i32 %8, i32 458759)
  %10 = call i32 @usleep_range(i32 1000, i32 10000)
  %11 = load i32, i32* @GP0_IO, align 4
  %12 = call i32 @cx_clear(i32 %11, i32 2)
  %13 = call i32 @usleep_range(i32 1000, i32 10000)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %35, %7
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 72
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i32, i32* @GP0_IO, align 4
  %19 = call i32 @cx_clear(i32 %18, i32 7)
  %20 = call i32 @usleep_range(i32 1000, i32 10000)
  %21 = load i32, i32* @GP0_IO, align 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* @tbs_card_init.buf, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 7
  %29 = sub nsw i32 7, %28
  %30 = ashr i32 %26, %29
  %31 = and i32 %30, 1
  %32 = or i32 %31, 4
  %33 = call i32 @cx_set(i32 %21, i32 %32)
  %34 = call i32 @usleep_range(i32 1000, i32 10000)
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* @GP0_IO, align 4
  %40 = call i32 @cx_set(i32 %39, i32 7)
  br label %41

41:                                               ; preds = %1, %38
  ret void
}

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
