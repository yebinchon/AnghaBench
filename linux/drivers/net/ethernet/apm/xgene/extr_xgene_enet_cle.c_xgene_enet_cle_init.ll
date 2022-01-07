; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_enet_cle_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_enet_cle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i64, %struct.TYPE_8__**, i32, %struct.xgene_enet_cle }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.xgene_enet_cle = type { %struct.xgene_cle_ptree }
%struct.xgene_cle_ptree = type { i32, i32, i32, %struct.xgene_cle_ptree_kn*, %struct.xgene_cle_ptree_kn* }
%struct.xgene_cle_ptree_kn = type { i32, i32, i32, %struct.TYPE_7__*, i32, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.xgene_cle_dbptr = type { i32, i32, i32, %struct.TYPE_7__*, i32, i8*, i8*, i8* }

@DB_MAX_PTRS = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RSS initialization failed\0A\00", align 1
@DB_RES_ACCEPT = common dso_local global i64 0, align 8
@DB_RES_DEF = common dso_local global i64 0, align 8
@DB_RES_DROP = common dso_local global i64 0, align 8
@KN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*)* @xgene_enet_cle_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_cle_init(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.xgene_enet_cle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xgene_cle_ptree*, align 8
  %12 = alloca %struct.xgene_cle_ptree_kn, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  %15 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %15, i32 0, i32 3
  store %struct.xgene_enet_cle* %16, %struct.xgene_enet_cle** %4, align 8
  %17 = load i32, i32* @DB_MAX_PTRS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.xgene_cle_dbptr, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %155

29:                                               ; preds = %1
  %30 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %4, align 8
  %31 = getelementptr inbounds %struct.xgene_enet_cle, %struct.xgene_enet_cle* %30, i32 0, i32 0
  store %struct.xgene_cle_ptree* %31, %struct.xgene_cle_ptree** %11, align 8
  %32 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %11, align 8
  %33 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %32, i32 0, i32 0
  store i32 12, i32* %33, align 8
  %34 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %35 = call i32 @xgene_cle_setup_rss(%struct.xgene_enet_pdata* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %40 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @netdev_err(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %155

44:                                               ; preds = %29
  %45 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %46 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i8* @xgene_enet_dst_ring_num(%struct.TYPE_8__* %49)
  store i8* %50, i8** %5, align 8
  %51 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %52 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %53, i64 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @xgene_enet_get_fpsel(i8* %60)
  store i8* %61, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %62 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %63 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %64, i64 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = icmp ne %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %44
  %71 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %72 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %73, i64 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i8* @xgene_enet_get_fpsel(i8* %80)
  store i8* %81, i8** %7, align 8
  br label %82

82:                                               ; preds = %70, %44
  %83 = bitcast %struct.xgene_cle_dbptr* %20 to %struct.xgene_cle_ptree_kn*
  %84 = load i32, i32* @DB_MAX_PTRS, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 56, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memset(%struct.xgene_cle_ptree_kn* %83, i32 0, i32 %87)
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* @DB_RES_ACCEPT, align 8
  %91 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %90
  %92 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %91, i32 0, i32 7
  store i8* %89, i8** %92, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* @DB_RES_ACCEPT, align 8
  %95 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %94
  %96 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %95, i32 0, i32 6
  store i8* %93, i8** %96, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load i64, i64* @DB_RES_ACCEPT, align 8
  %99 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %98
  %100 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %99, i32 0, i32 5
  store i8* %97, i8** %100, align 8
  %101 = load i64, i64* @DB_RES_ACCEPT, align 8
  %102 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %101
  %103 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i64, i64* @DB_RES_DEF, align 8
  %106 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %105
  %107 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %106, i32 0, i32 7
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i64, i64* @DB_RES_DEF, align 8
  %110 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %109
  %111 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %110, i32 0, i32 6
  store i8* %108, i8** %111, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* @DB_RES_DEF, align 8
  %114 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %113
  %115 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %114, i32 0, i32 5
  store i8* %112, i8** %115, align 8
  %116 = load i64, i64* @DB_RES_DEF, align 8
  %117 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %116
  %118 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %117, i32 0, i32 0
  store i32 7, i32* %118, align 8
  %119 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %120 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %4, align 8
  %121 = load i64, i64* @DB_RES_DEF, align 8
  %122 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %121
  %123 = bitcast %struct.xgene_cle_dbptr* %122 to %struct.xgene_cle_ptree_kn*
  %124 = load i64, i64* @DB_RES_ACCEPT, align 8
  %125 = call i32 @xgene_cle_setup_def_dbptr(%struct.xgene_enet_pdata* %119, %struct.xgene_enet_cle* %120, %struct.xgene_cle_ptree_kn* %123, i64 %124, i32 7)
  %126 = load i64, i64* @DB_RES_DROP, align 8
  %127 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i64 %126
  %128 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = call i32 @memset(%struct.xgene_cle_ptree_kn* %12, i32 0, i32 56)
  %130 = load i32, i32* @KN, align 4
  %131 = getelementptr inbounds %struct.xgene_cle_ptree_kn, %struct.xgene_cle_ptree_kn* %12, i32 0, i32 4
  store i32 %130, i32* %131, align 8
  %132 = getelementptr inbounds %struct.xgene_cle_ptree_kn, %struct.xgene_cle_ptree_kn* %12, i32 0, i32 2
  store i32 1, i32* %132, align 8
  %133 = getelementptr inbounds %struct.xgene_cle_ptree_kn, %struct.xgene_cle_ptree_kn* %12, i32 0, i32 3
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load i64, i64* @DB_RES_ACCEPT, align 8
  %138 = getelementptr inbounds %struct.xgene_cle_ptree_kn, %struct.xgene_cle_ptree_kn* %12, i32 0, i32 3
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i64 %137, i64* %141, align 8
  %142 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %11, align 8
  %143 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %142, i32 0, i32 4
  store %struct.xgene_cle_ptree_kn* %12, %struct.xgene_cle_ptree_kn** %143, align 8
  %144 = bitcast %struct.xgene_cle_dbptr* %20 to %struct.xgene_cle_ptree_kn*
  %145 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %11, align 8
  %146 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %145, i32 0, i32 3
  store %struct.xgene_cle_ptree_kn* %144, %struct.xgene_cle_ptree_kn** %146, align 8
  %147 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %11, align 8
  %148 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  %149 = load i32, i32* @DB_MAX_PTRS, align 4
  %150 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %11, align 8
  %151 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %153 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %4, align 8
  %154 = call i32 @xgene_cle_setup_ptree(%struct.xgene_enet_pdata* %152, %struct.xgene_enet_cle* %153)
  store i32 %154, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %155

155:                                              ; preds = %82, %38, %26
  %156 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xgene_cle_setup_rss(%struct.xgene_enet_pdata*) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

declare dso_local i8* @xgene_enet_dst_ring_num(%struct.TYPE_8__*) #2

declare dso_local i8* @xgene_enet_get_fpsel(i8*) #2

declare dso_local i32 @memset(%struct.xgene_cle_ptree_kn*, i32, i32) #2

declare dso_local i32 @xgene_cle_setup_def_dbptr(%struct.xgene_enet_pdata*, %struct.xgene_enet_cle*, %struct.xgene_cle_ptree_kn*, i64, i32) #2

declare dso_local i32 @xgene_cle_setup_ptree(%struct.xgene_enet_pdata*, %struct.xgene_enet_cle*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
