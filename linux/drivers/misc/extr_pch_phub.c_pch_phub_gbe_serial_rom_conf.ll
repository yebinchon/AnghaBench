; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_gbe_serial_rom_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_gbe_serial_rom_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_phub_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_phub_reg*)* @pch_phub_gbe_serial_rom_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_phub_gbe_serial_rom_conf(%struct.pch_phub_reg* %0) #0 {
  %2 = alloca %struct.pch_phub_reg*, align 8
  %3 = alloca i32, align 4
  store %struct.pch_phub_reg* %0, %struct.pch_phub_reg** %2, align 8
  %4 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %5 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %4, i32 11, i32 188)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %7 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %6, i32 10, i32 16)
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %11 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %10, i32 9, i32 1)
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %15 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %14, i32 8, i32 2)
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %19 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %18, i32 15, i32 0)
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %23 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %22, i32 14, i32 0)
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %27 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %26, i32 13, i32 0)
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %31 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %30, i32 12, i32 128)
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %35 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %34, i32 19, i32 188)
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %39 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %38, i32 18, i32 16)
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %43 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %42, i32 17, i32 1)
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %47 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %46, i32 16, i32 24)
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %51 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %50, i32 27, i32 188)
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %55 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %54, i32 26, i32 16)
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %59 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %58, i32 25, i32 1)
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %63 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %62, i32 24, i32 25)
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %67 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %66, i32 35, i32 188)
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %71 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %70, i32 34, i32 16)
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  %74 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %75 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %74, i32 33, i32 1)
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %79 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %78, i32 32, i32 58)
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %83 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %82, i32 39, i32 1)
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %87 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %86, i32 38, i32 0)
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  %90 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %91 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %90, i32 37, i32 0)
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  %94 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %95 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %94, i32 36, i32 0)
  %96 = load i32, i32* %3, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
