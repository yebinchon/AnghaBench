; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_internal_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_internal_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@LMAC_MODE_SGMII = common dso_local global i64 0, align 8
@LMAC_MODE_QSGMII = common dso_local global i64 0, align 8
@CGXX_GMP_PCS_MRX_CTL = common dso_local global i32 0, align 4
@CGXX_GMP_PCS_MRX_CTL_LBK = common dso_local global i32 0, align 4
@CGXX_SPUX_CONTROL1 = common dso_local global i32 0, align 4
@CGXX_SPUX_CONTROL1_LBK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgx_lmac_internal_loopback(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.cgx*
  store %struct.cgx* %12, %struct.cgx** %8, align 8
  %13 = load %struct.cgx*, %struct.cgx** %8, align 8
  %14 = icmp ne %struct.cgx* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.cgx*, %struct.cgx** %8, align 8
  %18 = getelementptr inbounds %struct.cgx, %struct.cgx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %80

24:                                               ; preds = %15
  %25 = load %struct.cgx*, %struct.cgx** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @cgx_get_lmac_type(%struct.cgx* %25, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @LMAC_MODE_SGMII, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @LMAC_MODE_QSGMII, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31, %24
  %36 = load %struct.cgx*, %struct.cgx** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @CGXX_GMP_PCS_MRX_CTL, align 4
  %39 = call i32 @cgx_read(%struct.cgx* %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @CGXX_GMP_PCS_MRX_CTL_LBK, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %51

46:                                               ; preds = %35
  %47 = load i32, i32* @CGXX_GMP_PCS_MRX_CTL_LBK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.cgx*, %struct.cgx** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @CGXX_GMP_PCS_MRX_CTL, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @cgx_write(%struct.cgx* %52, i32 %53, i32 %54, i32 %55)
  br label %79

57:                                               ; preds = %31
  %58 = load %struct.cgx*, %struct.cgx** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @CGXX_SPUX_CONTROL1, align 4
  %61 = call i32 @cgx_read(%struct.cgx* %58, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @CGXX_SPUX_CONTROL1_LBK, align 4
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @CGXX_SPUX_CONTROL1_LBK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.cgx*, %struct.cgx** %8, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @CGXX_SPUX_CONTROL1, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @cgx_write(%struct.cgx* %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %51
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %21
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @cgx_get_lmac_type(%struct.cgx*, i32) #1

declare dso_local i32 @cgx_read(%struct.cgx*, i32, i32) #1

declare dso_local i32 @cgx_write(%struct.cgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
