; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_mcam_mod_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_mcam_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_mcam_mod = type { %struct.bna*, i32, %struct.bna_mac*, i32, %struct.bna_mcam_handle*, i32 }
%struct.bna_mac = type { i32 }
%struct.bna_mcam_handle = type { i32 }
%struct.bna = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bna_res_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@BNA_MOD_RES_MEM_T_MCMAC_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_MCHANDLE_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_mcam_mod*, %struct.bna*, %struct.bna_res_info*)* @bna_mcam_mod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_mcam_mod_init(%struct.bna_mcam_mod* %0, %struct.bna* %1, %struct.bna_res_info* %2) #0 {
  %4 = alloca %struct.bna_mcam_mod*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bna_mcam_mod* %0, %struct.bna_mcam_mod** %4, align 8
  store %struct.bna* %1, %struct.bna** %5, align 8
  store %struct.bna_res_info* %2, %struct.bna_res_info** %6, align 8
  %8 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %9 = load i64, i64* @BNA_MOD_RES_MEM_T_MCMAC_ARRAY, align 8
  %10 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %8, i64 %9
  %11 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bna_mac*
  %19 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %20 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %19, i32 0, i32 2
  store %struct.bna_mac* %18, %struct.bna_mac** %20, align 8
  %21 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %22 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %21, i32 0, i32 5
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
  %33 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %34 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %33, i32 0, i32 2
  %35 = load %struct.bna_mac*, %struct.bna_mac** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %35, i64 %37
  %39 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %38, i32 0, i32 0
  %40 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %41 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %40, i32 0, i32 5
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %48 = load i64, i64* @BNA_MOD_RES_MEM_T_MCHANDLE_ARRAY, align 8
  %49 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %47, i64 %48
  %50 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.bna_mcam_handle*
  %58 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %59 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %58, i32 0, i32 4
  store %struct.bna_mcam_handle* %57, %struct.bna_mcam_handle** %59, align 8
  %60 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %61 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %60, i32 0, i32 3
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %82, %46
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.bna*, %struct.bna** %5, align 8
  %66 = getelementptr inbounds %struct.bna, %struct.bna* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %64, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %63
  %72 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %73 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %72, i32 0, i32 4
  %74 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %74, i64 %76
  %78 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %77, i32 0, i32 0
  %79 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %80 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %79, i32 0, i32 3
  %81 = call i32 @list_add_tail(i32* %78, i32* %80)
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %63

85:                                               ; preds = %63
  %86 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %87 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %86, i32 0, i32 1
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  br label %89

89:                                               ; preds = %109, %85
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.bna*, %struct.bna** %5, align 8
  %92 = getelementptr inbounds %struct.bna, %struct.bna* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 2
  %97 = icmp slt i32 %90, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %89
  %99 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %100 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %99, i32 0, i32 2
  %101 = load %struct.bna_mac*, %struct.bna_mac** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %101, i64 %103
  %105 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %104, i32 0, i32 0
  %106 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %107 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %106, i32 0, i32 1
  %108 = call i32 @list_add_tail(i32* %105, i32* %107)
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %89

112:                                              ; preds = %89
  %113 = load %struct.bna*, %struct.bna** %5, align 8
  %114 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %115 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %114, i32 0, i32 0
  store %struct.bna* %113, %struct.bna** %115, align 8
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
