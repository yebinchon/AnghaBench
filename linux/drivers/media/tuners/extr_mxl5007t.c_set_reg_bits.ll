; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_set_reg_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_set_reg_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_pair_t = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reg_pair_t*, i64, i64, i64)* @set_reg_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reg_bits(%struct.reg_pair_t* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.reg_pair_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.reg_pair_t* %0, %struct.reg_pair_t** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %55, %4
  %11 = load %struct.reg_pair_t*, %struct.reg_pair_t** %5, align 8
  %12 = load i32, i32* %9, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %11, i64 %13
  %15 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load %struct.reg_pair_t*, %struct.reg_pair_t** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %19, i64 %21
  %23 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi i1 [ true, %10 ], [ %25, %18 ]
  br i1 %27, label %28, label %58

28:                                               ; preds = %26
  %29 = load %struct.reg_pair_t*, %struct.reg_pair_t** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %29, i64 %31
  %33 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %28
  %38 = load i64, i64* %7, align 8
  %39 = xor i64 %38, -1
  %40 = load %struct.reg_pair_t*, %struct.reg_pair_t** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %40, i64 %42
  %44 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, %39
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.reg_pair_t*, %struct.reg_pair_t** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %48, i64 %50
  %52 = getelementptr inbounds %struct.reg_pair_t, %struct.reg_pair_t* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = or i64 %53, %47
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %37, %28
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %10

58:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
