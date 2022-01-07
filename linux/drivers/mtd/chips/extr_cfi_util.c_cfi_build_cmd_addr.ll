; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_build_cmd_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_build_cmd_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.cfi_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfi_build_cmd_addr(i32 %0, %struct.map_info* %1, %struct.cfi_private* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.cfi_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.map_info* %1, %struct.map_info** %5, align 8
  store %struct.cfi_private* %2, %struct.cfi_private** %6, align 8
  %11 = load %struct.map_info*, %struct.map_info** %5, align 8
  %12 = call i32 @map_bankwidth(%struct.map_info* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %14 = call i32 @cfi_interleave(%struct.cfi_private* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %16 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %9, align 4
  %20 = mul i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = mul i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 170
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = lshr i32 %33, 1
  %35 = load i32, i32* %8, align 4
  %36 = mul i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %32, %28, %3
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local i32 @map_bankwidth(%struct.map_info*) #1

declare dso_local i32 @cfi_interleave(%struct.cfi_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
