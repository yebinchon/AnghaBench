; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_get_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_get_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CGXX_CMRX_TX_STAT0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgx_get_tx_stats(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cgx*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cgx*
  store %struct.cgx* %12, %struct.cgx** %10, align 8
  %13 = load %struct.cgx*, %struct.cgx** %10, align 8
  %14 = icmp ne %struct.cgx* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.cgx*, %struct.cgx** %10, align 8
  %18 = getelementptr inbounds %struct.cgx, %struct.cgx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load %struct.cgx*, %struct.cgx** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i64, i64* @CGXX_CMRX_TX_STAT0, align 8
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @cgx_read(%struct.cgx* %25, i32 %26, i64 %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @cgx_read(%struct.cgx*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
