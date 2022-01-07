; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_reset_osc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_reset_osc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ALX_MISC3 = common dso_local global i32 0, align 4
@ALX_MISC3_25M_BY_SW = common dso_local global i32 0, align 4
@ALX_MISC3_25M_NOTO_INTNL = common dso_local global i32 0, align 4
@ALX_MISC = common dso_local global i32 0, align 4
@ALX_REV_B0 = common dso_local global i64 0, align 8
@ALX_MISC_PSW_OCP = common dso_local global i32 0, align 4
@ALX_MISC_PSW_OCP_DEF = common dso_local global i32 0, align 4
@ALX_MISC_INTNLOSC_OPEN = common dso_local global i32 0, align 4
@ALX_MSIC2 = common dso_local global i32 0, align 4
@ALX_MSIC2_CALB_START = common dso_local global i32 0, align 4
@ALX_MISC_ISO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_hw*, i64)* @alx_reset_osc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_reset_osc(%struct.alx_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %8 = load i32, i32* @ALX_MISC3, align 4
  %9 = call i32 @alx_read_mem32(%struct.alx_hw* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %11 = load i32, i32* @ALX_MISC3, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ALX_MISC3_25M_BY_SW, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load i32, i32* @ALX_MISC3_25M_NOTO_INTNL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @alx_write_mem32(%struct.alx_hw* %10, i32 %11, i32 %17)
  %19 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %20 = load i32, i32* @ALX_MISC, align 4
  %21 = call i32 @alx_read_mem32(%struct.alx_hw* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @ALX_REV_B0, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ALX_MISC_PSW_OCP, align 4
  %28 = load i32, i32* @ALX_MISC_PSW_OCP_DEF, align 4
  %29 = call i32 @ALX_SET_FIELD(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @ALX_MISC_INTNLOSC_OPEN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %35 = load i32, i32* @ALX_MISC, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @alx_write_mem32(%struct.alx_hw* %34, i32 %35, i32 %36)
  %38 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %39 = load i32, i32* @ALX_MISC, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ALX_MISC_INTNLOSC_OPEN, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @alx_write_mem32(%struct.alx_hw* %38, i32 %39, i32 %42)
  %44 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %45 = load i32, i32* @ALX_MSIC2, align 4
  %46 = call i32 @alx_read_mem32(%struct.alx_hw* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @ALX_MSIC2_CALB_START, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %52 = load i32, i32* @ALX_MSIC2, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @alx_write_mem32(%struct.alx_hw* %51, i32 %52, i32 %53)
  %55 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %56 = load i32, i32* @ALX_MSIC2, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ALX_MSIC2_CALB_START, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @alx_write_mem32(%struct.alx_hw* %55, i32 %56, i32 %59)
  br label %85

61:                                               ; preds = %2
  %62 = load i32, i32* @ALX_MISC_INTNLOSC_OPEN, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @alx_is_rev_a(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load i32, i32* @ALX_MISC_ISO_EN, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %61
  %75 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %76 = load i32, i32* @ALX_MISC, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @ALX_MISC_INTNLOSC_OPEN, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @alx_write_mem32(%struct.alx_hw* %75, i32 %76, i32 %79)
  %81 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %82 = load i32, i32* @ALX_MISC, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @alx_write_mem32(%struct.alx_hw* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %74, %25
  %86 = call i32 @udelay(i32 20)
  ret void
}

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @ALX_SET_FIELD(i32, i32, i32) #1

declare dso_local i64 @alx_is_rev_a(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
