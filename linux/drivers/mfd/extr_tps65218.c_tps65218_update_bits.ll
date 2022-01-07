; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_update_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_update_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65218 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Read from reg 0x%x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Write for reg 0x%x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65218*, i32, i32, i32, i32)* @tps65218_update_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65218_update_bits(%struct.tps65218* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tps65218*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tps65218* %0, %struct.tps65218** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %15 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %13)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %23 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %59

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %13, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %39 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @tps65218_reg_write(%struct.tps65218* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %28
  %49 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %50 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %28
  %55 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %56 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %21
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tps65218_reg_write(%struct.tps65218*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
