; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_directed_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_directed_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@__le32 = common dso_local global i32 0, align 4
@a = common dso_local global i64* null, align 8
@DBEACON_INFO = common dso_local global i64 0, align 8
@MAC0 = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@DBEACON_FRAME_OFF = common dso_local global i64 0, align 8
@FM_CMDREG2 = common dso_local global i32 0, align 4
@FM_ISTTB = common dso_local global i64 0, align 8
@FM_SABC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @directed_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @directed_beacon(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @__le32, align 4
  %4 = load i64*, i64** @a, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 2
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @SK_LOC_DECL(i32 %3, i64 %6)
  %8 = load i64, i64* @DBEACON_INFO, align 8
  %9 = shl i64 %8, 24
  %10 = trunc i64 %9 to i8
  %11 = load i64*, i64** @a, align 8
  %12 = bitcast i64* %11 to i8*
  store i8 %10, i8* %12, align 1
  %13 = load i64*, i64** @a, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  store i64 0, i64* %14, align 8
  %15 = load i64*, i64** @a, align 8
  %16 = bitcast i64* %15 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i64, i64* @MAC0, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i8* %17, i8* %25, i32 %26)
  %28 = call i32 (...) @CHECK_NPP()
  %29 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %30 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DBEACON_FRAME_OFF, align 8
  %36 = add nsw i64 %34, %35
  %37 = add nsw i64 %36, 4
  %38 = call i32 @MARW(i64 %37)
  %39 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %40 = load i64*, i64** @a, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @le32_to_cpu(i64 %42)
  %44 = call i32 @write_mdr(%struct.s_smc* %39, i32 %43)
  %45 = load i32, i32* @FM_CMDREG2, align 4
  %46 = call i32 @FM_A(i32 %45)
  %47 = load i64, i64* @FM_ISTTB, align 8
  %48 = call i32 @outpw(i32 %46, i64 %47)
  %49 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %50 = load i64*, i64** @a, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @le32_to_cpu(i64 %52)
  %54 = call i32 @write_mdr(%struct.s_smc* %49, i32 %53)
  %55 = load i32, i32* @FM_SABC, align 4
  %56 = call i32 @FM_A(i32 %55)
  %57 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %58 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DBEACON_FRAME_OFF, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outpw(i32 %56, i64 %64)
  ret void
}

declare dso_local i32 @SK_LOC_DECL(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @CHECK_NPP(...) #1

declare dso_local i32 @MARW(i64) #1

declare dso_local i32 @write_mdr(%struct.s_smc*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @outpw(i32, i64) #1

declare dso_local i32 @FM_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
