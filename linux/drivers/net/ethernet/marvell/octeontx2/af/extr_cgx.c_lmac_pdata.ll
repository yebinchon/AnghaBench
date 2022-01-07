; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_lmac_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_lmac_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32 }
%struct.cgx = type { %struct.lmac** }

@MAX_LMAC_PER_CGX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lmac* (i64, %struct.cgx*)* @lmac_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lmac* @lmac_pdata(i64 %0, %struct.cgx* %1) #0 {
  %3 = alloca %struct.lmac*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cgx*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.cgx* %1, %struct.cgx** %5, align 8
  %6 = load %struct.cgx*, %struct.cgx** %5, align 8
  %7 = icmp ne %struct.cgx* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MAX_LMAC_PER_CGX, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  store %struct.lmac* null, %struct.lmac** %3, align 8
  br label %20

13:                                               ; preds = %8
  %14 = load %struct.cgx*, %struct.cgx** %5, align 8
  %15 = getelementptr inbounds %struct.cgx, %struct.cgx* %14, i32 0, i32 0
  %16 = load %struct.lmac**, %struct.lmac*** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.lmac*, %struct.lmac** %16, i64 %17
  %19 = load %struct.lmac*, %struct.lmac** %18, align 8
  store %struct.lmac* %19, %struct.lmac** %3, align 8
  br label %20

20:                                               ; preds = %13, %12
  %21 = load %struct.lmac*, %struct.lmac** %3, align 8
  ret %struct.lmac* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
