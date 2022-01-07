; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_set_ioaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_set_ioaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32 }

@CR_CIR_BASE_ADDR_HI = common dso_local global i32 0, align 4
@CR_CIR_BASE_ADDR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*, i64*)* @nvt_set_ioaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_set_ioaddr(%struct.nvt_dev* %0, i64* %1) #0 {
  %3 = alloca %struct.nvt_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.nvt_dev* %0, %struct.nvt_dev** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %7 = load i32, i32* @CR_CIR_BASE_ADDR_HI, align 4
  %8 = call i64 @nvt_cr_read(%struct.nvt_dev* %6, i32 %7)
  %9 = shl i64 %8, 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %11 = load i32, i32* @CR_CIR_BASE_ADDR_LO, align 4
  %12 = call i64 @nvt_cr_read(%struct.nvt_dev* %10, i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64*, i64** %4, align 8
  store i64 %18, i64* %19, align 8
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = lshr i64 %23, 8
  %25 = load i32, i32* @CR_CIR_BASE_ADDR_HI, align 4
  %26 = call i32 @nvt_cr_write(%struct.nvt_dev* %21, i64 %24, i32 %25)
  %27 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %29, 255
  %31 = load i32, i32* @CR_CIR_BASE_ADDR_LO, align 4
  %32 = call i32 @nvt_cr_write(%struct.nvt_dev* %27, i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %20, %17
  ret void
}

declare dso_local i64 @nvt_cr_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_cr_write(%struct.nvt_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
