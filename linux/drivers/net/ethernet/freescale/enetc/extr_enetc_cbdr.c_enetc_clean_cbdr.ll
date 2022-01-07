; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_clean_cbdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_clean_cbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { %struct.TYPE_2__*, %struct.enetc_cbdr }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_cbdr = type { i32, i32, i32 }
%struct.enetc_cbd = type { i32, i32 }

@ENETC_CBD_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CMD err %04x for cmd %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_si*)* @enetc_clean_cbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_clean_cbdr(%struct.enetc_si* %0) #0 {
  %2 = alloca %struct.enetc_si*, align 8
  %3 = alloca %struct.enetc_cbdr*, align 8
  %4 = alloca %struct.enetc_cbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca { i64, i32 }, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %2, align 8
  %8 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %9 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %8, i32 0, i32 1
  store %struct.enetc_cbdr* %9, %struct.enetc_cbdr** %3, align 8
  %10 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %3, align 8
  %11 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %47, %1
  %14 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %3, align 8
  %15 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @enetc_rd_reg(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %13
  %21 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = bitcast { i64, i32 }* %7 to i8*
  %24 = bitcast %struct.enetc_cbdr* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 4
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.enetc_cbd* @ENETC_CBD(i64 %26, i32 %28, i32 %22)
  store %struct.enetc_cbd* %29, %struct.enetc_cbd** %4, align 8
  %30 = load %struct.enetc_cbd*, %struct.enetc_cbd** %4, align 8
  %31 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ENETC_CBD_STATUS_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %20
  %38 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %39 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.enetc_cbd*, %struct.enetc_cbd** %4, align 8
  %44 = getelementptr inbounds %struct.enetc_cbd, %struct.enetc_cbd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_warn(i32* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %37, %20
  %48 = load %struct.enetc_cbd*, %struct.enetc_cbd** %4, align 8
  %49 = call i32 @memset(%struct.enetc_cbd* %48, i32 0, i32 8)
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  %52 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %3, align 8
  %53 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %51, %54
  store i32 %55, i32* %5, align 4
  br label %13

56:                                               ; preds = %13
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %3, align 8
  %59 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  ret void
}

declare dso_local i32 @enetc_rd_reg(i32) #1

declare dso_local %struct.enetc_cbd* @ENETC_CBD(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.enetc_cbd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
