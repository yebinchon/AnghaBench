; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_fwi_cmd_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_fwi_cmd_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx = type { i32 }
%struct.lmac = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EVTREG_STAT = common dso_local global i32 0, align 4
@CGX_STAT_FAIL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.cgx*, i32)* @cgx_fwi_cmd_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgx_fwi_cmd_generic(i32 %0, i32* %1, %struct.cgx* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cgx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lmac*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.cgx* %2, %struct.cgx** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.cgx*, %struct.cgx** %8, align 8
  %14 = call %struct.lmac* @lmac_pdata(i32 %12, %struct.cgx* %13)
  store %struct.lmac* %14, %struct.lmac** %10, align 8
  %15 = load %struct.lmac*, %struct.lmac** %10, align 8
  %16 = icmp ne %struct.lmac* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %40

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.lmac*, %struct.lmac** %10, align 8
  %24 = call i32 @cgx_fwi_cmd_send(i32 %21, i32* %22, %struct.lmac* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @EVTREG_STAT, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @FIELD_GET(i32 %28, i32 %30)
  %32 = load i64, i64* @CGX_STAT_FAIL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %40

37:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %37, %34, %17
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.lmac* @lmac_pdata(i32, %struct.cgx*) #1

declare dso_local i32 @cgx_fwi_cmd_send(i32, i32*, %struct.lmac*) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
