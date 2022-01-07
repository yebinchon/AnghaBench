; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_set_pfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_set_pfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfc = type { i64, i64 }
%struct.bgx = type { %struct.lmac* }
%struct.lmac = type { i64 }

@BGX_SMUX_CBFC_CTL = common dso_local global i32 0, align 4
@RX_EN = common dso_local global i32 0, align 4
@TX_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgx_lmac_set_pfc(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pfc*, align 8
  %10 = alloca %struct.bgx*, align 8
  %11 = alloca %struct.lmac*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.pfc*
  store %struct.pfc* %14, %struct.pfc** %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.bgx* @get_bgx(i32 %15, i32 %16)
  store %struct.bgx* %17, %struct.bgx** %10, align 8
  %18 = load %struct.bgx*, %struct.bgx** %10, align 8
  %19 = icmp ne %struct.bgx* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %71

21:                                               ; preds = %4
  %22 = load %struct.bgx*, %struct.bgx** %10, align 8
  %23 = getelementptr inbounds %struct.bgx, %struct.bgx* %22, i32 0, i32 0
  %24 = load %struct.lmac*, %struct.lmac** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.lmac, %struct.lmac* %24, i64 %26
  store %struct.lmac* %27, %struct.lmac** %11, align 8
  %28 = load %struct.lmac*, %struct.lmac** %11, align 8
  %29 = getelementptr inbounds %struct.lmac, %struct.lmac* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %71

33:                                               ; preds = %21
  %34 = load %struct.bgx*, %struct.bgx** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @BGX_SMUX_CBFC_CTL, align 4
  %37 = call i32 @bgx_reg_read(%struct.bgx* %34, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @RX_EN, align 4
  %39 = load i32, i32* @TX_EN, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load %struct.pfc*, %struct.pfc** %9, align 8
  %45 = getelementptr inbounds %struct.pfc, %struct.pfc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @RX_EN, align 4
  br label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load %struct.pfc*, %struct.pfc** %9, align 8
  %56 = getelementptr inbounds %struct.pfc, %struct.pfc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @TX_EN, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load %struct.bgx*, %struct.bgx** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @BGX_SMUX_CBFC_CTL, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @bgx_reg_write(%struct.bgx* %66, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %32, %20
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
