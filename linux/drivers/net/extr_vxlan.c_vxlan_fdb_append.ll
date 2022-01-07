; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_append.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_fdb = type { i32 }
%union.vxlan_addr = type { i32 }
%struct.vxlan_rdst = type { i32, i32, i32, i32, i32, %union.vxlan_addr, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_fdb*, %union.vxlan_addr*, i32, i32, i32, %struct.vxlan_rdst**)* @vxlan_fdb_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_append(%struct.vxlan_fdb* %0, %union.vxlan_addr* %1, i32 %2, i32 %3, i32 %4, %struct.vxlan_rdst** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vxlan_fdb*, align 8
  %9 = alloca %union.vxlan_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vxlan_rdst**, align 8
  %14 = alloca %struct.vxlan_rdst*, align 8
  store %struct.vxlan_fdb* %0, %struct.vxlan_fdb** %8, align 8
  store %union.vxlan_addr* %1, %union.vxlan_addr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.vxlan_rdst** %5, %struct.vxlan_rdst*** %13, align 8
  %15 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %8, align 8
  %16 = load %union.vxlan_addr*, %union.vxlan_addr** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb* %15, %union.vxlan_addr* %16, i32 %17, i32 %18, i32 %19)
  store %struct.vxlan_rdst* %20, %struct.vxlan_rdst** %14, align 8
  %21 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %22 = icmp ne %struct.vxlan_rdst* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %67

24:                                               ; preds = %6
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.vxlan_rdst* @kmalloc(i32 28, i32 %25)
  store %struct.vxlan_rdst* %26, %struct.vxlan_rdst** %14, align 8
  %27 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %28 = icmp eq %struct.vxlan_rdst* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %67

32:                                               ; preds = %24
  %33 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %34 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %33, i32 0, i32 6
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i64 @dst_cache_init(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %40 = call i32 @kfree(%struct.vxlan_rdst* %39)
  %41 = load i32, i32* @ENOBUFS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %67

43:                                               ; preds = %32
  %44 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %45 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %44, i32 0, i32 5
  %46 = load %union.vxlan_addr*, %union.vxlan_addr** %9, align 8
  %47 = bitcast %union.vxlan_addr* %45 to i8*
  %48 = bitcast %union.vxlan_addr* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %51 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %53 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %56 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %59 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %61 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %60, i32 0, i32 1
  %62 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %8, align 8
  %63 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %62, i32 0, i32 0
  %64 = call i32 @list_add_tail_rcu(i32* %61, i32* %63)
  %65 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %14, align 8
  %66 = load %struct.vxlan_rdst**, %struct.vxlan_rdst*** %13, align 8
  store %struct.vxlan_rdst* %65, %struct.vxlan_rdst** %66, align 8
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %43, %38, %29, %23
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb*, %union.vxlan_addr*, i32, i32, i32) #1

declare dso_local %struct.vxlan_rdst* @kmalloc(i32, i32) #1

declare dso_local i64 @dst_cache_init(i32*, i32) #1

declare dso_local i32 @kfree(%struct.vxlan_rdst*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
