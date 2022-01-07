; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_gen_probe.c_genprobe_new_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_gen_probe.c_genprobe_new_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.chip_probe = type { i64 (%struct.map_info*, i32, i32*, %struct.cfi_private*)* }
%struct.cfi_private = type opaque
%struct.cfi_private.0 = type { i32, i32 }

@CFI_DEVICETYPE_X32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.chip_probe*, %struct.cfi_private.0*)* @genprobe_new_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genprobe_new_chip(%struct.map_info* %0, %struct.chip_probe* %1, %struct.cfi_private.0* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.chip_probe*, align 8
  %7 = alloca %struct.cfi_private.0*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store %struct.chip_probe* %1, %struct.chip_probe** %6, align 8
  store %struct.cfi_private.0* %2, %struct.cfi_private.0** %7, align 8
  %12 = load %struct.map_info*, %struct.map_info** %5, align 8
  %13 = call i32 @map_bankwidth(%struct.map_info* %12)
  %14 = sdiv i32 %13, 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %16
  %19 = phi i32 [ %14, %16 ], [ 1, %17 ]
  store i32 %19, i32* %8, align 4
  %20 = load %struct.map_info*, %struct.map_info** %5, align 8
  %21 = call i32 @map_bankwidth(%struct.map_info* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %62, %18
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @cfi_interleave_supported(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %62

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.cfi_private.0*, %struct.cfi_private.0** %7, align 8
  %35 = getelementptr inbounds %struct.cfi_private.0, %struct.cfi_private.0* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.map_info*, %struct.map_info** %5, align 8
  %37 = call i32 @map_bankwidth(%struct.map_info* %36)
  %38 = load i32, i32* %10, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %58, %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @CFI_DEVICETYPE_X32, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.cfi_private.0*, %struct.cfi_private.0** %7, align 8
  %47 = getelementptr inbounds %struct.cfi_private.0, %struct.cfi_private.0* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.chip_probe*, %struct.chip_probe** %6, align 8
  %49 = getelementptr inbounds %struct.chip_probe, %struct.chip_probe* %48, i32 0, i32 0
  %50 = load i64 (%struct.map_info*, i32, i32*, %struct.cfi_private*)*, i64 (%struct.map_info*, i32, i32*, %struct.cfi_private*)** %49, align 8
  %51 = load %struct.map_info*, %struct.map_info** %5, align 8
  %52 = load %struct.cfi_private.0*, %struct.cfi_private.0** %7, align 8
  %53 = bitcast %struct.cfi_private.0* %52 to %struct.cfi_private*
  %54 = call i64 %50(%struct.map_info* %51, i32 0, i32* null, %struct.cfi_private* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %66

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %40

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %23

65:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @map_bankwidth(%struct.map_info*) #1

declare dso_local i32 @cfi_interleave_supported(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
