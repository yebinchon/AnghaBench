; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_internal_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_internal_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.lmac* }
%struct.lmac = type { i64 }

@BGX_GMP_PCS_MRX_CTL = common dso_local global i32 0, align 4
@PCS_MRX_CTL_LOOPBACK1 = common dso_local global i32 0, align 4
@BGX_SPUX_CONTROL1 = common dso_local global i32 0, align 4
@SPU_CTL_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgx_lmac_internal_loopback(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bgx*, align 8
  %10 = alloca %struct.lmac*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.bgx* @get_bgx(i32 %12, i32 %13)
  store %struct.bgx* %14, %struct.bgx** %9, align 8
  %15 = load %struct.bgx*, %struct.bgx** %9, align 8
  %16 = icmp ne %struct.bgx* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %73

18:                                               ; preds = %4
  %19 = load %struct.bgx*, %struct.bgx** %9, align 8
  %20 = getelementptr inbounds %struct.bgx, %struct.bgx* %19, i32 0, i32 0
  %21 = load %struct.lmac*, %struct.lmac** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.lmac, %struct.lmac* %21, i64 %23
  store %struct.lmac* %24, %struct.lmac** %10, align 8
  %25 = load %struct.lmac*, %struct.lmac** %10, align 8
  %26 = getelementptr inbounds %struct.lmac, %struct.lmac* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %18
  %30 = load %struct.bgx*, %struct.bgx** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %33 = call i32 @bgx_reg_read(%struct.bgx* %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @PCS_MRX_CTL_LOOPBACK1, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %45

40:                                               ; preds = %29
  %41 = load i32, i32* @PCS_MRX_CTL_LOOPBACK1, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.bgx*, %struct.bgx** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @bgx_reg_write(%struct.bgx* %46, i32 %47, i32 %48, i32 %49)
  br label %73

51:                                               ; preds = %18
  %52 = load %struct.bgx*, %struct.bgx** %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %55 = call i32 @bgx_reg_read(%struct.bgx* %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @SPU_CTL_LOOPBACK, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %67

62:                                               ; preds = %51
  %63 = load i32, i32* @SPU_CTL_LOOPBACK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.bgx*, %struct.bgx** %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @bgx_reg_write(%struct.bgx* %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %17, %67, %45
  ret void
}

declare dso_local %struct.bgx* @get_bgx(i32, i32) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
