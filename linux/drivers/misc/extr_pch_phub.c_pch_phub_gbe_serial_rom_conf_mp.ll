; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_gbe_serial_rom_conf_mp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_gbe_serial_rom_conf_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_phub_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_phub_reg*)* @pch_phub_gbe_serial_rom_conf_mp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_phub_gbe_serial_rom_conf_mp(%struct.pch_phub_reg* %0) #0 {
  %2 = alloca %struct.pch_phub_reg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pch_phub_reg* %0, %struct.pch_phub_reg** %2, align 8
  store i32 512, i32* %4, align 4
  %5 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 3, %6
  %8 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %5, i32 %7, i32 188)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 2, %10
  %12 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %9, i32 %11, i32 0)
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 1, %16
  %18 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %15, i32 %17, i32 64)
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 0, %22
  %24 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %21, i32 %23, i32 2)
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 7, %28
  %30 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %27, i32 %29, i32 0)
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 6, %34
  %36 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %33, i32 %35, i32 0)
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 5, %40
  %42 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %39, i32 %41, i32 0)
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 4, %46
  %48 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %45, i32 %47, i32 128)
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 11, %52
  %54 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %51, i32 %53, i32 188)
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 10, %58
  %60 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %57, i32 %59, i32 0)
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 9, %64
  %66 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %63, i32 %65, i32 64)
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 8, %70
  %72 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %69, i32 %71, i32 24)
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 19, %76
  %78 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %75, i32 %77, i32 188)
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 18, %82
  %84 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %81, i32 %83, i32 0)
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 17, %88
  %90 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %87, i32 %89, i32 64)
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  %93 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 16, %94
  %96 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %93, i32 %95, i32 25)
  %97 = load i32, i32* %3, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %3, align 4
  %99 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 27, %100
  %102 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %99, i32 %101, i32 188)
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 26, %106
  %108 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %105, i32 %107, i32 0)
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  %111 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 25, %112
  %114 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %111, i32 %113, i32 64)
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  %117 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 24, %118
  %120 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %117, i32 %119, i32 58)
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %3, align 4
  %123 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 31, %124
  %126 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %123, i32 %125, i32 1)
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 30, %130
  %132 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %129, i32 %131, i32 0)
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 29, %136
  %138 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %135, i32 %137, i32 0)
  %139 = load i32, i32* %3, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %3, align 4
  %141 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %2, align 8
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 28, %142
  %144 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %141, i32 %143, i32 0)
  %145 = load i32, i32* %3, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
