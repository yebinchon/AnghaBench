; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_otp_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_otp_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32 }
%struct.flchip = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, %struct.flchip*, i64, i64)* @otp_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otp_enter(%struct.map_info* %0, %struct.flchip* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.flchip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cfi_private*, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store %struct.flchip* %1, %struct.flchip** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.map_info*, %struct.map_info** %5, align 8
  %11 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 0
  %12 = load %struct.cfi_private*, %struct.cfi_private** %11, align 8
  store %struct.cfi_private* %12, %struct.cfi_private** %9, align 8
  %13 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %14 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.flchip*, %struct.flchip** %6, align 8
  %17 = getelementptr inbounds %struct.flchip, %struct.flchip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.map_info*, %struct.map_info** %5, align 8
  %20 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %21 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %22 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cfi_send_gen_cmd(i32 170, i32 %15, i64 %18, %struct.map_info* %19, %struct.cfi_private* %20, i32 %23, i32* null)
  %25 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %26 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.flchip*, %struct.flchip** %6, align 8
  %29 = getelementptr inbounds %struct.flchip, %struct.flchip* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.map_info*, %struct.map_info** %5, align 8
  %32 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %33 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %34 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cfi_send_gen_cmd(i32 85, i32 %27, i64 %30, %struct.map_info* %31, %struct.cfi_private* %32, i32 %35, i32* null)
  %37 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %38 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.flchip*, %struct.flchip** %6, align 8
  %41 = getelementptr inbounds %struct.flchip, %struct.flchip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.map_info*, %struct.map_info** %5, align 8
  %44 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %45 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %46 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cfi_send_gen_cmd(i32 136, i32 %39, i64 %42, %struct.map_info* %43, %struct.cfi_private* %44, i32 %47, i32* null)
  %49 = load %struct.map_info*, %struct.map_info** %5, align 8
  %50 = load %struct.flchip*, %struct.flchip** %6, align 8
  %51 = getelementptr inbounds %struct.flchip, %struct.flchip* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @INVALIDATE_CACHED_RANGE(%struct.map_info* %49, i64 %54, i64 %55)
  ret void
}

declare dso_local i32 @cfi_send_gen_cmd(i32, i32, i64, %struct.map_info*, %struct.cfi_private*, i32, i32*) #1

declare dso_local i32 @INVALIDATE_CACHED_RANGE(%struct.map_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
