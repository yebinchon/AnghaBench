; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_send_gen_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_send_gen_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.cfi_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cfi_send_gen_cmd(i32 %0, i64 %1, i64 %2, %struct.map_info* %3, %struct.cfi_private* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.map_info*, align 8
  %12 = alloca %struct.cfi_private*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.map_info* %3, %struct.map_info** %11, align 8
  store %struct.cfi_private* %4, %struct.cfi_private** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.map_info*, %struct.map_info** %11, align 8
  %20 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %21 = call i64 @cfi_build_cmd_addr(i64 %18, %struct.map_info* %19, %struct.cfi_private* %20)
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %16, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.map_info*, %struct.map_info** %11, align 8
  %25 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %26 = call i32 @cfi_build_cmd(i32 %23, %struct.map_info* %24, %struct.cfi_private* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load %struct.map_info*, %struct.map_info** %11, align 8
  %31 = load i64, i64* %16, align 8
  %32 = call i32 @map_read(%struct.map_info* %30, i64 %31)
  %33 = load i32*, i32** %14, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %7
  %35 = load %struct.map_info*, %struct.map_info** %11, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i64, i64* %16, align 8
  %38 = call i32 @map_write(%struct.map_info* %35, i32 %36, i64 %37)
  %39 = load i64, i64* %16, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 %39, %40
  ret i64 %41
}

declare dso_local i64 @cfi_build_cmd_addr(i64, %struct.map_info*, %struct.cfi_private*) #1

declare dso_local i32 @cfi_build_cmd(i32, %struct.map_info*, %struct.cfi_private*) #1

declare dso_local i32 @map_read(%struct.map_info*, i64) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
