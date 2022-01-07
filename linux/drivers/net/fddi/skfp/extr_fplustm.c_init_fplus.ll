; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_init_fplus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_init_fplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@FM_MRNNSAFNMA = common dso_local global i32 0, align 4
@FM_MDAMA = common dso_local global i32 0, align 4
@fddi_broadcast = common dso_local global i32 0, align 4
@SMT_DAS = common dso_local global i64 0, align 8
@FM_MENDAS = common dso_local global i32 0, align 4
@B0_ST1U = common dso_local global i32 0, align 4
@B0_ST1L = common dso_local global i32 0, align 4
@B0_ST2U = common dso_local global i32 0, align 4
@B0_ST2L = common dso_local global i32 0, align 4
@B0_ST3U = common dso_local global i32 0, align 4
@B0_ST3L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_fplus(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @FM_MRNNSAFNMA, align 4
  %4 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %5 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  store i32 %3, i32* %7, align 8
  %8 = load i32, i32* @FM_MDAMA, align 4
  %9 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %10 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 12
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @fddi_broadcast, align 4
  %14 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %15 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 11
  store i32 %13, i32* %17, align 8
  %18 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 10
  store i64 0, i64* %21, align 8
  %22 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %23 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 9
  store i64 0, i64* %25, align 8
  %26 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %27 = call i32 @init_driver_fplus(%struct.s_smc* %26)
  %28 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %29 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SMT_DAS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load i32, i32* @FM_MENDAS, align 4
  %36 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %37 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %34, %1
  %43 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %44 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %48 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @B0_ST1U, align 4
  %52 = call i64 @ADDR(i32 %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %55 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 7
  store i8* %53, i8** %57, align 8
  %58 = load i32, i32* @B0_ST1L, align 4
  %59 = call i64 @ADDR(i32 %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %62 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 6
  store i8* %60, i8** %64, align 8
  %65 = load i32, i32* @B0_ST2U, align 4
  %66 = call i64 @ADDR(i32 %65)
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %69 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  store i8* %67, i8** %71, align 8
  %72 = load i32, i32* @B0_ST2L, align 4
  %73 = call i64 @ADDR(i32 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %76 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  store i8* %74, i8** %78, align 8
  %79 = load i32, i32* @B0_ST3U, align 4
  %80 = call i64 @ADDR(i32 %79)
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %83 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i8* %81, i8** %85, align 8
  %86 = load i32, i32* @B0_ST3L, align 4
  %87 = call i64 @ADDR(i32 %86)
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %90 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  store i8* %88, i8** %92, align 8
  %93 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %94 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %98 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %102 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %105 = call i32 @mac_counter_init(%struct.s_smc* %104)
  %106 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %107 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i8* null, i8** %109, align 8
  %110 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %111 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i8* null, i8** %113, align 8
  %114 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %115 = call i32 @mac_do_pci_fix(%struct.s_smc* %114)
  %116 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %117 = call i32 @init_mac(%struct.s_smc* %116, i32 1)
  ret i32 %117
}

declare dso_local i32 @init_driver_fplus(%struct.s_smc*) #1

declare dso_local i64 @ADDR(i32) #1

declare dso_local i32 @mac_counter_init(%struct.s_smc*) #1

declare dso_local i32 @mac_do_pci_fix(%struct.s_smc*) #1

declare dso_local i32 @init_mac(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
