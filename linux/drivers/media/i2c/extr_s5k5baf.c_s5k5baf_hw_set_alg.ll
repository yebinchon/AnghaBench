; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32, i32, i64 }

@REG_DBG_AUTOALG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*, i32, i32)* @s5k5baf_hw_set_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_set_alg(%struct.s5k5baf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s5k5baf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %10 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %15 = load i32, i32* @REG_DBG_AUTOALG_EN, align 4
  %16 = call i32 @s5k5baf_read(%struct.s5k5baf* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %19 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %25, %26
  br label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ %27, %24 ], [ %32, %28 ]
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %40 = load i32, i32* @REG_DBG_AUTOALG_EN, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @s5k5baf_write(%struct.s5k5baf* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %45 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %55

49:                                               ; preds = %43
  %50 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %51 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %54 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @s5k5baf_read(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_write(%struct.s5k5baf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
