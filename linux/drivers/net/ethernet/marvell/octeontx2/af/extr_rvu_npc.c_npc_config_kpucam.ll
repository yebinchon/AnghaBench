; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_config_kpucam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_config_kpucam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.npc_kpu_profile_cam = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.npc_kpu_cam = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, %struct.npc_kpu_profile_cam*, i32, i32)* @npc_config_kpucam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_config_kpucam(%struct.rvu* %0, i32 %1, %struct.npc_kpu_profile_cam* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rvu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.npc_kpu_profile_cam*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.npc_kpu_cam, align 4
  %12 = alloca %struct.npc_kpu_cam, align 4
  store %struct.rvu* %0, %struct.rvu** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.npc_kpu_profile_cam* %2, %struct.npc_kpu_profile_cam** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = bitcast %struct.npc_kpu_cam* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 20, i1 false)
  %14 = bitcast %struct.npc_kpu_cam* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 20, i1 false)
  %15 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %16 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %19 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = getelementptr inbounds %struct.npc_kpu_cam, %struct.npc_kpu_cam* %12, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %24 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %27 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = getelementptr inbounds %struct.npc_kpu_cam, %struct.npc_kpu_cam* %12, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %32 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %35 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = getelementptr inbounds %struct.npc_kpu_cam, %struct.npc_kpu_cam* %12, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %40 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %43 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = getelementptr inbounds %struct.npc_kpu_cam, %struct.npc_kpu_cam* %12, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %48 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %52 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  %55 = getelementptr inbounds %struct.npc_kpu_cam, %struct.npc_kpu_cam* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %57 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %61 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  %64 = getelementptr inbounds %struct.npc_kpu_cam, %struct.npc_kpu_cam* %11, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %66 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %70 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %68, %71
  %73 = getelementptr inbounds %struct.npc_kpu_cam, %struct.npc_kpu_cam* %11, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %75 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.npc_kpu_profile_cam*, %struct.npc_kpu_profile_cam** %8, align 8
  %79 = getelementptr inbounds %struct.npc_kpu_profile_cam, %struct.npc_kpu_profile_cam* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %77, %80
  %82 = getelementptr inbounds %struct.npc_kpu_cam, %struct.npc_kpu_cam* %11, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load %struct.rvu*, %struct.rvu** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @NPC_AF_KPUX_ENTRYX_CAMX(i32 %85, i32 %86, i32 0)
  %88 = bitcast %struct.npc_kpu_cam* %11 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rvu_write64(%struct.rvu* %83, i32 %84, i32 %87, i32 %89)
  %91 = load %struct.rvu*, %struct.rvu** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @NPC_AF_KPUX_ENTRYX_CAMX(i32 %93, i32 %94, i32 1)
  %96 = bitcast %struct.npc_kpu_cam* %12 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @rvu_write64(%struct.rvu* %91, i32 %92, i32 %95, i32 %97)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #2

declare dso_local i32 @NPC_AF_KPUX_ENTRYX_CAMX(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
