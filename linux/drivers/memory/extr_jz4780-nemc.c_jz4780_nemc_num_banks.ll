; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_jz4780-nemc.c_jz4780_nemc_num_banks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_jz4780-nemc.c_jz4780_nemc_num_banks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jz4780_nemc_num_banks(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = call i32* @of_get_address(i32 %11, i32 %12, i32* null, i32* null)
  store i32* %14, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @of_read_number(i32* %17, i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @BIT(i32 %20)
  %22 = and i64 %19, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @BIT(i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %16
  br label %8

32:                                               ; preds = %8
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32* @of_get_address(i32, i32, i32*, i32*) #1

declare dso_local i32 @of_read_number(i32*, i32) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
