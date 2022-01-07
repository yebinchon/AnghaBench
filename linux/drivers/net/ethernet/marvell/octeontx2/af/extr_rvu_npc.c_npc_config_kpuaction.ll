; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_config_kpuaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_config_kpuaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.npc_kpu_profile_action = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.npc_kpu_action0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.npc_kpu_action1 = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, %struct.npc_kpu_profile_action*, i32, i32, i32)* @npc_config_kpuaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_config_kpuaction(%struct.rvu* %0, i32 %1, %struct.npc_kpu_profile_action* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rvu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.npc_kpu_profile_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.npc_kpu_action0, align 4
  %14 = alloca %struct.npc_kpu_action1, align 4
  %15 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.npc_kpu_profile_action* %2, %struct.npc_kpu_profile_action** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = bitcast %struct.npc_kpu_action0* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 52, i1 false)
  %17 = bitcast %struct.npc_kpu_action1* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 24, i1 false)
  %18 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %19 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %18, i32 0, i32 16
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.npc_kpu_action1, %struct.npc_kpu_action1* %14, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %23 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.npc_kpu_action1, %struct.npc_kpu_action1* %14, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %27 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.npc_kpu_action1, %struct.npc_kpu_action1* %14, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %31 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %30, i32 0, i32 13
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.npc_kpu_action1, %struct.npc_kpu_action1* %14, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %35 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.npc_kpu_action1, %struct.npc_kpu_action1* %14, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @NPC_AF_PKINDX_ACTION1(i32 %41)
  store i32 %42, i32* %15, align 4
  br label %47

43:                                               ; preds = %6
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @NPC_AF_KPUX_ENTRYX_ACTION1(i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.rvu*, %struct.rvu** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %15, align 4
  %51 = bitcast %struct.npc_kpu_action1* %14 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rvu_write64(%struct.rvu* %48, i32 %49, i32 %50, i32 %52)
  %54 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %55 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 11
  store i32 %56, i32* %57, align 4
  %58 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %59 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 10
  store i32 %60, i32* %61, align 4
  %62 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %63 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 9
  store i32 %64, i32* %65, align 4
  %66 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %67 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %71 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 7
  store i32 %72, i32* %73, align 4
  %74 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %75 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 6
  store i32 %76, i32* %77, align 4
  %78 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %79 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 5
  store i32 %80, i32* %81, align 4
  %82 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %83 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 4
  store i32 %84, i32* %85, align 4
  %86 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %87 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %91 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %95 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  %98 = load %struct.npc_kpu_profile_action*, %struct.npc_kpu_profile_action** %9, align 8
  %99 = getelementptr inbounds %struct.npc_kpu_profile_action, %struct.npc_kpu_profile_action* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.npc_kpu_action0, %struct.npc_kpu_action0* %13, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %47
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @NPC_AF_PKINDX_ACTION0(i32 %105)
  store i32 %106, i32* %15, align 4
  br label %111

107:                                              ; preds = %47
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @NPC_AF_KPUX_ENTRYX_ACTION0(i32 %108, i32 %109)
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %107, %104
  %112 = load %struct.rvu*, %struct.rvu** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %15, align 4
  %115 = bitcast %struct.npc_kpu_action0* %13 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @rvu_write64(%struct.rvu* %112, i32 %113, i32 %114, i32 %116)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NPC_AF_PKINDX_ACTION1(i32) #2

declare dso_local i32 @NPC_AF_KPUX_ENTRYX_ACTION1(i32, i32) #2

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #2

declare dso_local i32 @NPC_AF_PKINDX_ACTION0(i32) #2

declare dso_local i32 @NPC_AF_KPUX_ENTRYX_ACTION0(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
