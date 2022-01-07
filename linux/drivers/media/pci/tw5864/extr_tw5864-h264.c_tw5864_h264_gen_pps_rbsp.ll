; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-h264.c_tw5864_h264_gen_pps_rbsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-h264.c_tw5864_h264_gen_pps_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @tw5864_h264_gen_pps_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_h264_gen_pps_rbsp(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bs, align 4
  %8 = alloca %struct.bs*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.bs* %7, %struct.bs** %8, align 8
  %9 = load %struct.bs*, %struct.bs** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @bs_init(%struct.bs* %9, i32* %10, i64 %11)
  %13 = load %struct.bs*, %struct.bs** %8, align 8
  %14 = call i32 @bs_write_ue(%struct.bs* %13, i32 0)
  %15 = load %struct.bs*, %struct.bs** %8, align 8
  %16 = call i32 @bs_write_ue(%struct.bs* %15, i32 0)
  %17 = load %struct.bs*, %struct.bs** %8, align 8
  %18 = call i32 @bs_write(%struct.bs* %17, i32 1, i32 0)
  %19 = load %struct.bs*, %struct.bs** %8, align 8
  %20 = call i32 @bs_write(%struct.bs* %19, i32 1, i32 0)
  %21 = load %struct.bs*, %struct.bs** %8, align 8
  %22 = call i32 @bs_write_ue(%struct.bs* %21, i32 0)
  %23 = load %struct.bs*, %struct.bs** %8, align 8
  %24 = call i32 @bs_write_ue(%struct.bs* %23, i32 0)
  %25 = load %struct.bs*, %struct.bs** %8, align 8
  %26 = call i32 @bs_write_ue(%struct.bs* %25, i32 0)
  %27 = load %struct.bs*, %struct.bs** %8, align 8
  %28 = call i32 @bs_write(%struct.bs* %27, i32 1, i32 0)
  %29 = load %struct.bs*, %struct.bs** %8, align 8
  %30 = call i32 @bs_write(%struct.bs* %29, i32 2, i32 0)
  %31 = load %struct.bs*, %struct.bs** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 26
  %34 = call i32 @bs_write_se(%struct.bs* %31, i32 %33)
  %35 = load %struct.bs*, %struct.bs** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 26
  %38 = call i32 @bs_write_se(%struct.bs* %35, i32 %37)
  %39 = load %struct.bs*, %struct.bs** %8, align 8
  %40 = call i32 @bs_write_se(%struct.bs* %39, i32 0)
  %41 = load %struct.bs*, %struct.bs** %8, align 8
  %42 = call i32 @bs_write(%struct.bs* %41, i32 1, i32 0)
  %43 = load %struct.bs*, %struct.bs** %8, align 8
  %44 = call i32 @bs_write(%struct.bs* %43, i32 1, i32 0)
  %45 = load %struct.bs*, %struct.bs** %8, align 8
  %46 = call i32 @bs_write(%struct.bs* %45, i32 1, i32 0)
  %47 = load %struct.bs*, %struct.bs** %8, align 8
  %48 = call i32 @bs_rbsp_trailing(%struct.bs* %47)
  %49 = load %struct.bs*, %struct.bs** %8, align 8
  %50 = call i32 @bs_len(%struct.bs* %49)
  ret i32 %50
}

declare dso_local i32 @bs_init(%struct.bs*, i32*, i64) #1

declare dso_local i32 @bs_write_ue(%struct.bs*, i32) #1

declare dso_local i32 @bs_write(%struct.bs*, i32, i32) #1

declare dso_local i32 @bs_write_se(%struct.bs*, i32) #1

declare dso_local i32 @bs_rbsp_trailing(%struct.bs*) #1

declare dso_local i32 @bs_len(%struct.bs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
