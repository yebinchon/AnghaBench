; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_nvram_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_nvram_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i64 }

@NVRAM = common dso_local global i32 0, align 4
@NVRAM_SWARB = common dso_local global i32 0, align 4
@SWARB_REQ_SET1 = common dso_local global i32 0, align 4
@SWARB_GNT1 = common dso_local global i32 0, align 4
@SWARB_REQ_CLR1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_nvram_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_nvram_lock(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %5 = load %struct.tg3*, %struct.tg3** %3, align 8
  %6 = load i32, i32* @NVRAM, align 4
  %7 = call i64 @tg3_flag(%struct.tg3* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load %struct.tg3*, %struct.tg3** %3, align 8
  %11 = getelementptr inbounds %struct.tg3, %struct.tg3* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = load i32, i32* @NVRAM_SWARB, align 4
  %16 = load i32, i32* @SWARB_REQ_SET1, align 4
  %17 = call i32 @tw32(i32 %15, i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %30, %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 8000
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* @NVRAM_SWARB, align 4
  %23 = call i32 @tr32(i32 %22)
  %24 = load i32, i32* @SWARB_GNT1, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %33

28:                                               ; preds = %21
  %29 = call i32 @udelay(i32 20)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %18

33:                                               ; preds = %27, %18
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 8000
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* @NVRAM_SWARB, align 4
  %38 = load i32, i32* @SWARB_REQ_CLR1, align 4
  %39 = call i32 @tw32(i32 %37, i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %49

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %9
  %44 = load %struct.tg3*, %struct.tg3** %3, align 8
  %45 = getelementptr inbounds %struct.tg3, %struct.tg3* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %43, %1
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
