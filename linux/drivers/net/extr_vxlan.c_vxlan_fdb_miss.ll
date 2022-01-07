; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_miss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32, i32 }
%struct.vxlan_rdst = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@RTM_GETNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_dev*, i32*)* @vxlan_fdb_miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_fdb_miss(%struct.vxlan_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.vxlan_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vxlan_fdb, align 4
  %6 = alloca %struct.vxlan_rdst, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @ETH_ALEN, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %5, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %5, i32 0, i32 1
  %11 = load i32, i32* @NUD_STALE, align 4
  store i32 %11, i32* %10, align 4
  %12 = bitcast %struct.vxlan_rdst* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memcpy(i32 %14, i32* %15, i32 %16)
  %18 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %19 = load i32, i32* @RTM_GETNEIGH, align 4
  %20 = call i32 @vxlan_fdb_notify(%struct.vxlan_dev* %18, %struct.vxlan_fdb* %5, %struct.vxlan_rdst* %6, i32 %19, i32 1, i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @vxlan_fdb_notify(%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
