; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ucam_mod_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ucam_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ucam_mod = type { %struct.bna*, i32, %struct.bna_mac*, i32 }
%struct.bna_mac = type { i32 }
%struct.bna = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bna_res_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@BNA_MOD_RES_MEM_T_UCMAC_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ucam_mod*, %struct.bna*, %struct.bna_res_info*)* @bna_ucam_mod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_ucam_mod_init(%struct.bna_ucam_mod* %0, %struct.bna* %1, %struct.bna_res_info* %2) #0 {
  %4 = alloca %struct.bna_ucam_mod*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bna_ucam_mod* %0, %struct.bna_ucam_mod** %4, align 8
  store %struct.bna* %1, %struct.bna** %5, align 8
  store %struct.bna_res_info* %2, %struct.bna_res_info** %6, align 8
  %8 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %9 = load i64, i64* @BNA_MOD_RES_MEM_T_UCMAC_ARRAY, align 8
  %10 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %8, i64 %9
  %11 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bna_mac*
  %19 = load %struct.bna_ucam_mod*, %struct.bna_ucam_mod** %4, align 8
  %20 = getelementptr inbounds %struct.bna_ucam_mod, %struct.bna_ucam_mod* %19, i32 0, i32 2
  store %struct.bna_mac* %18, %struct.bna_mac** %20, align 8
  %21 = load %struct.bna_ucam_mod*, %struct.bna_ucam_mod** %4, align 8
  %22 = getelementptr inbounds %struct.bna_ucam_mod, %struct.bna_ucam_mod* %21, i32 0, i32 3
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %43, %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.bna*, %struct.bna** %5, align 8
  %27 = getelementptr inbounds %struct.bna, %struct.bna* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load %struct.bna_ucam_mod*, %struct.bna_ucam_mod** %4, align 8
  %34 = getelementptr inbounds %struct.bna_ucam_mod, %struct.bna_ucam_mod* %33, i32 0, i32 2
  %35 = load %struct.bna_mac*, %struct.bna_mac** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %35, i64 %37
  %39 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %38, i32 0, i32 0
  %40 = load %struct.bna_ucam_mod*, %struct.bna_ucam_mod** %4, align 8
  %41 = getelementptr inbounds %struct.bna_ucam_mod, %struct.bna_ucam_mod* %40, i32 0, i32 3
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.bna_ucam_mod*, %struct.bna_ucam_mod** %4, align 8
  %48 = getelementptr inbounds %struct.bna_ucam_mod, %struct.bna_ucam_mod* %47, i32 0, i32 1
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  br label %50

50:                                               ; preds = %70, %46
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.bna*, %struct.bna** %5, align 8
  %53 = getelementptr inbounds %struct.bna, %struct.bna* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 2
  %58 = icmp slt i32 %51, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = load %struct.bna_ucam_mod*, %struct.bna_ucam_mod** %4, align 8
  %61 = getelementptr inbounds %struct.bna_ucam_mod, %struct.bna_ucam_mod* %60, i32 0, i32 2
  %62 = load %struct.bna_mac*, %struct.bna_mac** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %62, i64 %64
  %66 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %65, i32 0, i32 0
  %67 = load %struct.bna_ucam_mod*, %struct.bna_ucam_mod** %4, align 8
  %68 = getelementptr inbounds %struct.bna_ucam_mod, %struct.bna_ucam_mod* %67, i32 0, i32 1
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %50

73:                                               ; preds = %50
  %74 = load %struct.bna*, %struct.bna** %5, align 8
  %75 = load %struct.bna_ucam_mod*, %struct.bna_ucam_mod** %4, align 8
  %76 = getelementptr inbounds %struct.bna_ucam_mod, %struct.bna_ucam_mod* %75, i32 0, i32 0
  store %struct.bna* %74, %struct.bna** %76, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
