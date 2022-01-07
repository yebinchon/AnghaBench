; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_atmel_isi_wait_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_atmel_isi_wait_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_isi = type { i32 }

@ISI_INTEN = common dso_local global i32 0, align 4
@ISI_CTRL_SRST = common dso_local global i32 0, align 4
@ISI_CTRL = common dso_local global i32 0, align 4
@ISI_CTRL_DIS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_isi*, i32)* @atmel_isi_wait_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_isi_wait_status(%struct.atmel_isi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_isi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.atmel_isi* %0, %struct.atmel_isi** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %8 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %7, i32 0, i32 0
  %9 = call i32 @init_completion(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %14 = load i32, i32* @ISI_INTEN, align 4
  %15 = load i32, i32* @ISI_CTRL_SRST, align 4
  %16 = call i32 @isi_writel(%struct.atmel_isi* %13, i32 %14, i32 %15)
  %17 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %18 = load i32, i32* @ISI_CTRL, align 4
  %19 = load i32, i32* @ISI_CTRL_SRST, align 4
  %20 = call i32 @isi_writel(%struct.atmel_isi* %17, i32 %18, i32 %19)
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %23 = load i32, i32* @ISI_INTEN, align 4
  %24 = load i32, i32* @ISI_CTRL_DIS, align 4
  %25 = call i32 @isi_writel(%struct.atmel_isi* %22, i32 %23, i32 %24)
  %26 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %27 = load i32, i32* @ISI_CTRL, align 4
  %28 = load i32, i32* @ISI_CTRL_DIS, align 4
  %29 = call i32 @isi_writel(%struct.atmel_isi* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %12
  %31 = load %struct.atmel_isi*, %struct.atmel_isi** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %31, i32 0, i32 0
  %33 = call i32 @msecs_to_jiffies(i32 500)
  %34 = call i64 @wait_for_completion_timeout(i32* %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @isi_writel(%struct.atmel_isi*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
