; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_ape_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_ape_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@ENABLE_APE = common dso_local global i32 0, align 4
@ASIC_REV_5761 = common dso_local global i64 0, align 8
@APE_LOCK_GRANT_DRIVER = common dso_local global i32 0, align 4
@TG3_APE_LOCK_GRANT = common dso_local global i32 0, align 4
@TG3_APE_PER_LOCK_GRANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_ape_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_ape_unlock(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = load i32, i32* @ENABLE_APE, align 4
  %9 = call i32 @tg3_flag(%struct.tg3* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %54

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %36 [
    i32 134, label %14
    i32 133, label %21
    i32 132, label %21
    i32 131, label %34
    i32 130, label %34
    i32 129, label %34
    i32 128, label %34
  ]

14:                                               ; preds = %12
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = call i64 @tg3_asic_rev(%struct.tg3* %15)
  %17 = load i64, i64* @ASIC_REV_5761, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %54

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %12, %12, %20
  %22 = load %struct.tg3*, %struct.tg3** %3, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @APE_LOCK_GRANT_DRIVER, align 4
  store i32 %27, i32* %6, align 4
  br label %33

28:                                               ; preds = %21
  %29 = load %struct.tg3*, %struct.tg3** %3, align 8
  %30 = getelementptr inbounds %struct.tg3, %struct.tg3* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %26
  br label %37

34:                                               ; preds = %12, %12, %12, %12
  %35 = load i32, i32* @APE_LOCK_GRANT_DRIVER, align 4
  store i32 %35, i32* %6, align 4
  br label %37

36:                                               ; preds = %12
  br label %54

37:                                               ; preds = %34, %33
  %38 = load %struct.tg3*, %struct.tg3** %3, align 8
  %39 = call i64 @tg3_asic_rev(%struct.tg3* %38)
  %40 = load i64, i64* @ASIC_REV_5761, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @TG3_APE_LOCK_GRANT, align 4
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @TG3_APE_PER_LOCK_GRANT, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct.tg3*, %struct.tg3** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 4, %49
  %51 = add nsw i32 %48, %50
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @tg3_ape_write32(%struct.tg3* %47, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %36, %19, %11
  ret void
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_ape_write32(%struct.tg3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
