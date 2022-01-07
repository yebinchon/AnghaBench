; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_add_va_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_add_va_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_va_range = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_va_range*, i32, i32)* @add_va_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_va_block(%struct.hl_device* %0, %struct.hl_va_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_va_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_va_range* %1, %struct.hl_va_range** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hl_va_range*, %struct.hl_va_range** %6, align 8
  %11 = getelementptr inbounds %struct.hl_va_range, %struct.hl_va_range* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %14 = load %struct.hl_va_range*, %struct.hl_va_range** %6, align 8
  %15 = getelementptr inbounds %struct.hl_va_range, %struct.hl_va_range* %14, i32 0, i32 1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @add_va_block_locked(%struct.hl_device* %13, i32* %15, i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.hl_va_range*, %struct.hl_va_range** %6, align 8
  %20 = getelementptr inbounds %struct.hl_va_range, %struct.hl_va_range* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %9, align 4
  ret i32 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @add_va_block_locked(%struct.hl_device*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
