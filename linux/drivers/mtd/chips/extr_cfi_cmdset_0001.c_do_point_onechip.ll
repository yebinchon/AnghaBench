; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_do_point_onechip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_do_point_onechip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32 }
%struct.flchip = type { i64, i32, i32, i64 }

@FL_POINT = common dso_local global i64 0, align 8
@FL_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i32, i64)* @do_point_onechip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_point_onechip(%struct.map_info* %0, %struct.flchip* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.flchip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cfi_private*, align 8
  %11 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store %struct.flchip* %1, %struct.flchip** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.map_info*, %struct.map_info** %5, align 8
  %13 = getelementptr inbounds %struct.map_info, %struct.map_info* %12, i32 0, i32 0
  %14 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  store %struct.cfi_private* %14, %struct.cfi_private** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.flchip*, %struct.flchip** %6, align 8
  %16 = getelementptr inbounds %struct.flchip, %struct.flchip* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.map_info*, %struct.map_info** %5, align 8
  %24 = call i32 @map_bankwidth(%struct.map_info* %23)
  %25 = sub nsw i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load %struct.flchip*, %struct.flchip** %6, align 8
  %30 = getelementptr inbounds %struct.flchip, %struct.flchip* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.map_info*, %struct.map_info** %5, align 8
  %33 = load %struct.flchip*, %struct.flchip** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @FL_POINT, align 8
  %36 = call i32 @get_chip(%struct.map_info* %32, %struct.flchip* %33, i64 %34, i64 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %4
  %40 = load %struct.flchip*, %struct.flchip** %6, align 8
  %41 = getelementptr inbounds %struct.flchip, %struct.flchip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FL_POINT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.flchip*, %struct.flchip** %6, align 8
  %47 = getelementptr inbounds %struct.flchip, %struct.flchip* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FL_READY, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.map_info*, %struct.map_info** %5, align 8
  %53 = call i32 @CMD(i32 255)
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @map_write(%struct.map_info* %52, i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %45, %39
  %57 = load i64, i64* @FL_POINT, align 8
  %58 = load %struct.flchip*, %struct.flchip** %6, align 8
  %59 = getelementptr inbounds %struct.flchip, %struct.flchip* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.flchip*, %struct.flchip** %6, align 8
  %61 = getelementptr inbounds %struct.flchip, %struct.flchip* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %56, %4
  %65 = load %struct.flchip*, %struct.flchip** %6, align 8
  %66 = getelementptr inbounds %struct.flchip, %struct.flchip* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @map_bankwidth(%struct.map_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_chip(%struct.map_info*, %struct.flchip*, i64, i64) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i64) #1

declare dso_local i32 @CMD(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
