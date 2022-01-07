; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-h264.c_tw5864_h264_gen_sps_rbsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-h264.c_tw5864_h264_gen_sps_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bs = type { i32 }

@MAX_GOP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32)* @tw5864_h264_gen_sps_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_h264_gen_sps_rbsp(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bs, align 4
  %10 = alloca %struct.bs*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.bs* %9, %struct.bs** %10, align 8
  %11 = load %struct.bs*, %struct.bs** %10, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @bs_init(%struct.bs* %11, i32* %12, i64 %13)
  %15 = load %struct.bs*, %struct.bs** %10, align 8
  %16 = call i32 @bs_write(%struct.bs* %15, i32 8, i32 66)
  %17 = load %struct.bs*, %struct.bs** %10, align 8
  %18 = call i32 @bs_write(%struct.bs* %17, i32 1, i32 1)
  %19 = load %struct.bs*, %struct.bs** %10, align 8
  %20 = call i32 @bs_write(%struct.bs* %19, i32 1, i32 1)
  %21 = load %struct.bs*, %struct.bs** %10, align 8
  %22 = call i32 @bs_write(%struct.bs* %21, i32 1, i32 0)
  %23 = load %struct.bs*, %struct.bs** %10, align 8
  %24 = call i32 @bs_write(%struct.bs* %23, i32 5, i32 0)
  %25 = load %struct.bs*, %struct.bs** %10, align 8
  %26 = call i32 @bs_write(%struct.bs* %25, i32 8, i32 30)
  %27 = load %struct.bs*, %struct.bs** %10, align 8
  %28 = call i32 @bs_write_ue(%struct.bs* %27, i32 0)
  %29 = load %struct.bs*, %struct.bs** %10, align 8
  %30 = load i32, i32* @MAX_GOP_SIZE, align 4
  %31 = call i32 @ilog2(i32 %30)
  %32 = sub nsw i32 %31, 4
  %33 = call i32 @bs_write_ue(%struct.bs* %29, i32 %32)
  %34 = load %struct.bs*, %struct.bs** %10, align 8
  %35 = call i32 @bs_write_ue(%struct.bs* %34, i32 0)
  %36 = load %struct.bs*, %struct.bs** %10, align 8
  %37 = load i32, i32* @MAX_GOP_SIZE, align 4
  %38 = call i32 @ilog2(i32 %37)
  %39 = sub nsw i32 %38, 4
  %40 = call i32 @bs_write_ue(%struct.bs* %36, i32 %39)
  %41 = load %struct.bs*, %struct.bs** %10, align 8
  %42 = call i32 @bs_write_ue(%struct.bs* %41, i32 1)
  %43 = load %struct.bs*, %struct.bs** %10, align 8
  %44 = call i32 @bs_write(%struct.bs* %43, i32 1, i32 0)
  %45 = load %struct.bs*, %struct.bs** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %46, 16
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @bs_write_ue(%struct.bs* %45, i32 %48)
  %50 = load %struct.bs*, %struct.bs** %10, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sdiv i32 %51, 16
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @bs_write_ue(%struct.bs* %50, i32 %53)
  %55 = load %struct.bs*, %struct.bs** %10, align 8
  %56 = call i32 @bs_write(%struct.bs* %55, i32 1, i32 1)
  %57 = load %struct.bs*, %struct.bs** %10, align 8
  %58 = call i32 @bs_write(%struct.bs* %57, i32 1, i32 0)
  %59 = load %struct.bs*, %struct.bs** %10, align 8
  %60 = call i32 @bs_write(%struct.bs* %59, i32 1, i32 0)
  %61 = load %struct.bs*, %struct.bs** %10, align 8
  %62 = call i32 @bs_write(%struct.bs* %61, i32 1, i32 0)
  %63 = load %struct.bs*, %struct.bs** %10, align 8
  %64 = call i32 @bs_rbsp_trailing(%struct.bs* %63)
  %65 = load %struct.bs*, %struct.bs** %10, align 8
  %66 = call i32 @bs_len(%struct.bs* %65)
  ret i32 %66
}

declare dso_local i32 @bs_init(%struct.bs*, i32*, i64) #1

declare dso_local i32 @bs_write(%struct.bs*, i32, i32) #1

declare dso_local i32 @bs_write_ue(%struct.bs*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @bs_rbsp_trailing(%struct.bs*) #1

declare dso_local i32 @bs_len(%struct.bs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
